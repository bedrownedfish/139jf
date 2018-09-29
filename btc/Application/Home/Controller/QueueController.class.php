<?php

namespace Home\Controller;

class QueueController extends HomeController
{
	public function _initialize()
	{
		ini_set("max_execution_time", "180000");
		parent::_initialize();
	}

	public function index()
	{
		/*if (APP_DEMO)*/ {
			echo addtime(time()) . "\n";

			foreach (C("market") as $k => $v) {
				echo "----模拟交易----" . $v["name"] . "------------";
				echo $this->upTrade($v["name"]);
				echo "\n";
			}

			echo "模拟交易0k " . "\n";
		}
	}

	public function move()
	{
		M("Trade")->where(array("status" => "-1"))->setField("status", 1);

		foreach (C("market") as $k => $v) {
			if (date("H", time()) == "00") {
			}
		}

		foreach (C("coin_list") as $k => $v) {
			if (date("H", time()) == "00") {
			}
		}
	}

	public function setMarket($name = NULL)
	{
		if (!$name) {
			$name = C("market_mr");
		}

		$xnb = explode("_", $name)[0];
		$rmb = explode("_", $name)[1];
		$this->assign("xnb", $xnb);
		$this->assign("rmb", $rmb);
		$this->assign("name", $name);
		$data = array();
		$data["trance_num"] = M("TradeLog")->where(array("name" => $name))->sum("num");
		$data["trance_buyfee"] = M("TradeLog")->where(array("name" => $name))->sum("fee_buy");
		$data["trance_sellfee"] = M("TradeLog")->where(array("name" => $name))->sum("fee_sell");
		$data["trance_fee"] = $data["trance_buyfee"] + $data["trance_sellfee"];
		$data["trance_mum"] = M("TradeLog")->where(array("name" => $name))->sum("mum");
		$data["trance_ci"] = M("TradeLog")->where(array("name" => $name))->count();
		$market_json = M("Market_json")->where(array("name" => $name))->order("id desc")->find();

		if ($market_json) {
			$addtime = $market_json["addtime"] + 60;
		}
		else {
			$addtime = M("TradeLog")->where(array("name" => $name))->order("id asc")->find()["addtime"];
		}

		$t = $addtime;
		$start = mktime(0, 0, 0, date("m", $t), date("d", $t), date("Y", $t));
		$end = mktime(23, 59, 59, date("m", $t), date("d", $t), date("Y", $t));

		if (($end + 60) < time()) {
			$trade_num = M("TradeLog")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("num");
			$trade_mum = M("TradeLog")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("mum");
			$trade_fee_buy = M("TradeLog")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("fee_buy");
			$trade_fee_sell = M("TradeLog")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("fee_sell");
			$d = array($trade_num, $trade_mum, $trade_fee_buy, $trade_fee_sell);

			if (M("Market_json")->where(array("name" => $name, "addtime" => $end))->find()) {
				M("Market_json")->where(array("name" => $name, "addtime" => $end))->save(array("data" => json_encode($d)));
			}
			else {
				M("Market_json")->add(array("name" => $name, "data" => json_encode($d), "addtime" => $end));
			}
		}

		$tradeJson = M("Market_json")->where(array("name" => $name))->order("id asc")->limit(100)->select();

		foreach ($tradeJson as $k => $v) {
			$date = addtime($v["addtime"], "Y-m-d H:i:s");
			$json_data = json_decode($v["data"], true);
			$cztx[] = array("date" => $date, "num" => $json_data[0], "mum" => $json_data[1], "fee_buy" => $json_data[2], "fee_sell" => $json_data[3]);
		}
	}

