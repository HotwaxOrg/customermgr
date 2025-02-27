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
    <h2 class="text-center mb-4">Create Customer</h2>
    <form action="<@ofbizUrl>createCustomer</@ofbizUrl>" method="post" class="row g-3">

        <!-- First Name -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.FirstName}</label>
            <input type="text" name="firstName" class="form-control" required>
        </div>

        <!-- Last Name -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.LastName}</label>
            <input type="text" name="lastName" class="form-control" required>
        </div>

        <!-- Gender -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.Gender}</label>
            <select name="gender" class="form-select">
                <option value="M">Male</option>
                <option value="F">Female</option>
                <option value="O">Other</option>
            </select>
        </div>

        <!-- Email Address -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.EmailAddress}</label>
            <input type="email" name="emailAddress" class="form-control" required>
        </div>

        <!-- Date of Birth -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.DOB}</label>
            <input type="text" name="dob" class="form-control">
        </div>

        <!-- Address Line 1 -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.Address1}</label>
            <input type="text" name="address1" class="form-control">
        </div>

        <!-- Address Line 2 -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.Address2}</label>
            <input type="text" name="address2" class="form-control">
        </div>

        <!-- City -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.City}</label>
            <input type="text" name="city" class="form-control">
        </div>

        <!-- Postal Code -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.PostalCode}</label>
            <input type="text" name="postalCode" class="form-control">
        </div>

        <!-- State/Province -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.State}</label>
            <input type="text" name="stateProvinceGeoId" class="form-control">
        </div>

        <!-- Country -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.Country}</label>
            <input type="text" name="countryGeoId" class="form-control">
        </div>

        <!-- Country Code -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.CountryCode}</label>
            <input type="text" name="countryCode" class="form-control">
        </div>

        <!-- Area Code -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.AreaCode}</label>
            <input type="text" name="areaCode" class="form-control">
        </div>

        <!-- Contact Number -->
        <div class="col-md-6">
            <label class="form-label">${uiLabelMap.ContactNumber}</label>
            <input type="text" name="contactNumber" class="form-control">
        </div>

        <!-- Submit Button -->
        <div class="col-12 text-center">
            <button type="submit" class="btn btn-primary">Create Customer</button>
        </div>
    </form>
  </body>
</html>