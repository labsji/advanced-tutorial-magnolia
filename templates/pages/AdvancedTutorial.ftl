<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    [#-- For loading resources you can link them manualy (e.g. line bellow) --]
      [#-- <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources//AdvancedTutorial/webresources/css/bootstrap.css" media="all" /> --]
      [#-- <script src="${ctx.contextPath}/.resources//AdvancedTutorial/webresources/js/jquery.js"></script> --]
    [#-- or via theme --]
      [#-- [#assign site = sitefn.site()!] --]
      [#-- [#assign theme = sitefn.theme(site)!] --]
      [#-- [#list theme.cssFiles as cssFile] --]
      [#-- [/#list] --]
      [#-- [#list theme.jsFiles as jsFile] --]
      [#--   <script src="${jsFile.link}"></script> --]
      [#-- [/#list] --]
    [#-- or use resfn to load all css which match patern automatically (uncomment next line) or via theme --]
      [#-- ${resfn.css(["/AdvancedTutorial/.*.css"])!} --]

  </head>
  <body class="AdvancedTutorial ${cmsfn.language()}">

	<div class="AdvancedTutorial">
	  [#if content.title?has_content]
	    <h2>${content.title!}</h2>
	  [/#if]

	  [#if content.Lesson?has_content]
	    <iframe width=770, height=450 src=${content.Lesson}> </iframe>
	  [/#if]

	  [#if content.message?has_content]
	    ${cmsfn.decode(content).message!}
	  [/#if]
	</div>
    [#-- use resfn to load all js which match patern or link resources manually or via theme --]
    [#-- ${resfn.js(["/AdvancedTutorial/.*.js"])!} --]
[@cms.area name="main"/]
[@cms.area name="content"/]
  </body>
</html>

