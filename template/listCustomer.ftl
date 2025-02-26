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

<div class="container mt-5">
    <h2 class="mb-4">Customer List</h2>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Role Type</th>
                <th>Email</th>
                <th>Address</th>
                <th>City</th>
                <th>Postal Code</th>
                <th>State</th>
                <th>Country</th>
                <th>Country Code</th>
                <th>Area Code</th>
                <th>Contact Number</th>
            </tr>
        </thead>
        <tbody>
        <#if customersList?has_content>
            <#list customersList as customer>
            <tr>
                <td>${customer.firstName!''}</td>
                <td>${customer.lastName!''}</td>
                <td>${customer.gender!''}</td>
                <td>${customer.roleTypeId!''}</td>
                <td>${customer.emailAddress!''}</td>
                <td>${customer.address1!''} ${customer.address2!''}</td>
                <td>${customer.city!''}</td>
                <td>${customer.postalCode!''}</td>
                <td>${customer.state!''}</td>
                <td>${customer.country!''}</td>
                <td>${customer.countryCode!''}</td>
                <td>${customer.areaCode!''}</td>
                <td>${customer.contactNumber!''}</td>
            </tr>
            </#list>
        <#else>
            <tr>
                <td colspan="13" class="text-center">No Customers Found</td>
            </tr>
        </#if>
        </tbody>
    </table>
</div>

  </body>
</html>