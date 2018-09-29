//lang
function lang(str, re){
	if(typeof langs == 'undefined') langs = false;
	if(langs && typeof langs[str] != 'undefined'){
		str = langs[str];
	}
	if(re) for(var r in re){
		str = str.replace(r, re[r]);
	}
	return str;
}
//格式化保留2位
function formatCount(count){
	var countokuu=(count/100000000).toFixed(3);
	var countwan = (count/10000).toFixed(3);
	var countokuuwan = (count/1000000000000).toFixed(3);
	if(count > 1000000000000)
		return countokuuwan.substring(0,countokuuwan.lastIndexOf('.')+3)+'亿万';
	if(count> 100000000)
		return countokuu.substring(0,countokuu.lastIndexOf('.')+3) + '亿';
	if(count > 10000)
		return countwan.substring(0,countwan.lastIndexOf('.')+3)+'万';
	else
		return count
}
// 格式化时间戳
function dateformat(d){
	if(!d) return '刚刚';
	var time = new Date((parseInt(d)+28800)*1000);
	var ymd = time.getUTCFullYear() + "-" + (time.getUTCMonth()+1) + "-" + time.getUTCDate() + ' ';
	var his = time.getUTCHours() + ":" + (time.getUTCMinutes()<10?'0':'') + time.getUTCMinutes();
	return ymd + his;
}
//谷歌验证时间提示
function timer(timestamp){
	setInterval(function(){
		timestamp+=1;
		$('#bjtime').html(t(timestamp));
	},1000)
}
//时间戳函数
function t(timestamp, ymd) {
	var d= new Date((parseInt(timestamp)+28800)*1000);
	var time =d.getUTCFullYear()+"-"+p((d.getUTCMonth()+1))+"-"+p(d.getUTCDate())+" "+p(d.getUTCHours())+":"+p(d.getUTCMinutes())+":"+p(d.getUTCSeconds());
	if(ymd) return ymd = d.getUTCFullYear() + "-" + (d.getUTCMonth()+1) + "-" + d.getUTCDate() + ' ';
	return time;
}
//补0函数
function p(s) {
	return s < 10 ? '0' + s: s;
}
//弹出时间提示
function timealert(){
	return alert(lang('双重密码错误，确保您的手机时间与北京时间\n{time}一致',{'{time}':t(timestamp)}));
}
//获取价格间隔时间
ALLCOIN = {btc:[lang('比特币')],ltc:[lang('莱特币')],doge:[lang('狗狗币')],ybc:[lang('元宝币')],eth:[lang('以太币')]};
rate_timer = 10;
IS_LOGIN = 0;
title = document.title; titleprice = 0;
coin = {name: 'btc', sign: ''};
pricemsg = lang('此出价为1个币的价格');
nice_price = {sale: pricemsg, buy: pricemsg};
BSConfig = {
	limit:50, sort:0, timeid:0,size:(coin.name=='doge'?5:2),
	setlimit:function(){
		var html = '<tr><td colspan="3">'+lang('数据加载中')+'...</td></tr>';
		$('#salelist').html(html);$('#buylist').html(html);
		if(BSConfig.limit==10){BSConfig.limit=20;$.cookie('bslimit',20);$('#bssetlink').html(lang('点击收起')).attr('class', 'up');}
		else{BSConfig.limit=10;$.cookie('bslimit',10);$('#bssetlink').html(lang('展开查看更多')).attr('class', '');}}
};

