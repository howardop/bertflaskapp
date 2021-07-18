# Write-up Template

## Analyze, choose, and justify the appropriate resource option for deploying the app.

### Costs

VMs tend to be more expensive than App Services.  Not only are direct the costs imposed by Azure greater for VMs but VMs are more labor intensive since the VM and all middleware installed on it has to be configured and maintained manually, thus incurring additional costs of trained labor.   Also, VM users must pay for all the middleware licenses that they require.  App Service users can take advantage of Azure services which would be cheaper for smaller applications.  In my case, I would have to pay for full SQL Server license fees to implement my application on a VM.  I don’t not have to do so with App Services since I can employ the Azure SQL Server service for much less money. 


### Scalabiltiy and Availability

With App Services, scalability and availability are handled automatically.  Not so with VMs.  With VMs, the users have to create virtual machine scale sets in order to achieve scalability.  They are responsible for implementing load balancing across their VMs by using the Azure load balancer which requires that users define a front-end IP configuration that contains one or more public IP addresses. This front-end IP configuration allows your load balancer and applications to be accessible over the Internet.  One advantage of VMs over App Services in this area is that virtual machine scale sets can support up to 1000 nodes each whereas App Services only allow 100 instances.  But that level of scalability is not necessary in our case.


### Workflow

As indicated in the previous sections, users are responsible for everything with VMs.    They are responsible for maintaining all the software including the OS and all middleware.  They are responsible for implementing security and availability.  With App Services, Azure takes on the responsibility for system management.  The App Service user is responsible for some components of security, but not as much is if he or she managed a VM.


## App Services is the better choice for this application

With respect to this problem, using App Services was an easy choice for the following reasons:
- Easier to deploy – no need to install OS and middleware and configure it for the application.
- Don’t need full control of software - middleware on Azure is sufficient
- Lightweight application.  Don’t have high performance requirements or need to support large number of users
- No security requirements that would require VMs to hide data


### Assess app changes that would change your decision.

I would have to reconsider using a VM instead if any of the above considerations changed, for example if I needed full control of the software, had a greater number of users, had more stringent pefromance requirements or needed more scalability than could be obtained with VMs.