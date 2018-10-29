<style>

</style>
<div class="tpl works" id="_worksJpinput">
  <div class="c-header">
    <ul>
      <li>项目名称：人型自走输入法</li>
      <li>开发语言：JavaScript</li>
      <li>开发框架：jQuery</li>
      <li>开发用时：≈30小时</li>
    </ul>
    <div class="bg"></div>
  </div>
  <div class="c-body">
    <p class="text">你可以用它在网页上进行日语输入，为电脑上没有日语输入法，或者不想切换系统输入法的人而设计。你可以将代码本体拖进收藏夹后点击使用。</p>
    <p class="text">有完善且不稳定的汉字输入：</p>
    <img src="./images/jpinput_1.gif">
    <p class="text">至于为什么说它不稳定，因为汉字输入原理是把输入的假名发给服务器，然后服务器的PHP使用CURL请求一个词典网站获得汉字，如果这个词典网站在以后的更新中禁止CURL请求或者词典网站凉凉都会导致汉字输入无法使用。</p>
    <p class="text">还有其他小功能，比如新版本提醒：</p>
    <img src="./images/jpinput_2.gif">
    <p class="text">新版本提醒实现原理只是AJAX请求发送给服务器，服务器获取数据库最新的版本号和更新内容并返回。</p>
    <p class="text">自动加载jQuery：</p>
    <img src="./images/jpinput_3.gif">
    <p class="text">这个没啥可说的，只是js控制动态加载</p>
    <p class="text">总体来说，因为现在可以输入汉字了，相对丰富了实用性。但缺点还是有的，只能在PC浏览器中使用、只能在允许加载外部JavaScript代码的网站中使用。</p>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_worksJpinput").mCustomScrollbar();
}).attr('title','人型自走输入法'+S.title);
</script>
