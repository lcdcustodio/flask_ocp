# flask_ocp

Localhost cmds:

- podman build -t flask_hello .
- podman login -u <USER> -p <PWD> quay.io
- podman tag <IMAGE_ID> quay.io/ldornele/flask_hello
- podman push quay.io/ldornele/flask_hello

Bastion Server cmds:

- oc apply -f deploy/deployment.yaml
- oc apply -f deploy/service.yaml
- oc apply -f deploy/route.yaml