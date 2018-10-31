<style>

</style>
<div class="tpl works" id="_worksWhoisRed">
  <div class="c-header">
    <ul>
      <li>项目名称：查询域名到期时间</li>
      <li>开发语言：PHP</li>
      <li>开发用时：≈3小时</li>
    </ul>
    <div class="bg"></div>
  </div>
  <div class="c-body">
    <p class="text">公司指派小任务，给我了几个管理域名的账号，检查域名的到期时间，因为一个个的看太麻烦了，不同管理账号还要切换登录。</p>
    <img src="./images/whoisRed.gif">
    <p class="text">这个是用网上找的一个PHP的Whois查询函数，获取到结果后把到期时间读取出来。而且已查询的域名会保存到本地json文件中，下次访问会显示最后一次更新的结果。</p>
    <p class="text">10月30日更新：双击页面可以自动刷新全部了。</p>
    <div class="bg"></div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_worksWhoisRed").mCustomScrollbar({
    axis:'y'
  });

  _hmt.push(['_setPageTag', '5343', '作品页']);
}).attr('title','查询域名到期时间'+S.title);
</script>
