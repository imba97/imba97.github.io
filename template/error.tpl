<style>
#_error .title
{
  margin-top:10px;
  font-size:50px;
  text-align:center;
  color:#F66;
}
#_error .content
{
  position:relative;
  margin:30px auto 0 auto;
  padding:20px 20px 50px 20px;
  width:80%;
  min-width:300px;
  max-width:500px;
  height:auto;
  border-radius:20px;
  overflow:hidden;
}
#_error .msg
{
  margin:30px auto 0 auto;
  width:100%;
  font-size:24px;
  color:#FFF;
}
#_error .info
{
  margin:20px auto 0 auto;
  width:100%;
  color:#FFF;
}
#_error .info li
{
  width:90%;
}
</style>
<div class="tpl" id="_error">
  <div class="content">
    <p class="title">ERROR</p>
    <p class="msg">可能的原因：</p>
    <ol class="info">
      <li><span id="tempname"></span>模板文件不存在。</li>
      <li>请求失败或浏览器缓存，清除缓存刷新重试</li>
    </ol>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(S.tpl != null)
  {
    $('#tempname').text('“' + S.tpl + '”');
  }
}).attr('title', 'fa♂生了错误 ' + S.tpl + S.title);
</script>
