<style>

</style>
<div class="tpl works" id="_worksGetUrl">
  <div class="c-header">
    <ul>
      <li>项目名称：一键获取专栏网址</li>
      <li>开发语言：JavaScript</li>
      <li>开发用时：≈6小时</li>
    </ul>
    <div class="bg"></div>
  </div>
  <div class="c-body">
    <p class="text">这是一个可以获取B站专题内URL的小程序。</p>
    <img src="./images/getUrl_1.jpg">
    <p class="text">至于为什么要做它，因为B站专题内发表的文章，只要设置了禁止转载，就会禁止选取复制，打开文字性的链接就会很头疼。</p>
    <p class="text">这个程序可以一键获取文章内所有文字性链接，自动过滤图片链接。</p>
    <p class="text">效果是这样的：</p>
    <img src="./images/getUrl_2.gif">
    <p class="text">你可以点击<a href="https://www.bilibili.com/read/cv715612/">此处</a>查看原文章与视频。</p>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_worksGetUrl").mCustomScrollbar();
}).attr('title','一键获取专栏网址'+S.title);
</script>
