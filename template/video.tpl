<style>
#_video
{
  overflow-y:auto;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_video .v-all ul #videoBox
  {
    margin-bottom:30px;
    height:500px;
    border-radius:5px;
    overflow:hidden;
  }
  #_video .v-all
  {
    margin:30px auto;
    width:700px;
  }
  #_video #videoList
  {
    padding:30px 0;
    border-radius:10px;
  }
  #_video .v-all ul #videoBox .v-bg p::before
  {
    width:60px;
    height:60px;
  }
}
@media screen and (max-width: 640px)
{
  #_video .v-all ul #videoBox
  {
    height:240px;
  }
  #_video .v-all
  {
    width:100%;
  }
  #_video #videoList
  {
    padding:10px 0;
  }
  #_video .v-all ul #videoBox .v-bg p::before
  {
    width:30px;
    height:30px;
  }
}
#_video .videos
{
  position:relative;
}
#_video .v-all ul #videoBox
{
  position:relative;
  width:100%;
}
#_video .v-all ul #videoBox .v-bg
{
  position:absolute;
  top:0;left:0;
  width:100%;
  height:100%;
  background-color:#CCC;
  opacity:0.9;
}
#_video .v-all ul #videoBox .v-bg p
{
  position:absolute;
  top:10%;left:5%;
  width:90%;
  height:60%;
  border-radius:5px;
  background-color:#999;
}
#_video .v-all ul #videoBox .v-bg p::after
{
  content:'';
  position:absolute;
  bottom:-30%;right:0;
  width:88%;
  height:20%;
  border-radius:5px;
  background-color:#888;
}
#_video .v-all ul #videoBox .v-bg p::before
{
  content:'';
  position:absolute;
  bottom:-30%;left:0;
  border-radius:100%;
  background-color:#777;
}
#_video .v-all ul #videoBox .v
{
  position:absolute;
  top:0;left:0;
  width:100%;height:100%;
}
#_video .v-all ul #videoBox .video
{
  overflow:hidden;
}
#_video #videoList
{
  position:relative;
  overflow:hidden;
}
#_video #videoList p
{
  height:50px;
}
#_video #videoList p a
{
  height:50px;
  line-height:50px;
  color:#FFF;
  font-size:30px;
  text-align:center;
  display:block;
}
</style>
<div class="tpl" id="_video">
  <div class="videos">
    <div class="v-all">
      <ul>
        <li id="videoBox">
          <div class="v-bg">
            <p></p>
          </div>
          <div class="v">
            <iframe class="video" height="100%" width="100%" src="https://player.bilibili.com/player.html?aid=8521956&cid=18048077&page=2" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"></iframe>
          </div>
        </li>
        <li id="videoList">
          <p><a v-data="jpinput" href="javascript:;">人型自走输入法</a></p>
          <p><a v-data="getUrl" href="javascript:;">一键获取专栏内的所有网址</a></p>
          <p><a v-data="switch" href="javascript:;">Switch关灯工具</a></p>
          <p><a v-data="jianjie" href="javascript:;">B站最骚简介 v3.0</a></p>
          <p><a v-data="sync" href="javascript:;">网页收藏、同步</a></p>
          <p><a href="http://space.bilibili.com/2198461/#/">更多视频</a></p>
          <div class="bg"></div>
        </li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script>
var videos={
  'jpinput': ['8521956','18048077'],
  'switch': ['18696545','30496282'],
  'jianjie': ['27739145','47883573'],
  'sync': ['23280155','38773233'],
  'getUrl': ['25648765','43741264']
};
$(document).ready(function(){
  if(!S.isPhone) $("#_video").mCustomScrollbar({
    axis:'y'
  });
  $('#_video #videoList p a').click(function(){
    var vName = $(this).attr('v-data');
    if(vName != undefined)
    {
      $("#_video").mCustomScrollbar('scrollTo', 'top');
      $('.v-all ul #videoBox .v .video').fadeOut(function(){
        $(this).remove();
        $('.v-all ul #videoBox .v').html('<iframe class="video" height="100%" width="100%" src="https://player.bilibili.com/player.html?aid=' + videos[vName][0] + '&cid=' + videos[vName][1] + '&page=2" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"></iframe>');
      });
    }
  });
  setTimeout(function(){
  }, 0);
}).attr('title', '视频们' + S.title);
</script>
