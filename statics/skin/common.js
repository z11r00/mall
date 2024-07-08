//阅读全文
$(function(){
	if(document.getElementById('iwrap')){
		var slideHeight = 7500;
	}else{
		var slideHeight = 8000;      //内容高度超过这个像素值,就启动折叠
	}
	var defHeight = $('#wrap').height();
	if(defHeight > slideHeight){
		$('#gradient').fadeIn();
		$('#wrap').css('height' , slideHeight + 'px');
		$('#read-more').append('<a class="layui-btn">阅读全文</a>');
		$('#read-more a').click(function(){
			var curHeight = $('#wrap').height();
			if(curHeight == slideHeight){
				$('#wrap').animate({
				  height: "100%"
				}, "normal");
				$('#read-more a').html('折叠隐藏');
				$('#gradient').fadeOut();
			}else{
				$('#wrap').animate({
				  height: slideHeight
				}, "normal");
				$('#read-more a').html('阅读全文');
				$('#gradient').fadeIn();
			}
			return false;
		});		
	}
	$('.sp_nav').click(function () {
		$('.sp_nav').toggleClass('sp_nav_se');
		$('.layui-nav').toggleClass('nav_show');
	});
});



$(function(){
    $('a[href*=#],area[href*=#]').click(function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var $target = $(this.hash);
            $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');
            if ($target.length) {
                var targetOffset = $target.offset().top;
                $('html,body').animate({
                    scrollTop: targetOffset
                },200);
                return false;
            }
        }
    });    
});
!function(){
    var util = layui.util,layer = layui.layer,flow = layui.flow,element = layui.element;
	var winUrl = location.search;
	var gzhQrcode = "./statics/skin/images/gzh_qrcode.jpg";
	if (winUrl) gzhQrcode = "../statics/skin/images/gzh_qrcode.jpg";

    flow.lazyimg();
    util.fixbar({
        // bar1: '',
        bar2: ''
        ,click: function(type){
          if(type === 'bar2'){
            layer.open({
					type: 1
					,title: false //不显示标题栏
					,closeBtn: true
					,area: '300px;'
					,shade: 0.5
					,id: 'LAY_layuipro' //设定一个id，防止重复弹出
				// 	,btn: ['点击联系站长']
					,btnAlign: 'c'
					,moveType: 1 //拖拽模式，0或者1
					,content: '<div style="padding: 50px 20px; line-height: 22px; background-color: #393D49; color: #fff;"><div style="text-align: center;padding-bottom: 20px;">有问题咨询可以在“公众号”上找到我</div><img src='+gzhQrcode+' width="260px"/><br></div>'
					,success: function(layero){
						var btn = layero.find('.layui-layer-btn');
						btn.find('.layui-layer-btn0').attr({
							href: 'http://wpa.qq.com/msgrd?v=3&uin=1302357281&site=www.dkewl.com&menu=yes'
							,target: '_blank'
						});
					}
				});
					} 
				// 	else if(type === 'bar1') {
    //     		location.href = '/page/vip';
    //   		}
        }
    });
}();

//提示框
function dr_tips( msg, code, time) {
    if (!time) {
        time = 3000;
    }
    var tip = '<i class="layui-icon"></i>';
    if (code == 1) {
        tip = '<i class="layui-icon"></i>';
    } else if (code == 0) {
        tip = '<i class="layui-icon">ဇ</i>';
    }
    layer.msg(tip+'  '+msg);
}
//轮播
layui.use('carousel', function(){
  	var carousel = layui.carousel;
  	//建造实例
  	carousel.render({
    elem: '#thumb'
    ,width: '102%' //设置容器宽度
	,height: '100%'
    ,arrow: 'always' //始终显示箭头
    ,indicator: 'none' //切换动画方式
  });
});
//相册层
layer.photos({
  photos: '#thumb'
  ,anim: 5
});
//代码修饰器
layui.code({
  	elem: 'pre', //默认值为.layui-code
	about: false
});
//提示层
layui.use('layer', function() {
    var layer = layui.layer;
    $(".show-title h1 i").hover(function() {
        if ($(this).text() != '') {
            layer.tips($(this).text(), $(this).parent("h1"), { area: ["auto"], tips: [3, '#5fb878'] });
        }
    }, function() {
        layer.closeAll();
    });


});
function download() {
    layer.open({
		type: 1,
		anim: 2,//弹出动画
        skin: 'layui-layer-rim', //样式类名
		title:false,
        area: ['480px', ''], //宽高
		resize:false,//是否允许拉伸
        content: $('#download'),
		end: function(){
			 $("#download").hide();
  		}
    });
};

//搜索url
$(function() {
	$(".searchBtn").click(function() {
		return;
        var a = $(".searchInput");
        if ("" == a.val().replace(/\s/, "")) return layer.alert("\u8bf7\u8f93\u5165\u641c\u7d22\u5173\u952e\u8bcd",{icon: 0});
        location.href = "/search/keyword-" + a.val()
    });
});
$(".search-inp").on("keypress", function(a) {
	return;
    13 == (a.keyCode ? a.keyCode : a.which ? a.which : a.charCode) && $(this).closest(".searchBox").find(".searchBtn").click()
});
//滚动
function autoScroll(obj){
	$(obj).find("ul").animate({ 
		marginTop : "-58px"
	},500,function(){
		$(this).css({marginTop : "0px"}).find("li:eq(0),li:eq(1)").appendTo(this);
	})
}
function autoScroll2(obj){
	$(obj).find("ul").animate({ 
		marginTop : "-40px"
	},500,function(){
		$(this).css({marginTop : "0px"}).find("li:eq(0)").appendTo(this);
	})
}

$(function(){ 
	setInterval('autoScroll(".layui-show.index-gun")',3000);
	setInterval('autoScroll2(".show-gun")',2000);
});