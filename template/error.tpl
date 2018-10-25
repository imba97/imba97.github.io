<style>
#_error .title
{
  margin:30px auto 0 auto;
  font-size:30px;
  text-align:center;
  color:#FFF;
}
#_error .msg
{
  margin:30px auto 0 auto;
  width:800px;
  font-size:24px;
  color:#FFF;
}
#_error .info
{
  margin:20px auto 0 auto;
  width:750px;
  color:#FFF;
}
</style>
<div class="tpl" id="_error">
  <p class="title">ERROR</p>
  <p class="msg">可能的原因：</p>
  <ol class="info">
    <li><span id="tempname"></span>模板文件不存在。</li>
    <li>请求失败，刷新重试</li>
  </ol>
</div>
<script>
$(document).ready(function(){
  if(S.tpl!=null)
  {
    $('#tempname').text('“'+S.tpl+'”');
  }
}).attr('title',S.tpl+' 错误 '+S.title);
</script>