function bgline(){
	$('.trade_list .item tr, .pay_record tr, .trade_entrust tr, .trade_record tr, .entrust_list tr, .plan_manage .table_list tr,.new_strike table tr').hover(function(){$(this).addClass('selected');},function(){$(this).removeClass('selected');});
}
//坏数字
function badFloat(num, size){
	if(isNaN(num)) return true;
	num += '';
	if(-1 == num.indexOf('.')) return false;
	var f_arr = num.split('.');
	if(f_arr[1].length > size){
		return true;
	}
	return false;
}
//按钮效果
function tabFn(id, cn){
	var o = Dom(id), cls = o.className;
	o.onmouseover = function(){this.className = cn;}
	o.onmouseout = function(){this.className = cls;}
}
//浮层
function Maskfn(id){
	var MaskBg = Dom('MaskBg');
	Dom(id).onclick = function(){
		MaskBg.style.height = Math.max(document.body.offsetHeight, document.documentElement.clientHeight) + 'px';
		MaskBg.style.display = "block";
		Dom('Mask1').style.display = "block";
	}
	Dom('closeBtn').onclick = Dom('mBtn1').onclick = Dom('mBtn2').onclick = function(){
		MaskBg.style.display = "none";
		Dom('Mask1').style.display = "none";
	}
}
function btvs(s,n){if(n)btvsn=n;btvsn+=s;setTimeout("btvs("+s+")",s*1000);}
//格式化小数
//@f float 传入小数: 123; 1.1234; 1.000001;
//@size int 保留位数
//@add bool 进位: 0舍 1进
ffconf = [[],[],[100, 0.01],[1000, 0.001],[10000, 0.0001],[100000, 0.00001]];
function formatfloat(f, size, add){
	f = parseFloat(f);
	var ff = Math.floor(f * ffconf[size][0]) / ffconf[size][0];
	if(add && f > ff) ff += ffconf[size][1];
	return isNaN(ff)? 0: ff;
}
// 浮点数精确加法
function FloatAdd(arg1,arg2){
	var r1, r2, m;
	try {r1 = arg1.toString().split(".")[1].length} catch (e) {r1 = 0}
	try {r2 = arg2.toString().split(".")[1].length} catch (e) {r2 = 0}
	m = Math.pow(10, Math.max(r1, r2));
	return (arg1 * m + arg2 * m) / m;
}
// 浮点数减法
function FloatSub(arg1,arg2){
	var r1,r2,m,n;
	try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}
	try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}
	m=Math.pow(10,Math.max(r1,r2));
	//动态控制精度长度
	n=(r1>=r2)?r1:r2;
	return ((arg1*m-arg2*m)/m).toFixed(n);
}
// 精确乘法
function FloatMul(arg1,arg2)
{
	var m=0,s1=arg1.toString(),s2=arg2.toString();
	try{m+=s1.split(".")[1].length}catch(e){}
	try{m+=s2.split(".")[1].length}catch(e){}
	return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m)
}
//Dom
function Dom(o){return document.getElementById(o);}

