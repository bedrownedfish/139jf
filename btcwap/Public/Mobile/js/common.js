$(document).ready(function () {
    goBack();
    getAuthCode();
    clipboard();
    uploadImgPreview();
});
function goBack() {
    $('.icon-left').on('click', function () {
        history.back();
    });
}
function getAuthCode() {
    var obj = $('.getAuthCode');
    if(!obj.length) return;
    obj.on('click',function () {
        Utils.getAuthCode($(this));
    });
}
function clipboard() {
    Utils.clipboard({
        target : '.clipboard'
    })
}

function uploadImgPreview() {
    var $obj = $('.imgUpload');
    if($obj.length) {
        //var $container;
        // $obj.each(function () {
        //     $container = $(this).parents('.uploadImgPreview');
        //     if($.trim($container.data('model')) == 'edit') {
        //         $container.children().css({
        //             position : 'relative',
        //             'z-index' : '-1',
        //             'opacity' : 0
        //         })
        //     }
        // });
        $obj.on('change',function () {
            var $container = $(this).parents('.uploadImgPreview');
            $.each(this.files,function () {
                Utils.img2base64(this,function (base64) {
                    $container.css({
                        'background-image' : 'url('+ base64 +')',
                        'background-size' : '100%'
                    }).addClass('active');
                });
            });
        })
    }
}