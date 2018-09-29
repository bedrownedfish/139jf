
var Utils = new Object();

Utils.htmlEncode = function(text) {
  return text.replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}

Utils.trim = function(text) {
  if (typeof(text) == "string")
  {
    return text.replace(/^\s*|\s*$/g, "");
  }
  else
  {
    return text;
  }
}

Utils.isEmpty = function(val) {
  switch (typeof(val)){
    case 'string':
      return Utils.trim(val).length == 0 ? true : false;
      break;
    case 'number':
      return val == 0;
      break;
    case 'object':
      return val == null;
      break;
    case 'array':
      return val.length == 0;
      break;
    default:
      return true;
  }
}

Utils.isNumber = function(val) {
  var reg = /^[\d|\.|,]+$/;
  return reg.test(val);
}

Utils.isInt = function(val) {
  if (val == "")
  {
    return false;
  }
  var reg = /\D+/;
  return !reg.test(val);
}

Utils.isEmail = function(email) {
  var reg1 = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/;

  return reg1.test( email );
}

Utils.isTel = function (tel) {
  var reg = /^[\d|\-|\s|\_]+$/; //只允许使用数字-空格等

  return reg.test( tel );
}

Utils.fixEvent = function(e) {
  var evt = (typeof e == "undefined") ? window.event : e;
  return evt;
}

Utils.srcElement = function(e) {
  if (typeof e == "undefined") e = window.event;
  var src = document.all ? e.srcElement : e.target;
  return src;
}

Utils.isTime = function(val) {
  var reg = /^\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}$/;

  return reg.test(val);
}

Utils.x = function(e) { //当前鼠标X坐标
    return Browser.isIE?event.x + document.documentElement.scrollLeft - 2:e.pageX;
}

Utils.y = function(e) { //当前鼠标Y坐标
    return Browser.isIE?event.y + document.documentElement.scrollTop - 2:e.pageY;
}

Utils.request = function(url, item) {
	var sValue=url.match(new RegExp("[\?\&]"+item+"=([^\&]*)(\&?)","i"));
	return sValue?sValue[1]:sValue;
}

Utils.cleanHtmlTag = function () {
    var html = arguments[0];
    if(html.length > 0) return html.replace(/<(S*?)[^>]*>.*?|<.*?\/>/g,'');
}

Utils.isJqObj = function () {
    return arguments[0] instanceof jQuery;
}

Utils.showPwd = function () {
    var obj = arguments[0];
    if(!Utils.isJqObj(obj)) obj = $(obj);
    var $target = $(obj.data('target'));
    if(obj.data('status') == 'password') {
        $target.attr('type','text');
        obj.data('status', 'text')
            .removeClass('icon-showPwd')
            .addClass('icon-showPwd-disable');
        $target.on('focus',function () {
            $target.attr('type','password');
        })
        $target.on('blur',function () {
            $target.attr('type','text');
        })
    } else {
        $target.off('focus').off('blur');
        $target.attr('type','password');
        obj.data('status', 'password')
            .removeClass('icon-showPwd-disable')
            .addClass('icon-showPwd');
    }
}

Utils.countDown = function () {
    var maxTime = arguments[0],
        obj = arguments[1];
    if(maxTime > 0 ) {
        if(obj.hasClass('disabled')) return false;
        var t = 0;
        obj.addClass('disabled');
        var timer = setInterval(function () {
            obj.text(maxTime - t);
            if(t == maxTime){
                obj.text(obj.data('text')).removeClass('disabled');
                clearInterval(timer);
            }
            t++;
        },1000);
        return true;
    }
    return false;
}

Utils.getAuthCode = function () {
    var obj = arguments[0];
    if(!Utils.isJqObj(obj)) obj = $(obj);
    var $input = $(obj.data('target'));
    if($input.val() == ''){
        $.msg('号码不能为空',function () {
            $input.focus();
        });
        return;
    }
    var data = {
        account : $input.val() === undefined ? '' : $input.val(),
        type : obj.data('type') === undefined ? 'mobile' : obj.data('type')
    }
    if(!Utils.countDown(60,obj)) return;
    obj.data('text',obj.text().trim())
    $.ajax({
        type: "post",
        url: obj.data('url'),
        data: {
            account : $input.val() === undefined ? '' : $input.val(),
            type : obj.data('type') === undefined ? 'mobile' : obj.data('type')
        },
        dataType: "json",
        success: function(d){
            $.msg(d.info);
        },
        error:function (a) {
        },
        complete : function () {
            $input.focus();
        }
    });
}

Utils.rating = function () {
    var obj = arguments[0];
    if(!Utils.isJqObj(obj)) obj = $(obj);
    if(obj.length) {
        obj.each(function () {
            var point = $(this).data('point'),
                color = $(this).data('color') ? $(this).data('color') : '#d81b43';
            typeof point == 'undefined' ? point = 0 : point;
            var $lastImg = $(this).find('img:lt('+ parseInt(point) +')');
            if($lastImg.length) {
                $lastImg.css({
                    'background-color': color,
                })
                var percent = Number((point - parseInt(point)) * 100).toFixed(2);
                percent +='%';
                $(this).find('img').eq(parseInt(point)).css({
                    'background': '-moz-linear-gradient(left,   '+ color +' 0%,  '+ color +' '+ percent +', #ffffff '+ percent +', #ffffff 100%)',
                    'background': '-webkit-linear-gradient(left,   '+ color +' 0%, '+ color +' '+ percent +',#ffffff '+ percent +',#ffffff 100%)',
                    'background': 'linear-gradient(to right,   '+ color +' 0%, '+ color +' '+ percent +',#ffffff '+ percent +',#ffffff 100%)',
                    'filter': 'progid:DXImageTransform.Microsoft.gradient( startColorstr=" '+ color +'", endColorstr="#ffffff",GradientType=1 )'
                });
            }
        });
    }
}

