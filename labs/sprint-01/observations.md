1. How many Docker containers represent your cluster?

docker ps
CONTAINER ID   IMAGE                  COMMAND                  CREATED       STATUS          PORTS                       NAMES
ce7b5e95a24c   kindest/node:v1.36.1   "/usr/local/bin/entr…"   10 days ago   Up 18 minutes   127.0.0.1:41927->6443/tcp   platform-lab-control-plane

1. Which processes run only on the control plane?

kube-apiserver, kube-scheduler, kube-controller-manager, and etcd.

`docker exec -it platform-lab-control-plane bash`

```
crictl ps
CONTAINER           IMAGE               CREATED             STATE               NAME                      ATTEMPT             POD ID              POD                                                  NAMESPACE
60636a8e5993b       e5e695fbdadac       22 minutes ago      Running             local-path-provisioner    6                   316a2853ae04e       local-path-provisioner-855c7b7774-d9jdh              local-path-storage
b51da069d2903       e44e5463fce88       22 minutes ago      Running             kindnet-cni               3                   7e31d408750cc       kindnet-qlf7t                                        kube-system
dbb87555e3bf2       38667dd9be96c       22 minutes ago      Running             coredns                   3                   ef7b50a7826c0       coredns-589f44dc88-cck4z                             kube-system
87809ce1e923a       38667dd9be96c       22 minutes ago      Running             coredns                   3                   808ce1f0f8989       coredns-589f44dc88-5hw6z                             kube-system
63d1acc25ac1a       fda7399e81045       22 minutes ago      Running             nginx                     2                   3c73c43342185       nginx-deployment-77d8c487d7-xdtxs                    default
7675d622031f9       fda7399e81045       22 minutes ago      Running             nginx                     1                   f4f72a6cdc931       nginx-deployment-77d8c487d7-48ltl                    default
f5ee935e74288       78282b5844742       22 minutes ago      Running             kube-proxy                3                   cdca891a82971       kube-proxy-tktmq                                     kube-system
99d1256a6999e       fda7399e81045       22 minutes ago      Running             nginx                     1                   5280afc85c562       nginx-deployment-77d8c487d7-gsff6                    default
b8991d6232163       fda7399e81045       22 minutes ago      Running             nginx                     2                   0a9f439ec331c       nginx-deployment-77d8c487d7-kf58f                    default
2a059b92d896d       fda7399e81045       22 minutes ago      Running             nginx                     2                   e76470a4bdcd3       nginx-deployment-77d8c487d7-vld48                    default
0d892096c35c2       ee85eb1f0edd2       22 minutes ago      Running             etcd                      3                   56178910caeba       etcd-platform-lab-control-plane                      kube-system
9adc509ff243f       315157c5c4d76       22 minutes ago      Running             kube-apiserver            3                   e54c2e668f4ed       kube-apiserver-platform-lab-control-plane            kube-system
3e8bfc0a51638       b665198f31ae0       22 minutes ago      Running             kube-scheduler            3                   6c11a44b4efea       kube-scheduler-platform-lab-control-plane            kube-system
0823c0aac3427       c2616bc3c6956       22 minutes ago      Running             kube-controller-manager   3                   76f562fde74c5       kube-controller-manager-platform-lab-control-plane   kube-system
```

1. Which processes run on every node?

kubelet
containerd
kube-proxy

1. Is kubelet a Pod or a Linux service?

Kubelet is not a Pod.

It is a node-level process/service responsible for making sure the Pods assigned to that node are actually running. So the kubelet runs inside the kind node container, rather than directly as a service on your Ubuntu host.

1. Is containerd managed by Kubernetes?

No ,
containerd is the container runtime. Kubernetes communicates with it through the CRI (Container Runtime Interface).

```
             Kubernetes
                 |
               kubelet
                 |
                CRI
                 |
             containerd
                 |
             runc / OCI
                 |
            Linux containers
```

