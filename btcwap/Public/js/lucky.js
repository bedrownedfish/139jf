///**
// * Created by 6 on 2016/5/31.
// */
//CanvasRenderingContext2D.prototype.sector = function (x, y, radius, sDeg, eDeg) {
//    // 初始保存
//    this.save();
//    // 位移到目标点
//    this.translate(x, y);
//    this.beginPath();
//    // 画出圆弧
//    this.arc(0,0,radius,sDeg, eDeg);
//    // 再次保存以备旋转
//    this.save();
//    // 旋转至起始角度
//    this.rotate(eDeg);
//    // 移动到终点，准备连接终点与圆心
//    this.moveTo(radius,0);
//    // 连接到圆心
//    this.lineTo(0,0);
//    // 还原
//    this.restore();
//    // 旋转至起点角度
//    this.rotate(sDeg);
//    // 从圆心连接到起点
//    this.lineTo(radius,0);
//    this.closePath();
//    // 还原到最初保存的状态
//    this.restore();
//    return this;
//}
//$(function(){
//    var ctx = document.getElementById('luckyPanel').getContext('2d');
//    ctx.canvas.width = 200;
//    ctx.canvas.height = 200;
//    ctx.sector(100,100,50,0,Math.PI/180*230).fill();
//    var deg = Math.PI/180;
//    ctx.sector(100,100,80,0*deg,60*deg).fill();
//    ctx.fillStyle="#f00";
//    ctx.sector(100,100,80,60*deg,120*deg).fill();
//    ctx.fillStyle="#0f0";
//    ctx.sector(100,100,80,120*deg,180*deg).fill();
//    ctx.fillStyle="#00f";
//    ctx.sector(100,100,80,180*deg,240*deg).fill();
//    ctx.fillStyle="#789";
//    ctx.sector(100,100,80,240*deg,300*deg).fill();
//    ctx.fillStyle="#abcdef";
//    ctx.sector(100,100,80,300*deg,360*deg).fill();
//});
//

$(function(){
    var i = 1;
    var luckyPanelCtrlDom = $('.luckyPanelCtrl');

    doSetPresent = function(){
        var setPresent = function(){
            if(i == 13){
                i = 1;
            }
            luckyPanelCtrlDom.find('>div').removeClass('choosenPresent');
            luckyPanelCtrlDom.find('#present' + i).addClass('choosenPresent');
            i++;
        };
        var interval = setInterval(setPresent, 50);

        window.setTimeout(function(){
            window.clearInterval(interval);
        }, 1250);
    }

});
