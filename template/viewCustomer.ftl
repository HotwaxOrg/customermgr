<div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-header bg-primary text-white text-center">
                <h3>Customer Details</h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <tbody>
                        <tr><th>First Name</th><td>${customerDetail.firstName!"N/A"}</td></tr>
                        <tr><th>Last Name</th><td>${customerDetail.lastName!"N/A"}</td></tr>
                        <tr><th>Party ID</th><td>${customerDetail.partyId!"N/A"}</td></tr>
                        <tr><th>Email Address</th><td>${customerDetail.emailAddress!"N/A"}</td></tr>
                        <tr><th>Contact Number</th><td>${customerDetail.contactNumber!"N/A"}</td></tr>
                        <tr><th>Address</th><td>${customerDetail.address1!"N/A"} ${customerDetail.address2!""}</td></tr>
                        <tr><th>City</th><td>${customerDetail.city!"N/A"}</td></tr>
                        <tr><th>State</th><td>${customerDetail.state!"N/A"}</td></tr>
                        <tr><th>Postal Code</th><td>${customerDetail.postalCode!"N/A"}</td></tr>
                        <tr><th>Country</th><td>${customerDetail.country!"N/A"} (${customerDetail.countryCode!""})</td></tr>
                        <tr><th>Area Code</th><td>${customerDetail.areaCode!"N/A"}</td></tr>
                        <tr><th>Gender</th><td>${customerDetail.gender!"N/A"}</td></tr>
                        <tr><th>Role Type</th><td>${customerDetail.roleTypeId!"N/A"}</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>