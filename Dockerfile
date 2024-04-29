FROM redhat/ubi9:latest
ENV ANSIBLE_VERSION 9.4.0
RUN yum update -y; \
    yum install -y python3; \
    yum install -y python3-pip; \
    yum install -y gcc; \
    yum clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible
