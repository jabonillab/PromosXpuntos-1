<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>PROMOXPUNTOS register-campaign</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.min.css')}">
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'parallax.css')}">
	<script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
	<script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
	<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/qweqq/assets/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="/qweqq/assets/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/qweqq/assets/apple-touch-icon-retina.png">

    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.min.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'signin.css')}">
    <script src="/qweqq/assets/jquery/jquery-1.11.1.js?compile=false" type="text/javascript" >
    </script><script src="/qweqq/assets/jquery.js?compile=false" type="text/javascript" ></script>
    <script src="/qweqq/assets/application.js?compile=false" type="text/javascript" ></script>

	<title>jQuery UI Datepicker - Default functionality</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script>
		$(function() {
			$( "#dueDateCampaign" ).datepicker({minDate: 2});
			$( "#creationDateCampaign" ).datepicker({minDate: 0});
		});
	</script>

</head>

<body>
<div class="container ">
    <div id="create-campaign" role="main">
        <div class="row vertical-offset-100">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div style="text-align:right;">
                        <FORM>
                            <INPUT Type="BUTTON" Value="Return Profile" class="btn btn-info" Onclick="window.location.href='${createLink(controller: 'user')}'">
                        </FORM>
                    </div>
                    <div  class="heading">
                        <div  class="heading">
                            <center>
                                <img src="${resource(dir: 'images',file: 'asdasd.jpeg')}" class="img-responsive" alt="Conxole Admin" align="top" />
                            </center>
                        </div>
                        <br>
                    </div>
                    <div class="panel-body">
                        <form class="form-signin" action="/qweqq/campaign/save" method="post" >
                            <fieldset class="form">


                                <div class="fieldcontain  required">
                                    <label for="campaignName" class="sr-only">
                                        Nombre de la recompensa
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="text" name="campaignName" class="form-control" placeholder="Nombre de la recompensa" required="" value="" id="campaignName" />
                                </div>

                                <div class="fieldcontain  required">
                                    <label for="description" class="sr-only">
                                        Descripcion
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="text" name="description" class="form-control" placeholder="Descripcion" required="" value="" id="description" />
                                </div>

                                <br>
                                <g:if test="${flash.message == "picture"}">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded">
                                            <legend>Imagen de la PROMO</legend>
                                            <label for="picture">PROMO</label>
                                            <input type="file" name="picture"/>
                                            <div style="font-size:0.8em; margin: 1.0em;">
                                                <p>Tu imagen de la promocio es opcional, pero como sus clientes se enteraran de tus promociones sin una buena imagen!.</p>
                                            </div>
                                        </div>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded avatar-loader">
                                            <legend>Imagen de la PROMO</legend>
                                            <label for="picture">PROMO</label>
                                            <input type="file" name="picture" id="picture" />
                                            <div style="font-size:0.8em; margin: 1.0em;">
                                                <p>Tu imagen de la promocion es opcional, pero como tus clientes se enteraran de tus promociones sin una buena imagen!</p>
                                            </div>
                                        </div>
                                    </div>
                                </g:else>
                                <br>


                                <div class="fieldcontain  required">
                                    <label for="creationDate" class="sr-only">
                                        Fecha de creacion
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="text" name="creationDate" class="form-control" placeholder="Fecha de creacion" required="" value="date.struct" id="creationDate" />
                                </div>

                                <div class="fieldcontain  required">
                                    <label for="dueDate" class="sr-only">
                                        Duracion de la promo
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="text" name="dueDate" class="form-control" placeholder="Duracion de la promo" required="" value="date.struct" id="dueDate" />
                                </div>

                                <div class="fieldcontain  required">
                                    <label for="point" class="sr-only">
                                        Puntos
                                        <span class="required-indicator">*</span>
                                    </label>
                                    <input type="number" name="point" class="form-control" placeholder="Puntos" min="1" required="" value="" id="point" />

                                </div>
                            </fieldset>
                            <fieldset>
                                <input type="submit" name="create" class="btn btn-lg btn-primary btn-block" value="Registrarse" id="create" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
