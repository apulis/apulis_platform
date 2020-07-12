sudo cp /etc/kubernetes/ssl/ca.pem /etc/ssl/etcd/ca.pem
sudo cp /etc/kubernetes/ssl/ca-key.pem /etc/ssl/etcd/ca-key.pem
sudo cp /etc/kubernetes/ssl/apiserver.pem /etc/ssl/etcd/apiserver.pem
sudo cp /etc/kubernetes/ssl/apiserver-key.pem /etc/ssl/etcd/apiserver-key.pem
sudo chmod +x /opt/bin/*
sudo systemctl daemon-reload
sudo systemctl stop kubelet
sudo docker pull gcr.azk8s.cn/google-containers/hyperkube:v1.15.2
sudo systemctl start kubelet
sudo systemctl enable kubelet