//全站委托
function btcsum(){
	var b2width = coin.name=='btc'? 3.3: 0.3;
	clearTimeout(BSConfig.timeid);
	$.get('/coin/' + moneyconfig.coin + '/' + coin.name + '/trust.js?t=' + btvsn, function(data){
		var maxnum = 0;
		for(var type in data){
			var d = data[type];
			var html = '';
			var htmbuy='';
			var buynum=0;
			var salenum=0;
			var htmsale='';
			var idhtml = '';
			for(var i in d){
				if (type == 'buy') {
					buynum += parseFloat(d[i].n);
				}

				if (type == 'sale') {
					salenum += parseFloat(d[i].n);
				}
			}

			for(var i in d){
				if (type == 'buy') {
					htmbuy += '<dd class="clear"> <span class="wb_50 pl_20">' +  formatCount(parseFloat(d[i].n)) + '</span> <span class="wb_50">' + moneyconfig.sign + parseFloat(d[i].p) + '</span> <i class="turntable_bg_red" style="width: ' + d[i].n/buynum*100 + '%"></i> </dd>';
				}
				if (type == 'sale') {
					htmsale += '<dd class="clear"><span class="wb_50">' + moneyconfig.sign + parseFloat(d[i].p) + '</span> <span class="wb_50 pl_20">' + formatCount(parseFloat(d[i].n)) + '</span>  <i class="turntable_bg_red turntable_bg_green" style="width: ' +d[i].n/salenum*100 + '%"></i> </dd>';
				}
			}
			if(BSConfig.sort && type == 'sale'){
				var dsort = [];
				var dmax = d.length > BSConfig.limit? BSConfig.limit: d.length;
				for(var j = dmax; j > 0; j--) dsort[dmax - j] = d[j - 1];
				d = dsort;
			}
			for(var i in d){
				if(BSConfig.limit && i == BSConfig.limit) break;
				if(parseFloat(d[i].n)>maxnum) maxnum = parseFloat(d[i].n);
				i = parseInt(i);
				idhtml = type == 'buy'? lang('买')+ (i + 1) : lang('卖') + (BSConfig.sort? dmax--: i + 1);
				html += '<li class="clear"  onclick="xuetong.autotrust(this,\''+type+'\')" ><span class="w_94 '+(type == 'buy'?'red':'green')+'">' + idhtml + '</span><span class="w_187 mr_20">' + moneyconfig.sign + xuetong.formatfloat((d[i].p),coin.name=='doge'?5:2) + '</span><span class="w_155" >'+ formatCount(d[i].n) +'</span></li>';
			}
			$('#' + type + 'list').html(html);
			if (type == 'buy') {
				$('#buy_list').html(htmbuy);
			} else {
				$('#sale_list').html(htmsale);
			}
		}
		if (typeof BP == 'undefined') {
			$('#price_out').val(typeof data['buy'][0] == 'undefined' ? 0 : xuetong.formatfloat(data['buy'][0].p,coin.name=='doge'?5:2));
			$('#price_in').val(typeof data['sale'][0] == 'undefined' ? 0 : xuetong.formatfloat(data['sale'][0].p,coin.name=='doge'?5:2));
			BP = 1;
		}

		bgline();
		BSConfig.timeid = setTimeout("btcsum()", 5000);
	}, 'json');
}
//全站成交
bttimeid = 0;
function btcorder(limit){
	clearTimeout(bttimeid);
	$.get('/coin/' + moneyconfig.coin + '/' + coin.name + '/order.js?t=' + btvsn, function(d){
		var html = '';
		for(var i in d.d){
			html += '<dd class="clear"><span class="w_180 ' + (d.d[i].s == 'buy'? 'red': 'green') + '">' + (d.d[i].s == 'buy'? lang('买入'): lang('卖出')) + '</span><span class="w_270">' + d.d[i].t + '</span><span class="w_270">' + d.d[i].p + '</span><span class="w_270 po_re ' + (d.d[i].s == 'buy'? 'red': 'green') + '">' + coin.sign + formatfloat(d.d[i].n, 3) + '</span></dd>';
		}
		$('#orderlist').html(html);
		// 更新价格
		$('#btc_rmb_new').html(parseFloat(d.d[0].p));
		$('#btc_min_box').html(parseFloat(d.min));
		$('#btc_max_box').html(parseFloat(d.max));
		$('#btc_sum_box').html(formatCount(coin.name == 'doge' ? parseInt(d.sum) : parseFloat(d.sum)));
		$('#coin_deal').html(formatCount(parseInt(d.sum)*parseFloat(d.d[0].p)));
		var zd_rmb = (parseFloat(d.min) + parseFloat(d.max)) / 2;
		zd_rmb = ((formatfloat(d.d[0].p, 2) - zd_rmb) / zd_rmb * 100).toString().split('.');
		if(typeof zd_rmb[1] == 'undefined'){
			zd_rmb = ['0', '0'];
		}

		trends()
		finance();
		bttimeid = setTimeout("btcorder(" + limit + ")", 5000);
	}, 'json');
}
function cointab(c){
	coin={name:c,sign:''};
	$('#tab-allcoin li').removeClass('selected');$('#tab-'+c).addClass('selected');btcsum(); btcorder();
	$('#trade-link').attr('href', '/'+c+'/');
	kline($("#chart-control > a.selected").attr('data-time'));
}

