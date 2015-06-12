<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>
      Self Devourer
    </title>
    <%@ include file="common.jsp"%>
  </head>
  <body>
    <div id="nav" role="navigation" class="nav-collapse">
      <ul>
        <li class="active">
        <a href="#">
          Blog
        </a>
      </li>
      <li>
      <a href="/nest">
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
  <div class="blog-list">
    <div class="col-md-offset-2 col-md-8 col-sm-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">
            Self Devourer
          </h3>
        </div>
        <ul class="list-group">
          <li class="list-group-item">
          <a href="#">
            DEMO
          </a>
        </li>
      </ul>
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
