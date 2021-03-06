<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->


	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="${createLink(uri: '/')}"><asset:image src="logo2_v1.png" width="300" height="100" alt="Grails"/></a>
		<sec:ifNotLoggedIn>
					<g:link class="buttons" style="position: relative; left: 32em; bottom: 1.15em; text-decoration:none" controller="login">Ingresá</g:link>
					<g:link class="buttons" style="position: relative; left: 20em; bottom: 1.15em; text-decoration:none" controller="register">Registrate</g:link>
		</sec:ifNotLoggedIn>
		<sec:ifLoggedIn>
				<span style="margin: 1%; position: relative; bottom: 2.8em; left: 27em;" >
					Hola <g:link style="margin:0em" controller="user" action="show" id="${sec.loggedInUserInfo(field:"id")}"><sec:username/></g:link> |  <g:link controller='logout' style="margin:0em">Salir</g:link>
				</span>
		</sec:ifLoggedIn>
		
		</div>		
		<g:layoutBody/>
		<div class="footer" role="contentinfo"><p style="margin: 0px; color: rgb(238, 238, 238); text-align:center">TorneosYa 2015 - IDS Grupo 3</p></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