document.getCookie = function(sName) {
  // cookies are separated by semicolons
  var aCookie = document.cookie.split("; ");
  for (var i=0; i < aCookie.length; i++){
    // a name/value pair (a crumb) is separated by an equal sign
    var aCrumb = aCookie[i].split("=");
    if (sName == aCrumb[0])
      return decodeURIComponent(aCrumb[1]);
  }
  // a cookie with the requested name does not exist
  return null;
}

document.setCookie = function(sName, sValue, sExpires) {
  var sCookie = sName + "=" + encodeURIComponent(sValue);
  if (sExpires != null) {
    sCookie += "; expires=" + sExpires;
  }
  document.cookie = sCookie;
}

document.removeCookie = function(sName) {
  document.cookie = sName + "=; expires=Fri, 31 Dec 1999 23:59:59 GMT;";
}

Utils.loading = {
    init : function (text, time) {
        if(parseInt(arguments[0]) > 0 ) {
            this.text = '载入中...';
            this.time = arguments[0];
        } else {
            this.text = arguments[0] === undefined ? '载入中...' : arguments[0];
            this.time = 0;
        }
        this.initNode();
        this.showBox();
    },
    initNode : function () {
        this.$container = $('.loading');
    },
    showBox : function () {
        this.$container.append('<div><div class="overlay-transparent"></div><div><span></span><div>' + this.text + '</div></div></div>');
        this.$container.fadeIn(1000);
        var _this = this;
        if(this.time > 0) {
            setTimeout(function () {
                _this.close();
            },_this.time);
        }
    },
    close : function () {
        this.$container.remove();
    }
};

Utils.clipboard = function (opts) {
    opts = $.extend({
        target : 0.5,
        alert : true,
        time : 500
    }, opts || {});
    if(opts.target === undefined || !$(opts.target.length) || typeof Clipboard == 'undefined') return;
    var clipboard = new Clipboard(opts.target);
    clipboard.on('success', function(e) {
        e.clearSelection();
        if(opts.alert) {
            opts.time > 0 ? $.msg('复制成功',500) : $.msg('复制成功');
        }
    });
    clipboard.on('error', function(e) {
        $.msg('复制失败，似乎你浏览器不支持复制功能',500);
    });
}

Utils.img2base64 = function (img,callback) {
    var reader = new FileReader();
    reader.readAsDataURL(img);
    reader.onload = function() {
        callback(reader.result);
    };
};

Utils.imgCompress = function(opts){
    opts = $.extend({
        quality : 0.5,
        callback: function(){ return false; }
    }, opts || {});
    Utils.img2base64(opts.img,function(imgBase64){
        var cvs = document.createElement('canvas'),
            image = new Image(),
            ctx = cvs.getContext('2d');
        image.src = imgBase64;
        if(opts.preview) {
            opts.preview.append(image);
        } else {
            $('<div>',{
                class : 'forImgCompress'
            }).css({
                width : '100%',
                position: 'absolute',
                top:0,
                left:0,
                'z-index' : '-1',
                opacity : 0
            }).append(image).appendTo($('body'));
        }
        image.onload = function () {
            var w = image.naturalWidth,
                h = image.naturalHeight,
                scale_w = w,
                scale_h = h;
            if(opts.maxWidth > 0 && w > opts.maxWidth) {
                cvs.width = scale_w = opts.maxWidth;
                cvs.height = scale_h = opts.maxWidth / (w / h);
            } else if(opts.width > 0){
                cvs.width = scale_w = opts.width;
                if(opts.height > 0){
                    cvs.height = scale_h = opts.height;
                } else {
                    cvs.height = scale_h = opts.width / (w / h);
                }
            } else {
                cvs.width = w;
                cvs.height = h;
            }
            ctx.drawImage(image, 0, 0, w, h, 0, 0, scale_w, scale_h);
            var data = cvs.toDataURL('image/jpeg',opts.quality);
            data = data.split(',')[1];
            data = window.atob(data);
            var ia = new Uint8Array(data.length);
            for (var i = 0; i < data.length; i++) {
                ia[i] = data.charCodeAt(i);
            };
            var blob = new Blob([ia], {
                type: "image/jpeg"
            });
            opts.callback(blob);
        }
    })
};

Utils.imageUpload = function (opts) {
    var form =  new FormData(),
        target = opts.target.files;
    if(target.length == 0) return;
    $.each(opts.target.files,function (i) {
        var that = this;
        opts = $.extend({
            img : that,
            name : 'images[]',
            callback: function (blob) {
                form.append(this.name,blob);
                if(i == target.length - 1) doUpload();
            }
        }, opts || {});
        Utils.imgCompress(opts);
    });
    function doUpload() {

    }
}//unfinished

/*$('#imgUpload').on('change',function () {
    var that = this;
    Utils.imageUpload({
        target : that
    });
});*/

// $('#imgUpload').on('change',function () {
//     $.each(this.files,function () {
//         Utils.imgCompress({
//             maxWidth : 1080,
//             quality : 0.3,
//             img : this,
//             callback : function (blob) {
//                 var img = new Image();
//                 img.src = blob;
//                 $('.test').append(img);
//             }
//         });
//     });
// });
$.extend({
    loading : function (text,time) {
        text == 'close' ? Utils.loading.close() : Utils.loading.init(text,time);
    }
});