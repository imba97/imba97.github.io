<style>
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_index .profile
  {
    position:absolute;
    top:5%;left:25%;
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
    top:80px;left:80px;
    width:600px;
    height:300px;
  }
  #_index .msg
  {
    position:absolute;
    top:20px;left:150px;
    color:#FFF;
  }
}
@media screen and (max-width: 640px)
{
  #_index .profile
  {
    position:absolute;
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
    height:300px;
  }
  #_index .msg
  {
    position:absolute;
    top:0;left:0;
    padding:5px;
    color:#FFF;
  }
}

</style>
<div class="tpl" id="_index">
  <div class="profile">
    <div class="wm">
      <div class="msg">
        <p>这只是个普通的首页</p>
        <p>2323123123123</p>

        <p>2323123123123</p>
      </div>
      <div class="bg"></div>
    </div>
  </div>
</div>
<script>
$(document).ready(function(){

}).attr('title','个人主页'+S.title);
</script>
