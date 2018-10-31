<style>

</style>
<div class="tpl works" id="_worksSiteConnect">
  <div class="c-header">
    <ul>
      <li>项目名称：查询网站是否可以访问</li>
      <li>开发语言：PHP</li>
      <li>开发用时：≈2小时</li>
    </ul>
    <div class="bg"></div>
  </div>
  <div class="c-body">
    <p class="text">前几天公司指派小任务，给我一堆链接，让我看看是否能正常访问，和里面的按钮是否能正常点击，所以直接做了个小程序。</p>
    <img src="./images/siteConnect_1.gif">
    <p class="text">不过它只能测试是否能正常访问，按钮是点击不了的。原理是CURL请求网站返回状态码，根据状态码判断是否能正常访问。</p>
    <p class="text">10月30日更新：同时显示域名对应的IP地址，并添加了手动更新按钮。</p>
    <img src="./images/siteConnect_2.gif">
    <p class="text">原来PHP自带根据域名查询IP的函数，贼jer方便。</p>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_worksSiteConnect").mCustomScrollbar({
    axis:'y'
  });

  _hmt.push(['_setPageTag', '5343', '作品页']);
}).attr('title','查询网站是否可以访问'+S.title);
</script>
