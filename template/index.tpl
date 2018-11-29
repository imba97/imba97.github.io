<style>
#_index
{
  overflow-y:auto;
  overflow-x:hidden;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_index .profile
  {
    position:relative;
    top:5%;left:5%;
    width:210px;
    height:210px;
    border-radius:105px;
    background-color:#CCC;
  }
  #_index .profile::after
  {
    content:'';
    position:absolute;
    top:5px;left:5px;
    background:transparent url('https://q1.qlogo.cn/g?b=qq&nk=1149101824&s=640') no-repeat scroll 0 0 / 100% auto;
    width:200px;
    height:200px;
    border-radius:100px;
  }
  #_index .wm
  {
    position:absolute;
    top:0;left:200px;
    width:800px;
    height:300px;
  }
  #_index .msg
  {
    position:absolute;
    top:100px;right:200px;
    padding:20px;
    border-radius:10px;
    overflow:hidden;
    color:#FFF;
  }
}
@media screen and (max-width: 640px)
{
  #_index .profile
  {
    position:relative;
    top:0;left:0;
    background:transparent url('http://q1.qlogo.cn/g?b=qq&nk=1149101824&s=640') no-repeat scroll 0 0 / 100% auto;
    width:100%;
    height:300px;
  }
  #_index .wm
  {
    position:absolute;
    top:300px;left:0;
    width:100%;
    height:100%;
  }
  #_index .msg
  {
    position:absolute;
    top:0;left:0;
    margin-bottom: 50px;
    padding:5px;
    color:#FFF;
  }
}

#_index .msg p
{
  margin:10px 0;
}

</style>
<div class="tpl" id="_index">
  <div class="profile">
    <div class="wm">
      <div class="msg">
        <p>各位好，这里是我新开的可能随时弃坑的坑</p>
        <p>定位是个人网站，第一次尝试很多技术，无刷新、自适应等</p>
        <p>基本找找教程然后瞎做的，无刷新是用hash，也就是锚点来判断，让网页中间的#main加载不同的页面文件，直接用的jQuery的load()函数</p>
        <p>还用了localStorage本地储存把加载过的模板存到本地，加快下次加载速度（大概有用吧）</p>
        <div class="bg"></div>
      </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function(){

  _hmt.push(['_setPageTag', '5341', '主页']);
}).attr('title', '个人主页' + S.title);
</script>
