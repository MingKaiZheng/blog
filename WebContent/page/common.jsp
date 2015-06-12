<link rel="stylesheet" href="../plugin/responsive-nav/styles.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js">
</script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js">
</script>
<script src="../plugin/responsive-nav/responsive-nav.min.js">
</script>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>
<style>
  .panel a{ display:block; } .panel .list-group-item:hover { background-color:#F5F5F5; } .blog-list {float: left; width:
  100%;} .panel-default>.panel-heading {background-image:none;}
</style>
<base href="${basePath}">