function trends(){
	$.get('/coin/'+moneyconfig.coin+'/rate.js?t=' + btvsn, function(d){
		var newcoin = $('#coin_trade_p').val();
		if(newcoin  > d[coin['name']]){
			$('#btc_rmb_new').addClass('green');
			$('#coin_trade_trend').html('<em class="left">¥'+d[coin['name']]+'</em><img src="/wap/images/icon_arrow_b.png" class="icon_arrow">');
			$('#coin_trade_trend').addClass('green')
		}else if(newcoin == d[coin['name']]){
			$('#btc_rmb_new').removeClass();
			$('#coin_trade_trend').attr('class', 'trade_sb_con');
			$('#coin_trade_trend').html('<em class="left">¥'+d[coin['name']]+'</em><span>-</span>');
		}else{
			$('#coin_trade_trend').html('<em class="left">¥'+d[coin['name']]+'</em><img src="/wap/images/icon_arrow_t.png" class="icon_arrow">');
			$('#coin_trade_trend').addClass('red');
			$('#btc_rmb_new').addClass('red');
		}
		$('#coin_trade_p').val(d[coin['name']]);
	}, 'json');
	setTimeout("btcorder()", 5000);
}
//取消委托
function trustcancel(id){
	$.get('/ajax/trustcancel/id/' + id, function(d){
		alert(d.msg);
		if(d.status){
			location.reload()
		}
	}, 'json');
}
//最大可买
function buy_max(price, len){
	len = len || 2;
	var add = 0;
	if(len == 5) add = 1;
	price = formatfloat(price, len, add);
	if(user[moneyconfig.coin+'_over'] > 0 && price > 0){
		$('#buy_max').html(formatfloat(parseInt(parseInt(user[moneyconfig.coin+'_over'] * 100) / price * 10000000) / 1000000000, 3));
	} else {
		$('#buy_max').html(0);
	}
}
// 资产
function finance() {
	if (user.uid) {
		var all = 0;
		for (var i in ALLCOIN) {
			var f = FloatAdd(user[i + '_over'], user[i + '_lock']) * parseFloat($('#rate-' + i).html());
			all = FloatAdd(f,all);
		}
		all = FloatAdd(FloatAdd(user[moneyconfig.coin + '_over'], user[moneyconfig.coin + '_lock']),all);
		$('.ufinance').html(moneyconfig.sign+formatfloat(all,2));
		//净资产
		if(parseFloat($('#uloan').html()) == 0){
			$('.una').html(moneyconfig.sign+formatfloat(all,2));
		} else {
			$('.una').html(moneyconfig.sign+formatfloat(all-parseFloat($('#uloan').html()),2));
		}
	}
}
//总价
function sumprice(type){
	var inputtype = type == 'buy'? 'in': 'out';
	if ($('#number' + inputtype).length > 0) Dom(type + '_sumprice').innerHTML = formatfloat(FloatMul(Dom('number' + inputtype).value, Dom('price' + inputtype).value), 5);
}
//委托提交处理
function tbtcSubmit(type){
	// 最小下单
	var min = {'btc':0.01,'ltc':0.1,'ybc':1,'doge':100,'eth':0.1};
	var number = parseFloat($('#number' + type).val());
	if(isNaN(number)) return alert('数量有误，请重新输入');
	if(number < min[coin.name]) return alert('最小下单'+min[coin.name]+coin.name.toUpperCase());
	$('#trustbtn' + type).attr('onclick', '');
	$.post("/ajax/trustbtc/", {type: type, coin: coin.name, price: parseFloat($('#price_' + type).val()), number: parseFloat($('#number' + type).val()), pwdtrade: $('#pwdtrade' + type).val(), hotp: $('#hotp' + type).val()},
		function(d){
			alert(d.msg);
			if(d.status) {
				location.reload()
			}
		}, 'json');
}
//提示效果
function tm_hide(type){$('#trustmsg'+type).fadeOut()}
function tm_show(type, d){
	$('#trustmsg'+type).html(d.status == 1? '<i></i>' + d.msg: '<i style="background-position: -84px 0;"></i><span style="color:red;">'+d.msg+'</span>');
	$('#trustmsg'+type).show();setTimeout("tm_hide('"+type+"')",3000);
}
//验证价格
function vNum(o, len){
	if (isNaN(o.value)) o.value = '';
	var value = len?formatfloat(o.value, len, 0):parseInt(o.value);
	if(badFloat(o.value, len)) o.value = value
}
// 借贷数量
function vloan(o, len) {
	vNum(o, len);
	var vi = parseFloat(o.value);
	var max = parseFloat($('#borrow_max').html());
	if(vi > max){
		o.value = max;
	}
}
//SHOW GA PW
function showGA(v,l,type){
	if(!v) return;
	$.get('/ajax/user2ga/email/' + v, function(d){
		type = type||'';
		if(d.status == 1){
			// GA
			$('#ga_pwd'+type).show();$('#ga_isclosed').hide();
		}else if(d.status == 2){
			// verify code
			$('#code').show();$('#ga_isclosed'+type).show();
			$('#captchaimg'+type).attr('src', '/index/captcha?t='+Math.random());
		}else if(d.msg){
			if(l == 1){
				$('.quick_login_x .tip').html(d.msg).show();
			}else if(l == 2){
				$('#emailmsg').html(d.msg).show();
			}else{
				if($('.z1 .tip').length == 0) $('.z1').append('<div class="tip"><b class="false">'+ d.msg+'</b></div>');
			}
		}
	}, 'json');
}
//单币价格提示
function pricemsgfn(){
	if($(this).val() == pricemsg){
		$(this).val('');
	}
}
//借贷
function loanSubmit(){
	// 借款金额
	var amount = parseFloat($('#borrow_Money').val());
	// 费率
	$.post('/ajax/loanorder/',{coin:loancoin.id,amount:amount,fee:loancoin.fee,is_agree:1},function(d){
		alert(d.msg);window.location.reload();
	},'json')
}


