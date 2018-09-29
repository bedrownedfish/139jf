var Msg = {
    init : function(msg,callback,title,confirmOrAlert) {
        var html = $('<div class="msg">' +
            '<div style="vertical-align:middle;display:table-cell;">' +
            '<div style="width:72%;max-width:300px;border-radius:10px;background-color: #fff;margin:0 auto;text-align:center">' +
            '<div class="msg-title" style="font-size:16px;font-weight:bold;padding: 1.2em 2em 0"></div>' +
            '<div class="msg-msg" style="font-size:14px;padding:1em 2em 1.8em"></div>' +
            '<div class="msg-confirm" style="font-size:16px;font-weight:bold;"></div>' +
            '</div></div></div>');
        var $msg = html.find('.msg-msg'),
            $title = html.find('.msg-title'),
            $confirm = html.find('.msg-confirm');
        (typeof(msg) == 'undefined') ? $msg.html('') : $msg.html(msg);
        (typeof(title) == 'undefined') ? $title.html('温馨提示') : $title.html(title);
        var confirmOrAlertHtml;
        typeof(confirmOrAlert) == 'undefined' ? confirmOrAlert = 'alert' : confirmOrAlert;
        if (confirmOrAlert.toUpperCase() == 'CONFIRM') {
            confirmOrAlertHtml
                = '<div style="color:#007aff;border-top:1px solid #dbdbdf;border-bottom-right-radius: 10px;border-bottom-left-radius: 10px;">' +
                '<div class="msg-cancel" style="width: 50%;padding: .6em 0;border-bottom:1px solid #dbdbdf;border-bottom-left-radius: 10px;display: inline-block;border-right:1px solid #dbdbdf;">Cancel</div>' +
                '<div class="msg-ok" style="width: 50%;padding: .6em 0;border-bottom:1px solid #dbdbdf;border-bottom-right-radius: 10px;display: inline-block;">OK</div>' +
                '</div>';
        } else {
            confirmOrAlertHtml
                = '<div style="color:#007aff;border-top:1px solid #dbdbdf;border-bottom-right-radius: 10px;border-bottom-left-radius: 10px;">' +
                '<div class="msg-ok" style="width: 100%;padding: .6em 0;border-bottom:1px solid #dbdbdf;border-bottom-left-radius: 10px;border-bottom-right-radius: 10px;">OK</div>' +
                '</div>';
        }
        $confirm.html(confirmOrAlertHtml);
        html.css({
            position: 'fixed',
            width: '100%',
            height: $(window).height() ,
            'background-color': 'rgba(0,0,0,.5)',
            display:'table',
            top:0,
            right:0,
            bottom:0,
            left:0,
            'z-index':9999999999
        });
        this.lockBody();
        var $body = $('body');
        $body.append(html);
        var $ok = $('.msg-ok'),
            $cancel = $('.msg-cancel');
        $ok.add($cancel).on('touchstart mouseover',function () {
            $(this).css({
                'background-color':'#007aff',
                color:'#fff',
                'border-bottom':'1px solid #007aff'
            });
        });
        $ok.add($cancel).on('touchend mouseout',function () {
            $(this).css({
                'background-color':'#FFF',
                color:'#007aff',
                'border-bottom':'1px solid #dbdbdf'
            });
        });
        var that = this;
        $cancel.add($ok).on('click', function () {
            that.closeMsgBox();
        });
        /*$ok.on('click', function () {
            if (typeof(callback) != 'undefined') {
                callback();
            } else {
                return false;
            }
            that.closeMsgBox();
        });*/
        if (typeof(callback) != 'undefined'){
            if(typeof(callback) == "function" ){
                $ok.on('click',function () {
                    callback();
                    that.closeMsgBox();
                });
            } else if(/\d/.test(callback)) {
                setTimeout(function () {
                    that.closeMsgBox();
                },callback);
            }
        }
    },
    closeMsgBox : function () {
        $('.msg').remove();
        this.lockBody(1);
    },
    lockBody : function (lockOrUnlock) {
        var $body = $('body');
        if(lockOrUnlock == 'lock' || lockOrUnlock == '0' || typeof lockOrUnlock == 'undefined') {
            if($body.data('lock') === undefined || $body.data('lock') == false) {
                $body.data('scrollTop',$('body').scrollTop());
                $body.add($('html')).css({
                    overflow: 'hidden',
                    height: $(window).height()
                });
                $body.data('lock',true);
            }
        } else {
            $body.add($('html')).css({
                overflow: '',
                height: ''
            });
            $body.data('lock',false);
            $body.scrollTop($body.data('scrollTop'));
        }
    }
}
$.extend({
    msg : function (msgStr,callback,title,confirmOrAlert) {
        Msg.init(msgStr,callback,title,confirmOrAlert);
    }
});