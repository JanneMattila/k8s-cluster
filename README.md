# K8s-cluster

This repository contains different examples how to setup certain
functionalities into your Azure Kubernetes Service.

## Cluster with Azure AD Auth

If you need to protect your test cluster or you just want
to protect access to your apps from central location, you
can use following architecture from folder [cluster-with-aad-auth](cluster-with-aad-auth):

![architecture](https://user-images.githubusercontent.com/2357647/93898843-5bc7cb80-fcfc-11ea-8b97-66ade06d3bc3.png)

Architecture is based on [oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy)
which is configured to work with Azure AD for providing authentication to the end users.

You can use either external Redis cache like [Azure Cache for Redis](https://docs.microsoft.com/en-us/azure/azure-cache-for-redis/cache-overview) or then use
redis directly inside from your cluster.
