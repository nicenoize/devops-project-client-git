# TODO CLIENT
The code is based on the predefined TODO app (https://github.com/lucendio/lecture-devops-app)

This repo contains the client. In order to deploy it to Kubernetes either push to the production branch,
in order to deploy the trigger, on manually deploy by running the trigger from GCP.

Before deployment to the Kubernetes Cluster, some small tests will be performed. As soon as they succeed,
the repository will be containerized and deployed to the Kubernetes cluster.

The server client will be available under http://www.devops-tutorial.site/
