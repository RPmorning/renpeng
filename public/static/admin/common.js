/**
 * Created by renpeng on 2017/3/8.
 */
/**
 * Created by renpeng on 2017/3/8.
 */
var common = {};
// layui 全局配置
layui.config({
    version: true, // 一般用于更新模块缓存，默认不开启。设为true即让浏览器不缓存。也可以设为一个固定的值，如：201610
    debug: true, // 用于开启调试模式，默认false，如果设为true，则JS模块的节点会保留在页面
    base: '' // 设定扩展的Layui模块的所在目录，一般用于外部模块扩展
});


// 加载树形菜单
layui.use(['layer','element', 'form','upload'], function(){
    var element = layui.element,
    form = layui.form;
    layer = layui.layer;
    common.clearCache = function () {
        $.getJSON("/admin/index/clearCache", function (result) {
            layer.msg(result.msg, {time:2000}, function () {
                if(result.code) window.location.reload();
            });
        });
    };
    common.updatePassword = function () {
        $.getJSON("/admin/member/password", function (result) {
            layer.open({
                type: 1,
                title: result.msg,
                area: ['400px', '300px'],
                shadeClose: true,
                content: result.data
            });
        });
    };

    common.logout = function () {
        $.getJSON("/admin/passport/logout", function (result) {
            layer.msg(result.msg, {time:2000}, function () {
                if(result.code) window.location.reload();
            });
        });
    };


    form.on('submit(updatePassword)', function(data){
        $.post("/admin/member/updatePassword", data.field,  function (result) {
            layer.msg(result.msg, {time:2000}, function () {
                if(result.code) window.location.replace(result.url);
            });
        });
        return false;
    });

    //导航的hover效果、二级菜单等功能，需要依赖element模块

    // 监听导航点击
    // element.on('nav(test)', function(elem){
    //
    // })

    common.detailed = function (id,type) {
        layer.open({
            type: 2,
            title: '文章详情',
            area: ['800px', '650px'],
            shadeClose: true,
            maxmin: true,
            content: '/admin/article/' + 'detailed/id/'+id+'/type/'+type, //这里content是一个普通的String
            end: function () {
                location.reload()
            }
        });
    }
});
