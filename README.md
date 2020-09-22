# K8s-cluster

This repository contains different examples how to setup certain
functionalities into your Azure Kubernetes Service.

## Cluster with Azure AD Auth

In folder [cluster-with-aad-auth](cluster-with-aad-auth)
there is example how to setup following architecture:

![image](https://user-images.githubusercontent.com/2357647/93858338-a7f71980-fcc4-11ea-84ba-d90b23d81cf0.png)

Architecture is based on [oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy)
which is configured to work with Azure AD for providing authentication to the end users.