	public function setcoin($name = NULL)
	{
		if (!$name) {
			$name = C("xnb_mr");
		}

		$data = array();
		$data["trance_b"] = M("UserCoin")->sum($name);
		$data["trance_s"] = M("UserCoin")->sum($name . "d");
		$data["trance_num"] = $data["trance_b"] + $data["trance_s"];
		$data["trance_song"] = M("Myzr")->where(array("coinname" => $name))->sum("fee");
		$data["trance_fee"] = M("Myzc")->where(array("coinname" => $name))->sum("fee");

		if (C("coin")[$name]["type"] == "qbb") {
			$dj_username = C("coin")[$name]["dj_yh"];
			$dj_password = C("coin")[$name]["dj_mm"];
			$dj_address = C("coin")[$name]["dj_zj"];
			$dj_port = C("coin")[$name]["dj_dk"];
			$CoinClient = CoinClient($dj_username, $dj_password, $dj_address, $dj_port, 5, array(), 1);
			$json = $CoinClient->getinfo();

			if (!isset($json["version"]) || !$json["version"]) {
				$this->error("钱包链接失败！");
			}

			$data["trance_mum"] = $json["balance"];
		}
		else {
			$data["trance_mum"] = 0;
		}

		$market_json = M("Coin_json")->where(array("name" => $name))->order("id desc")->find();

		if ($market_json) {
			$addtime = $market_json["addtime"] + 60;
		}
		else {
			$addtime = M("Myzr")->where(array("name" => $name))->order("id asc")->find()["addtime"];
		}

		$t = $addtime;
		$start = mktime(0, 0, 0, date("m", $t), date("d", $t), date("Y", $t));
		$end = mktime(23, 59, 59, date("m", $t), date("d", $t), date("Y", $t));

		if (($end + 60) < time()) {
			$trade_num = M("UserCoin")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum($name);
			$trade_mum = M("UserCoin")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum($name . "d");
			$aa = $trade_num + $trade_mum;

			if (C($name)["type"] == "qbb") {
				$bb = $json["balance"];
			}
			else {
				$bb = 0;
			}

			$trade_fee_buy = M("Myzr")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("fee");
			$trade_fee_sell = M("Myzc")->where(array(
	"addtime" => array(
		array("egt", $start),
		array("elt", $end)
		)
	))->sum("fee");
			$d = array($aa, $bb, $trade_fee_buy, $trade_fee_sell);

			if (M("Coin_json")->where(array("name" => $name, "addtime" => $end))->find()) {
				M("Coin_json")->where(array("name" => $name, "addtime" => $end))->save(array("data" => json_encode($d)));
			}
			else {
				M("Coin_json")->add(array("name" => $name, "data" => json_encode($d), "addtime" => $end));
			}
		}

		$tradeJson = M("Coin_json")->where(array("name" => $name))->order("id asc")->limit(100)->select();

		foreach ($tradeJson as $k => $v) {
			$date = addtime($v["addtime"], "Y-m-d H:i:s");
			$json_data = json_decode($v["data"], true);
			$cztx[] = array("date" => $date, "num" => $json_data[0], "mum" => $json_data[1], "fee_buy" => $json_data[2], "fee_sell" => $json_data[3]);
		}
	}

	public function paicuo()
	{
		foreach (C("market") as $k => $v) {
			A("Trade")->matchingTrade($v["name"]);
		}
	}

	public function yichang()
	{
		$list = M("Trade")->where("num < deal ")->select();

		foreach ($list as $k => $v) {
			if ($v["status"] == 0) {
				M("Trade")->where(array("id" => $v["id"]))->setField("status", 1);
			}

			M("Trade")->where(array("id" => $v["id"]))->setField("deal", $v["num"]);
		}
	}

	public function houprice()
	{
		foreach (C("market") as $k => $v) {
			if (!$v["hou_price"] || date("H", time()) == "00") {
				$t = time();
				$start = mktime(0, 0, 0, date("m", $t), date("d", $t), date("Y", $t));
				$hou_price = M("TradeLog")->where(array(
	"market"  => $v["name"],
	"addtime" => array("lt", $start)
	))->order("id desc")->getField("price");

				if (!$hou_price) {
					$hou_price = M("TradeLog")->where(array("market" => $v["name"]))->order("id asc")->getField("price");
				}

				M("Market")->where(array("name" => $v["name"]))->setField("hou_price", $hou_price);
				S("home_market", null);
			}
		}
	}