(function(e){typeof define=="function"&&define.amd?define(["jquery"],e):e(jQuery)})(function(e){function n(e){return u.raw?e:encodeURIComponent(e)}function r(e){return u.raw?e:decodeURIComponent(e)}function i(e){return n(u.json?JSON.stringify(e):String(e))}function s(e){e.indexOf('"')===0&&(e=e.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\"));try{return e=decodeURIComponent(e.replace(t," ")),u.json?JSON.parse(e):e}catch(n){}}function o(t,n){var r=u.raw?t:s(t);return e.isFunction(n)?n(r):r}var t=/\+/g,u=e.cookie=function(t,s,a){if(s!==undefined&&!e.isFunction(s)){a=e.extend({},u.defaults,a);if(typeof a.expires=="number"){var f=a.expires,l=a.expires=new Date;l.setTime(+l+f*864e5)}return document.cookie=[n(t),"=",i(s),a.expires?"; expires="+a.expires.toUTCString():"",a.path?"; path="+a.path:"",a.domain?"; domain="+a.domain:"",a.secure?"; secure":""].join("")}var c=t?undefined:{},h=document.cookie?document.cookie.split("; "):[];for(var p=0,d=h.length;p<d;p++){var v=h[p].split("="),m=r(v.shift()),g=v.join("=");if(t&&t===m){c=o(g,s);break}!t&&(g=o(g))!==undefined&&(c[m]=g)}return c};u.defaults={},e.removeCookie=function(t,n){return e.cookie(t)===undefined?!1:(e.cookie(t,"",e.extend({},n,{expires:-1})),!e.cookie(t))}});

function placeholder(){
	if('placeholder' in document.createElement('input')) return;
	$(':text[placeholder],:password[placeholder]').each(function(){
		$(this).val($(this).attr('placeholder'));
		$(this).bind('blur', function(){
			if($(this).val() == '') $(this).val($(this).attr('placeholder'));
		});
		$(this).bind('focus', function(){
			if($(this).val() == $(this).attr('placeholder')) $(this).val('');
		});
	});
}

//获取指定名称的cookie的值
function getCookie(objName) {
	var arrStr = document.cookie.split("; ");
	for (var i = 0; i < arrStr.length; i++) {
		var temp = arrStr[i].split("=");
		if (temp[0] == objName) return unescape(temp[1]);
	}

}


function ajax_islogin(d){
	if(d.data=='nologin'){
	  window.location.href= '/user/login/';
	}
}

// 买入/卖出 比例
function slider(){
	var type = ['sale','buy','borrow'];
	for(var i in type){
		$("#slider_"+type[i]).slider({
			value: 0,min: 0, max: 100,step: 10,range: "min",slide: function(a, t) {
				var type = $(t.handle).attr('data_slide');
				var e = $("#"+type+'_max').text();
				$("#"+type+' .ui-slider-handle').addClass('ui-state-focus ui-state-active');
				if(type == 'buy') {
					$("#numberin").val((e / 100 * t.value).toFixed(3));
				}else if(type =='sale'){
					$("#numberout").val((e / 100 * t.value).toFixed(3));
				}else{
					$("#borrow_Money").val((e / 100 * t.value).toFixed(loancoin.decimal-2));
				}
				$("#ratio_num_"+type).text(t.value + "%");
			}
		})
	}
}
// 根据委托填价格
function autotrust(_this,type){
	$(_this).children().each(function(i , d){
		if(type == 'sale'){
			if(i == 1) {
				$('#pricein').val($(d).find('.oprice').html()).css({
					'color':'#333',
					'font-size':'14px'
				});
			}
		}
		if(type == 'buy'){
			if(i == 1) {
				$('#priceout').val($(d).find('.oprice').html()).css({
					'color':'#333',
					'fontSize':'14px'
				});
			}
		}
	})
}

// 关闭弹出框
function hideDialog(id, fn) {
	$('#'+id).removeClass('styled-pane').addClass('modal-out');
	$('#mask').addClass('out');
	setTimeout(function(){$('#'+id).hide();$('#mask').remove();},300);
	if (typeof fn == 'function') fn();
}

// 登录跳转
function jump(url) {
	if($.cookie('NICKNAME')){
		top.location=url;
	}else{
		showDialog('log-in-dialog');
		GO_URL=url;
	}
}

// ajax 登录
function ajaxlogin() {
	$.get('/user/ajaxlogin/',$('#ajaxlogin').serialize(), function (d) {
		if(d.status) {
			if (typeof GO_URL != 'undefined') top.location.href = GO_URL; else {
				location.reload();
			}
		}else{
			$('#' + d.data).html(d.msg).show();
		}
	},'json');
}
// 挂单
function opentrades(){
	$.post('/ajax/opentrades/coin/'+coin.id,{},function(d){
		var ts= d.data;
		var html = '';
		for(var tk in ts.datas){
			html += '<tr>';
			html += ts.datas[tk].flag == 'buy'?'<td class="color_red">'+lang('买入')+'</td>':'<td class="color_green">'+lang('卖出')+'</td>';
			html += '<td>'+ts.datas[tk].price+'</td><td>'+ts.datas[tk].number+'</td><td>'+(parseInt(ts.datas[tk].number*1000)-parseInt(ts.datas[tk].numberover*1000))/1000+'</td>';
			html += '<td class="color_'+(ts.datas[tk].status==1?'green':'red')+'" id="t_s_'+ts.datas[tk].id+'">'+lang(ts.datas[tk].status==1?'部分成交':'未成交')+'</td>';
			html += '<td>'+ts.datas[tk].numberover+'</td><td align="center" id="t_opt_'+ts.datas[tk].id+'">';
			html += '<input type="button" value="'+lang('撤销')+'" class="btn btn_inverse btn_small" onclick="trustcancel('+ts.datas[tk].id+')">';
			html += '</td></tr>';
		}
		$('#user-trusts').html(html);
		opentrades_cb(d);
	},'json');
}
function opentrades_cb(d) {
	if ('undefined' != typeof(otTimerId)) clearTimeout(otTimerId);
	if ('undefined' == typeof(d.data.intervalTime) || parseInt(d.data.intervalTime) < 1) return;
	otTimerId = setTimeout("opentrades()", parseInt(d.data.intervalTime) * 1000);
}

function priceTip(type){
	bprice = parseFloat($('.price'+type).val());
	bp = parseFloat($('#' + type + '_nice').text());
	price = (bprice-bp)/bp*100
	if(Math.abs(price) > 50 && bprice !=''){
		$('.price'+type).prev().fadeIn(1000).delay(3000).fadeOut(400)
	}
}
// jquery 选dom
function jdom(selector){
	return $(selector);
}

function checkmobile(mobile) {
	var patrn=/^13[0-9]{9}|15[0-9]{9}|18[0-9]{9}|147[0-9]{8}|17[0-9]{9}$/;
	if(!patrn.exec(mobile)) return false;
	return true;
}

(function($) {
	$.fn.watch = function(callback) {
		return this.each(function() {
			//缓存以前的值
			$.data(this, 'originVal', $(this).val());

			//event
			$(this).on('keyup paste', function() {
				var originVal = $(this, 'originVal');
				var currentVal = $(this).val();

				if (originVal !== currentVal) {
					$.data(this, 'originVal', $(this).val());
					callback(currentVal);
				}
			});
		});
	}
})(jQuery);
