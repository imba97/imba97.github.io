<style>
#_Btools
{
  position: relative;
}
.content
{
  position: absolute;
  width: 80%;
  height: 50%;
  border-radius: 10px;
  overflow: hidden;
}
.content .icon
{
  margin: 30px auto;
  width: 30%;
  height: 100%;
  background: transparent url('http://i2.bvimg.com/543178/09c1d9fc854619da.png') no-repeat scroll 0 0 / 100% auto;
}
.text,.website
{
  margin: 20px 0;
  text-align: center;
}
.text
{
  color: #CCC;
  font-size: 14px;
}
.website
{
  color: #028ebd;
  font-weight: 700;
  font-size: 20px;
}
</style>
<div class="tpl" id="_Btools">
  <div class="content">
    <div class="icon"></div>
    <p class="text">一款Chrome插件</p>
    <p class="text"><a class="website" href="http://btools.cc">【进入官网】</a></p>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if($('.content').outerWidth() > 600) {
    $('.content').css({
      'width': 600
    });
  }
  $('.content').css({
    'top': (S.tpl_h / 2) - ($('.content').outerHeight() / 2),
    'left': (S.tpl_w / 2) - ($('.content').outerWidth() / 2)
  });
  $('.content .icon').css({
    'height': $('.content .icon').width()
  });
}).attr('title', 'Btools' + S.title);
</script>
