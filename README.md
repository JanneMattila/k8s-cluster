# K8s-cluster

This repository contains different examples how to setup certain
functionalities into your Azure Kubernetes Service.

## Cluster with Azure AD Auth

If you need to protect your test cluster or you just want
to protect access to your apps from central location, you
can use following architecture from folder [cluster-with-aad-auth](cluster-with-aad-auth):

![architecture](https://user-images.githubusercontent.com/2357647/93929678-dc022700-fd24-11ea-807b-78e631197281.png)

Flow of authentication:

1. User navigates to `www.contoso.com`
2. Request is not yet authenticated and it gets redirect to `oauth2-proxy`
3. `oauth-proxy` redirects user to the Azure AD for login
4. After successful login user is redirect by AAD back to the `oauth2-proxy`
5. `oauth2-proxy` issues cookie and user is able to continue to secured workload
6. Workload has access to headers like `X-Auth-Request-Email` and `Authorization` for identifying the user

Architecture is based on [oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy)
which is configured to work with Azure AD for providing authentication to the end users.

You can use either external Redis cache like [Azure Cache for Redis](https://docs.microsoft.com/en-us/azure/azure-cache-for-redis/cache-overview) or then use
redis directly inside from your cluster.