	public function qianbao()
	{
		$coinList = M("Coin")->where(array("status" => 1))->select();

		foreach ($coinList as $k => $v) {
			if ($v["type"] != "qbb") {
				continue;
			}

			$coin = $v["name"];

			if (!$coin) {
				echo "MM";
				continue;
			}

			$dj_username = C("coin")[$coin]["dj_yh"];
			$dj_password = C("coin")[$coin]["dj_mm"];
			$dj_address = C("coin")[$coin]["dj_zj"];
			$dj_port = C("coin")[$coin]["dj_dk"];
			echo "start " . $coin . "\n";
			$CoinClient = CoinClient($dj_username, $dj_password, $dj_address, $dj_port, 5, array(), 1);
			$json = $CoinClient->getinfo();

			if (!isset($json["version"]) || !$json["version"]) {
				echo "###ERR#####***** " . $coin . " connect fail***** ####ERR####>\n";
				continue;
			}

			echo "Cmplx " . $coin . " start,connect " . (empty($CoinClient) ? "fail" : "ok") . " :\n";
			$listtransactions = $CoinClient->listtransactions("*", 100, 0);
			echo "listtransactions:" . count($listtransactions) . "\n";
			krsort($listtransactions);

			foreach ($listtransactions as $trans) {
				if (!$trans["account"]) {
					echo "empty account continue\n";
					continue;
				}

				if (!($user = M("User")->where(array("username" => $trans["account"]))->find())) {
					echo "no account find continue\n";
					continue;
				}

				if (M("Myzr")->where(array("txid" => $trans["txid"], "status" => "1"))->find()) {
					echo "txid had found continue\n";
					continue;
				}

				echo "all check ok \n";

				if ($trans["category"] == "receive") {
					print_r($trans);
					echo "start receive do:\n";
					$sfee = 0;
					$true_amount = $trans["amount"];

					if (C("coin")[$coin]["zr_zs"]) {
						$song = round(($trans["amount"] / 100) * C("coin")[$coin]["zr_zs"], 8);

						if ($song) {
							$sfee = $song;
							$trans["amount"] = $trans["amount"] + $song;
						}
					}

					if ($trans["confirmations"] < C("coin")[$coin]["zr_dz"]) {
						echo $trans["account"] . " confirmations " . $trans["confirmations"] . " not elengh " . C("coin")[$coin]["zr_dz"] . " continue \n";
						echo "confirmations <  c_zr_dz continue\n";

						if ($res = M("myzr")->where(array("txid" => $trans["txid"]))->find()) {
							M("myzr")->save(array("id" => $res["id"], "addtime" => time(), "status" => intval($trans["confirmations"] - C("coin")[$coin]["zr_dz"])));
						}
						else {
							M("myzr")->add(array("userid" => $user["id"], "username" => $trans["address"], "coinname" => $coin, "fee" => $sfee, "txid" => $trans["txid"], "num" => $true_amount, "mum" => $trans["amount"], "addtime" => time(), "status" => intval($trans["confirmations"] - C("coin")[$coin]["zr_dz"])));
						}

						continue;
					}
					else {
						echo "confirmations full\n";
					}

					$mo = M();
					$mo->execute("set autocommit=0");
					$mo->execute("lock tables  movesay_user_coin write , movesay_myzr  write ");
					$rs = array();
					$rs[] = $mo->table("movesay_user_coin")->where(array("userid" => $user["id"]))->setInc($coin, $trans["amount"]);

					if ($res = $mo->table("movesay_myzr")->where(array("txid" => $trans["txid"]))->find()) {
						echo "movesay_myzr find and set status 1";
						$rs[] = $mo->table("movesay_myzr")->save(array("id" => $res["id"], "addtime" => time(), "status" => 1));
					}
					else {
						echo "movesay_myzr not find and add a new movesay_myzr\n";
						$rs[] = $mo->table("movesay_myzr")->add(array("userid" => $user["id"], "username" => $trans["address"], "coinname" => $coin, "fee" => $sfee, "txid" => $trans["txid"], "num" => $true_amount, "mum" => $trans["amount"], "addtime" => time(), "status" => 1));
					}

					if (check_arr($rs)) {
						$mo->execute("commit");
						echo $trans["amount"] . " receive ok " . $coin . " " . $trans["amount"];
						$mo->execute("unlock tables");
						echo "commit ok\n";
					}
					else {
						echo $trans["amount"] . "receive fail " . $coin . " " . $trans["amount"];
						echo var_export($rs, true);
						$mo->execute("rollback");
						$mo->execute("unlock tables");
						print_r($rs);
						echo "rollback ok\n";
					}
				}
			}

			if ($trans["category"] == "send") {
				echo "start send do:\n";

				if (3 <= $trans["confirmations"]) {
					$myzc = M("Myzc")->where(array("txid" => $trans["txid"]))->find();

					if ($myzc) {
						if ($myzc["status"] == 0) {
							M("Myzc")->where(array("txid" => $trans["txid"]))->save(array("status" => 1));
							echo $trans["amount"] . "成功转出" . $coin . " 币确定";
						}
					}
				}
			}
		}
	}

