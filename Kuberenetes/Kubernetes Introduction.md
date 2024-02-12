* Kubernetes is an open source container orchestration tool which is developed by the google.
* It gives us No downtime, Scalability, Disaster recovery.
# Components:
* There are many components in the kubernetes where some of them are the used day to day.
## 1. Node:
* Node is the one which contains the pods and the main unit of the kubernetes which can be a physical server or the virtual machine anything.
* The pod is the smallest unit of the kubernetes and an abstraction over the container.
* We only interact with the kubernetes layer only not the pod.
* Pod is used to run one main application but we can run many.
* The kubernetes has a virtual network where the each pod get separate IP address.
* The problem is the if an pod dies and another pod starts then the IP is replaced.
* So the solution is the service.
### Service:
* Lifecycle of the pod and the service are not connected so no need to change of IP.
* There are two types of services like external service and the internal service.
* The ingress is an component which will act as the server and talks with outside world and have an communication between the cluster and the outside.
### Config Maps and Secret:
* This component is the external configuration of our application like the database URL, etc.
* But the secrets are the component which is used to configure the username, password, etc. credentials will be saved in the base64 encoded way in the secrets.
## Volumes:
* The data storage is the main thing to note as the pods are restarted the DB data would be gone. 
* So we should use a volume to mount the physical or cloud storage to the pod using the kubernetes volume.
* The point to note is that kubernetes doesn't maintain the data so we should use the volumes.
* 
