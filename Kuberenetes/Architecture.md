* The worker machine has many pods in it, There must be three processes be installed in every node.
* The first one is kubelet, container runtime(docker), 
* The kubelet interact with both the container and the node. Kubelet starts the pod within the container.
* The kubeproxy is the one which forwards the services to the pods.
* The master nodes are the one which controls the cluster state. It has four services in it.
* The first one is the API server which is cluster gateway and also the authentication gateway. 
* Scheduler is an another service which starts the worker process using the scheduling algorithms.
* Next the controller manager which will be used to detect the state changes like pods die then do the rescheduling. 
* The last one is the etcd which is a key value store which stores the state of the cluster and it is like the brain of the cluster.
* 