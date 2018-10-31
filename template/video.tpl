<style>
#_video
{
  overflow-y:auto;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_video .v-all ul li
  {
    height:400px;
  }
  #_video .v-all
  {
    margin:30px auto;
    width:700px;
  }
  #_video .v-all ul li
  {
    margin:10px;
    border-radius:5px;
    overflow:hidden;
  }
}
@media screen and (max-width: 640px)
{
  #_video .v-all ul li
  {
    height:240px;
  }
  #_video .v-all
  {
    width:100%;
  }
}
#_video .videos
{
  position:relative;
}
#_video .v-all ul li
{
  position:relative;
  width:100%;
  list-style:none;
}
#_video .v-all ul li .video
{
  overflow:hidden;
}
</style>
<div class="tpl" id="_video">
  <div class="videos">
    <div class="v-all">
      <ul>
        <li>
          <!-- <embed class="video" height="100%" width="100%" quality="high" allowfullscreen="true" type="application/x-shockwave-flash" src="//static.hdslb.com/miniloader.swf" flashvars="aid=&page=1" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash"></embed> -->
          <iframe class="video" height="100%" width="100%" src="https://player.bilibili.com/player.html?aid=27739145&cid=47883573&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"></iframe>
        </li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_video").mCustomScrollbar();
  $('#_video .v-all ul li').click(function(){
    $(this).animate({'margin-left':200,'opacity':0});
  });
}).attr('title','作品们'+S.title);
</script>
