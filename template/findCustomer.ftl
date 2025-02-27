<html>
<head>
<title>${layoutSettings.companyName}</title>
<meta name="viewport" content="width=device-width, user-scalable=no"/>
    <#if webSiteFaviconContent?has_content>
      <link rel="shortcut icon" href="">
    </#if>
    <#list layoutSettings.styleSheets as styleSheet>
      <link rel="stylesheet" href="${StringUtil.wrapString(styleSheet)}" type="text/css"/>
    </#list>
    <#list layoutSettings.javaScripts as javaScript>
      <script type="text/javascript" src="${StringUtil.wrapString(javaScript)}"></script>
    </#list>
  </head>
  <body data-offset="125">
    <div class="container mt-4">
    <h2 class="text-center mb-4">Find Customer</h2>
    <form action="<@ofbizUrl>findCustomer</@ofbizUrl>" method="post" class="row g-3">

        <!-- First Name -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.FirstName}</label>
            <input type="text" name="firstName" class="form-control" >
        </div>

        <!-- Last Name -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.LastName}</label>
            <input type="text" name="lastName" class="form-control" >
        </div>

        <!-- Email Address -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.EmailAddress}</label>
            <input type="email" name="emailAddress" class="form-control" >
        </div>

        <!-- City -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.City}</label>
            <input type="text" name="city" class="form-control">
        </div>

        <!-- Submit Button -->
        <div class="col-12 text-center">
            <button type="submit" class="btn btn-primary">Find Customer</button>
        </div>
    </form>
  </body>
</html>