/**
 * Created by Administrator on 2018/1/24-0024.
 */
var customerUrl = "/admin/member/",
    customer = {};
layui.use(['form','upload'], function(){
    var form = layui.form,
        layer = layui.layer,
        upload = layui.upload;


    var uploadInst = upload.render({
        elem: '#test1' //绑定元素
        ,url: '/customerUrl/' //上传接口
        ,done: function(res){
            //上传完毕回调
            // 如果上传失败
            if(res.code > 0){
                return layer.msg('上传失败!');
            }else {
                $("#covers").val(res.path);
                return layer.msg('上传成功！');
            }
        }
        ,error: function(){
            //请求异常回调
            //演示失败状态，并实现重传
            var demoText = $('#coverText');
            demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
            demoText.find('.demo-reload').on('click', function(){
                uploadInst.upload();
            });
        }
    });

});