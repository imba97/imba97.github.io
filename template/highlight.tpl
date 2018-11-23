<style>
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_highlight .t,#_highlight .c
  {
    width:600px;
  }
}
@media screen and (max-width: 640px)
{
  #_highlight .t,#_highlight .c
  {
    width:90%;
  }
}

#_highlight
{
  overflow-y:auto;
}

#_highlight a
{
  margin:0 3px;
  padding:0 5px;
  color:#600;
  font-size:20px;
  background-color:#ffffff;
  border-radius:3px;
}
#_highlight .t,#_highlight .c
{
  position:relative;
  margin:30px auto;
  padding:10px;
  line-height:30px;
  border-radius:10px;
  overflow:hidden;
  box-sizing:border-box;
}
#_highlight .t p,#_highlight .c p
{
  color:#FFF;
}
#_highlight .c .ct
{
  margin-bottom:10px;
  font-size:30px;
}
</style>
<div class="tpl" id="_highlight">

<div class="t">
  <p>用了个新插件“highlight.js”，就是下面的代码高亮，这个页面提供释放并留作纪念。你可以去<a href="https://highlightjs.org/" target="_blank">highlightjs官网</a>下载。</p>
<div class="bg"></div>
</div>

<div class="c">
  <p class="ct">HTML</p>
  <p>为了方便，改进了一下，所以HTML内容不是很多，只是写了一个放入代码的容器。</p>
<div class="bg"></div>
</div>

<div class="code" data-code="html">
&lt;div class=&quot;code&quot; data-code=&quot;html&quot;&gt;&lt;/div&gt;
</div>

<div class="c">
  <p class="ct">javaScript</p>
  <p>将{{code}}替换成要显示的代码，并将pre标签放入容器。pre标签的作用可以让空格、换行等原本隐藏的格式显示出来。</p>
<div class="bg"></div>
</div>

<div class="code" data-code="javascript">
var codeReg = '&lt;pre&gt;{{code}}&lt;/pre&gt;';

$('.code').each(function(){
var code = $.trim($(this).html());
var name = $(this).attr('data-code');
var re_code = codeReg.replace(/{{code}}/g, code);
$(this).html(re_code).addClass(name);

hljs.highlightBlock($(this)[0]);
});
</div>

<div class="c">
  <p class="ct">CSS</p>
  <p>对这个容器进行了简单的装饰。</p>
<div class="bg"></div>
</div>

<div class="code" data-code="css">
.code
{
  position:relative;
  margin:5px auto;
  padding:1% 3%;
  box-sizing:border-box;
}
.code::before
{
  content:'';
  position:absolute;
  top:0;left:0;
  width:1%;
  height:100%;
  background-color:#CCC;
}
</div>

<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_highlight").mCustomScrollbar({
    axis:'y'
  });
  $.code();
}).attr('title','代码语法高亮插件'+S.title);
</script>
