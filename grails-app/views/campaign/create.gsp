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
	<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>


	<title>jQuery UI Datepicker - Default functionality</title>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/themes/south-street/jquery-ui.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
	<script>
		$(function() {
            $( "#dueDateCampaign" ).datepicker({dateFormat: 'yy-mm-dd 00:00:00 COT'});
			$( "#dueDateCampaign" ).datepicker({minDate: 2});
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
                                <img src="${resource(dir: 'images',file: 'logotipo.png')}" class="img-responsive" alt="Conxole Admin" align="top" />
                            </center>
                        </div>
                        <br>
                    </div>
                    <div class="panel-body">
                        <g:uploadForm controller="campaign" action="register" accept-charset="UTF-8" role="form" class="form-signup">

                            <div class="row">
                                <g:if test="${!hasErrors(field: 'campaignName','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                                        <g:textField id="campaignName" class="form-control" name="campaignName"  placeholder="Nombre"></g:textField>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                                        <g:textField id="campaignName" class="form-control "  name="campaignName"  placeholder="Nombre"></g:textField>
                                        <label class="control-label list-group-item-danger img-rounded">Nombre entre 3-20 caracteres</label>
                                    </div>
                                </g:else>
                            </div>

                            <div class="row">
                                <g:if test="${!hasErrors(field: 'description','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                                        <g:textField id="description" class="form-control" name="description"  placeholder="Descripcion de tu PROMO"></g:textField>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                                        <g:textField id="description" class="form-control "  name="description"  placeholder="Descripcion"></g:textField>
                                        <label class="control-label list-group-item-danger img-rounded">Nombre entre 3-20 caracteres</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <h4 style="text-align: center">Fecha de creacion</h4>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'creationDateCampaign','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: center">
                                        <g:datePicker name="creationDateCampaign" id="creationDateCampaign" class="form-control" value="${new Date()}"  noSelection="['':'-Choose-']"/>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                                        <g:datePicker name="creationDateCampaign" id="creationDateCampaign" class="form-control" value="${new Date()}" noSelection="['':'-Choose-']"/>
                                        <label class="control-label list-group-item-danger img-rounded">message.properties</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <h4 style="text-align: center">Fecha de duracion</h4>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'dueDateCampaign','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: center">
                                        <g:datePicker name="dueDateCampaign" id="dueDateCampaign" class="form-control" value="${new Date()}" noSelection="['':'-Choose-']"/>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                                        <g:datePicker name="dueDateCampaign" id="dueDateCampaign" class="form-control" value="${new Date()}"  noSelection="['':'-Choose-']"/>
                                        <label class="control-label list-group-item-danger img-rounded">Fecha invalida</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'point','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                                        <g:field type="number"  id="point" class="form-control" name="point"  placeholder="Puntos de la PROMO"></g:field>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                                        <g:field type="number" id="point" class="form-control "  name="point"  placeholder="Puntos de la PROMO"></g:field>
                                        <label class="control-label list-group-item-danger img-rounded">Puntos mayor que 1</label>
                                    </div>
                                </g:else>
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


                            <g:submitButton name="summit" type="submit" value="Crear recompensa" class="btn btn-lg btn-success btn-block" tabindex="-1"></g:submitButton>
                        </g:uploadForm>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