	public function syn_qianbao()
	{
	}

	public function tendency()
	{
		foreach (C("market") as $k => $v) {
			echo "----计算趋势----" . $v["name"] . "------------";
			$tendency_time = 4;
			$t = time();
			$tendency_str = $t - (24 * 60 * 60 * 3);

			for ($x = 0; $x <= 18; $x++) {
				$na = $tendency_str + (60 * 60 * $tendency_time * $x);
				$nb = $tendency_str + (60 * 60 * $tendency_time * ($x + 1));
				$b = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $v["name"] . "'")->max("price");

				if (!$b) {
					$b = 0;
				}

				$rs[] = array($na, $b);
			}

			M("Market")->where(array("name" => $v["name"]))->setField("tendency", json_encode($rs));
			unset($rs);
			echo "计算成功!";
			echo "\n";
		}

		echo "趋势计算0k " . "\n";
	}

	public function chart()
	{
		foreach (C("market") as $k => $v) {
			$this->setTradeJson($v["name"]);
		}

		echo "计算行情0k " . "\n";
	}

	public function setTradeJson($market)
	{
		$timearr = array(1, 3, 5, 10, 15, 30, 60, 120, 240, 360, 720, 1440, 10080);

		foreach ($timearr as $k => $v) {
			$tradeJson = M("TradeJson")->where(array("market" => $market, "type" => $v))->order("id desc")->find();

			if ($tradeJson) {
				$addtime = $tradeJson["addtime"];
			}
			else {
				$addtime = M("TradeLog")->where(array("market" => $market))->order("id asc")->getField("addtime");
			}

			if ($addtime) {
				$youtradelog = M("TradeLog")->where("addtime >=" . $addtime . "  and market ='" . $market . "'")->sum("num");
			}

			if ($youtradelog) {
				if ($v == 1) {
					$start_time = $addtime;
				}
				else {
					$start_time = mktime(date("H", $addtime), floor(date("i", $addtime) / $v) * $v, 0, date("m", $addtime), date("d", $addtime), date("Y", $addtime));
				}

				for ($x = 0; $x <= 20; $x++) {
					$na = $start_time + (60 * $v * $x);
					$nb = $start_time + (60 * $v * ($x + 1));

					if (time() < $na) {
						break;
					}

					$sum = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $market . "'")->sum("num");

					if ($sum) {
						$sta = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $market . "'")->order("id asc")->getField("price");
						$max = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $market . "'")->max("price");
						$min = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $market . "'")->min("price");
						$end = M("TradeLog")->where("addtime >=" . $na . " and addtime <" . $nb . " and market ='" . $market . "'")->order("id desc")->getField("price");
						$d = array($na, $sum, $sta, $max, $min, $end);

						if (M("TradeJson")->where(array("market" => $market, "addtime" => $na, "type" => $v))->find()) {
							M("TradeJson")->where(array("market" => $market, "addtime" => $na, "type" => $v))->save(array("data" => json_encode($d)));
						}
						else {
							$aa = M("TradeJson")->add(array("market" => $market, "data" => json_encode($d), "addtime" => $na, "type" => $v));
							M("TradeJson")->execute("commit");
							M("TradeJson")->where(array("market" => $market, "data" => "", "type" => $v))->delete();
							M("TradeJson")->execute("commit");
						}
					}
					else {
						M("TradeJson")->add(array("market" => $market, "data" => "", "addtime" => $na, "type" => $v));
						M("TradeJson")->execute("commit");
					}
				}
			}
		}

		return "计算成功!";
	}

	public function upTrade($market = NULL)
	{
		$userid = 1;
		$type = rand(1, 2);

		if (!$market) {
			$market = C("market_mr");
		}

		$min_price = round(C("market")[$market]["buy_min"] * 100000000);
		$max_price = round(C("market")[$market]["buy_max"] * 100000000);
		$price = round(rand($min_price, $max_price) / 100000000, C("market")[$market]["round"]);
		$num = round(rand(10, 1000000000) / 1000000, C("market")[$market]["round"]);

		if (!$price) {
			return "交易价格格式错误";
		}

		if (!check($num, "double")) {
			return "交易数量格式错误";
		}

		if ($type != 1 && $type != 2) {
			return "交易类型格式错误";
		}

		if (!C("market")[$market]) {
			return "交易市场错误";
		}
		else {
			$xnb = explode("_", $market)[0];
			$rmb = explode("_", $market)[1];
		}

		if (!C("market")[$market]["trade"]) {
			return "当前市场禁止交易";
		}

		$price = round(floatval($price), C("market")[$market]["round"]);

		if (!$price) {
			return "交易价格错误";
		}

		$num = round(trim($num), 8 - C("market")[$market]["round"]);

		if (!check($num, "double")) {
			return "交易数量错误";
		}

		if ($type == 1) {
			$min_price = (C("market")[$market] ? C("market")[$market] : 0.1);
			$max_price = (C("market")[$market]["buy_max"] ? C("market")[$market]["buy_max"] : 10000000);
		}
		else if ($type == 2) {
			$min_price = (C("market")[$market] ? C("market")[$market] : 0.1);
			$max_price = (C("market")[$market]["sell_max"] ? C("market")[$market]["sell_max"] : 10000000);
		}
		else {
			return "交易类型错误";
		}

		if ($max_price < $price) {
			return "交易价格超过最大限制！";
		}

		if ($price < $min_price) {
			return "交易价格超过最小限制！";
		}

		$hou_price = C("market")[$market]["hou_price"];

		if ($hou_price) {
		}

		$user_coin = M("UserCoin")->where(array("userid" => $userid))->find();

		if ($type == 1) {
			$trade_fee = C("market")[$market]["fee_buy"];

			if ($trade_fee) {
				$fee = round((($num * $price) / 100) * $trade_fee, 8);
				$mum = round((($num * $price) / 100) * (100 + $trade_fee), 8);
			}
			else {
				$fee = 0;
				$mum = round($num * $price, 8);
			}

			if ($user_coin[$rmb] < $mum) {
				return C("coin")[$rmb]["title"] . "余额不足！";
			}
		}
		else if ($type == 2) {
			$trade_fee = C("market")[$market]["fee_sell"];

			if ($trade_fee) {
				$fee = round((($num * $price) / 100) * $trade_fee, 8);
				$mum = round((($num * $price) / 100) * (100 - $trade_fee), 8);
			}
			else {
				$fee = 0;
				$mum = round($num * $price, 8);
			}

			if ($user_coin[$xnb] < $num) {
				return C("coin")[$xnb]["title"] . "余额不足2！";
			}
		}
		else {
			return "交易类型错误";
		}

		if (C("coin")[$xnb]["fee_bili"]) {
			if ($type == 2) {
				$bili_user = round($user_coin[$xnb] + $user_coin[$xnb . "d"], 8);

				if ($bili_user) {
					$bili_keyi = round(($bili_user / 100) * C("coin")[$xnb]["fee_bili"], 8);

					if ($bili_keyi) {
						$bili_zheng = M()->query("select id,price,sum(num-deal)as nums from movesay_trade where userid=" . userid() . " and status=0 and type=2 and market like '%" . $xnb . "%' ;");

						if (!$bili_zheng[0]["nums"]) {
							$bili_zheng[0]["nums"] = 0;
						}

						$bili_kegua = $bili_keyi - $bili_zheng[0]["nums"];

						if ($bili_kegua < 0) {
							$bili_kegua = 0;
						}

						if ($bili_kegua < $num) {
							return "您的挂单总数量超过系统限制，您当前持有" . C("coin")[$xnb]["title"] . $bili_user . "个，已经挂单" . $bili_zheng[0]["nums"] . "个，还可以挂单" . $bili_kegua . "个";
						}
					}
					else {
						return "可交易量错误";
					}
				}
			}
		}

		if (C("market")[$market]["trade_min"]) {
			if ($mum < C("market")[$market]["trade_min"]) {
				return "交易总额不能小于" . C("market")[$market]["trade_min"];
			}
		}

		if (C("market")[$market]["trade_max"]) {
			if (C("market")[$market]["trade_max"] < $mum) {
				return "交易总额不能大于" . C("market")[$market]["trade_max"];
			}
		}

		if (!$rmb) {
			return "数据错误1";
		}

		if (!$xnb) {
			return "数据错误2";
		}

		if (!$market) {
			return "数据错误3";
		}

		if (!$price) {
			return "数据错误4";
		}

		if (!$num) {
			return "数据错误5";
		}

		if (!$mum) {
			return "数据错误6";
		}

		if (!$type) {
			return "数据错误7";
		}

		$mo = M();
		$mo->execute("set autocommit=0");
		$mo->execute("lock tables movesay_trade write ,movesay_user_coin write");
		$rs = array();

		if ($type == 1) {
			$rs[] = $mo->table("movesay_user_coin")->where(array("userid" => $userid))->setDec($rmb, $mum);
			$rs[] = $mo->table("movesay_user_coin")->where(array("userid" => $userid))->setInc($rmb . "d", $mum);
			$rs[] = $mo->table("movesay_trade")->add(array("userid" => $userid, "market" => $market, "price" => $price, "num" => $num, "mum" => $mum, "fee" => $fee, "type" => 1, "addtime" => time(), "status" => 0));
		}
		else if ($type == 2) {
			$rs[] = $mo->table("movesay_user_coin")->where(array("userid" => $userid))->setDec($xnb, $num);
			$rs[] = $mo->table("movesay_user_coin")->where(array("userid" => $userid))->setInc($xnb . "d", $num);
			$rs[] = $mo->table("movesay_trade")->add(array("userid" => $userid, "market" => $market, "price" => $price, "num" => $num, "mum" => $mum, "fee" => $fee, "type" => 2, "addtime" => time(), "status" => 0));
		}
		else {
			$mo->execute("rollback");
			$mo->execute("unlock tables");
			return "交易类型错误";
		}

		if (check_arr($rs)) {
			$mo->execute("commit");
			$mo->execute("unlock tables");
			A("Trade")->matchingTrade($market);
			return "交易成功！";
		}
		else {
			$mo->execute("rollback");
			$mo->execute("unlock tables");
			return "交易失败！";
		}
	}
}

