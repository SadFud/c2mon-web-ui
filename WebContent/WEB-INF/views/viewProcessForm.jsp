<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>${title}</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap/bootstrap.css" />

<style type="text/css">
body {
  padding-top: 50px;
  padding-bottom: 40px;
}
</style>

</head>

<body>

  <div class="container">
    <div class="row">

      <ul class="breadcrumb">
        <li><a href="../">Home</a> <span class="divider"></span></li>
        <li>${title}</li>

        <sec:authorize ifNotGranted="ROLE_ANONYMOUS">
          <span class="pull-right">
            <a href="../j_spring_security_logout">Logout&nbsp;</a>
            <span class="glyphicon glyphicon-log-out"></span>
          </span>
        </sec:authorize>
      </ul>


      <div class="jumbotron">
        <h1>${title}</h1>
      </div>

      <c:url var="submitUrl" value="${formSubmitUrl}" />

      <form class="well form-inline" action="${submitUrl}" method="post">

        <select name="id" class="form-control">
          <c:forEach items="${processNames}" var="processName">
            <option>${processName}</option>
          </c:forEach>
        </select>
        <input class="btn btn-large btn-primary" type="submit" value="Submit">
      </form>

    </div>
    <!--/row-->

    <div class="row">
      <footer>
        <hr>
        <p>
          &copy; CERN
          <script type="text/javascript">
                      document.write(new Date().getFullYear())
                    </script>
        </p>
      </footer>
    </div>
  </div>
  <!--/.fluid-container-->

  <!-- Placed at the end of the document so the pages load faster -->
  <script src="../js/jquery/jquery.js"></script>
  <script src="../js/bootstrap/bootstrap.js"></script>

</body>
</html>

