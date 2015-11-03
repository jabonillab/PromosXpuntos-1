<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PROMOXPUNTOS register-campaign</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.min.css')}">
	<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
	<meta charset="utf-8">
	<title>jQuery UI Datepicker - Default functionality</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script>
		$(function() {
			$( "#dueDate" ).datepicker({minDate: 2});
			$( "#creationDate" ).datepicker({minDate: 0});
		});
	</script>

</head>

<body>
<div class="container ">
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
						<div class="col-xs-12 col-sm-5 col-md-8 col-lg-offset-2" style="text-align: right">
							<p>Creation Date: <input type="text" id="creationDate"/></p>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: right">
							<p>Due Date:    <input type="text" id="dueDate" /></p>
						</div>
						<div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: right">
							<p>Points:    <input type="text" id="points" /></p>
						</div>
						<g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
					</g:uploadForm>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
