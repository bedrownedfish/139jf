var Index = {
    init : function () {
        this.initNode();
        this.addEvent();
        this.carousel();
    },
    initNode:function () {
        this.$carousel = $('.carousel-index');
    },
    addEvent : function () {
        var that = this;
    },
    carousel : function () {
        if(this.$carousel.length) {
            var autoPlay = this.$carousel.data('autoplay') == false ? false : true;
            this.$carousel.owlCarousel({
                slideSpeed : 300,
                paginationSpeed : 400,
                singleItem:true,
                autoPlay: autoPlay,
                pagination:true,
                navigation : false
            });
        }
    }
};
$(document).ready(function () {
    Index.init();
});