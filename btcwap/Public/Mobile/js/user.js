var User = {
    signin : {
        init : function () {
            this.initNode();
            this.addEvent();
        },
        initNode:function () {
            this.$tabs = $('.signin-tabs');
            this.$type = $('.signin-type');
            this.$auth = $('.signin-auth');
        },
        addEvent : function () {
            var that = this;
            this.$tabs.children('div').on('click',function () {
                that.tabs($(this));
            });
            this.$auth.on('click',function () {
                that.auth($(this));
            });
        },
        tabs : function (obj) {
            obj.addClass('active').siblings().removeClass('active');
            this.$type.find('label').text(obj.data('name'));
            this.$type.find('input').attr({
                placeholder : '请输入' + obj.data('name'),
                type : obj.data('type') == 'email' ? 'email' : 'tel'
            });
            this.$auth.data('type',obj.data('type'));
        },
        auth : function (obj) {
            Utils.getAuthCode(obj);
        }
    }
}