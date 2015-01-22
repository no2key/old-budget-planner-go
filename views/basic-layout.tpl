<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/static/img/ favicon.ico">

    <title>Budget Planner</title>

    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
	<!-- Latest compiled and minified JavaScript -->

    <!-- Custom styles for this template -->
    <link href="/static/css/dashboard.css" rel="stylesheet">

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Budget Planner</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        {{if .InSession}}
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/">Dashboard</a></li>
            <li><a href="/settings">Settings</a></li>
            <li><a href="/user/profile">Profile</a></li>
            <li><a href="/help">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right" role="search">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
          {{else}}
          <form class="navbar-form navbar-right" method="post" action="/user/login/home">
            <div class="form-group">
                <input type="text" class="form-control" name="email" placeholder="Email address" autofocus>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-default">Sign In</button>
            <a href="/user/register" class="btn btn-default">Register</a>
        </form>
		{{end}}
        </div>
      </div>
    </nav>

    <div class="container-fluid">

{{.LayoutContent}}
{{if .InSession}}
	{{.Sidebar}}
{{end}}

	</div>
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="/static/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/static/js/ie10-viewport-bug-workaround.js"></script>
    <script src="/static/js/widgets.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </body>
</html>
