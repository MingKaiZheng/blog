<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>
      鸦巢
    </title>
    <%@ include file="../common.jsp"%>
    <style>
      pre { font-family: Inconsolata, Consolas, "DEJA VU SANS MONO", "DROID SANS MONO", Proggy, monospace; font-size:
      75%; border: solid 1px lightgrey; background-color: Ivory; padding: 5px; line-height: 130%; margin-left: 10px;
      width: 95%;} code { font-family: Inconsolata, Consolas, "DEJA VU SANS MONO", "DROID SANS MONO", Proggy, monospace;
      font-size: 90% ; }
    </style>
  </head>
  <body>
    <div id="nav" role="navigation" class="nav-collapse">
      <ul>
        <li>
        <a href="/">
          Blog
        </a>
      </li>
      <li class="active">
      <a href="nest">
        鸦巢
      </a>
    </li>
    <li>
    <a href="#">
      简书
    </a>
  </li>
  <li>
  <a href="#">
    GitHub
  </a>
</li>
</ul>
</div>
<div class="main" role="main">
  <a href="#nav" class="nav-toggle">
    Menu
  </a>
  <div style="float:left; width:100%;">
    <div 
        class="panel-group col-md-offset-2 col-md-8 col-sm-12"
        id="accordion"
        role="tablist"
        aria-multiselectable="true">

      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <h4 class="panel-title">
            <a 
                data-toggle="collapse"
                data-parent="#accordion"
                href="#collapseOne"
                aria-expanded="true"
                aria-controls="collapseOne">

              HTML-BasePath
            </a>
          </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
          <div class="panel-body">
            <p>JSP获取BasePath的代码：</p>
            <pre>
<code>&lt;% String path = request.getContextPath(); String basePath = request.getScheme()+"://"
+request.getServerName()+":"+request.getServerPort()+path+ "/";
pageContext.setAttribute("basePath",basePath); %&gt;</code></pre>
            <p>&emsp;&emsp;HTML:<code>&lt;head&gt;</code>里加入<code>&lt;base href="${basePath}"&gt;</code>。加入这段代码后，所有的相对URI在请求前都会加上&lt;base&gt;里href的值。</p>
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="heading-2">
          <h4 class="panel-title">
            <a 
                data-toggle="collapse"
                data-parent="#accordion"
                href="#collapse-2"
                aria-expanded="false"
                aria-controls="collapse-2">
              CSS导入字体
            </a>
          </h4>
        </div>
        <div id="collapse-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-2">
          <div class="panel-body">
            <p>&emsp;&emsp;本来打算把Blog里所有文字都设定成下图这样，虽然很有格调但是看起来并不适应，所以暂时不打算用。另外最下的CSS代码是用来导入“Dancing Script”字体。</p>
            <img src="../../files/images/201506121021.png">
            <pre>
<code>&lt;style type ="text/css"%&gt; 
    @font-face { 
	    font-family: 'Dancing Script'; 
	    font-style: normal;
	    font-weight: 400; src:
	    url(http://fontstatic.useso.com/s/dancingscript/v6/DK0eTGXiZjN6yA8zAEyM2Ud0sm1ffa_JvZxsF_BEwQk.woff2)
	    format('woff2'); unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02C6, U+02DA, U+02DC, U+2000-206F,
	    U+2074, U+20AC, U+2212, U+2215, U+E0FF, U+EFFD, U+F000; 
	} 
&lt;/style&gt;</code></pre>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  var navigation = responsiveNav("#nav", {
    customToggle: ".nav-toggle",
    animate : true,
    transition : 200
    });
  </script>
</body>
</html>
