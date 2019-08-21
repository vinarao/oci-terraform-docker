FROM oraclelinux:7-slim
ARG TERRAFORM_VERSION=0.11.2-1.el7
ARG OCI_PROVIDER_VERSION=2.0.6-1.el7
COPY public-yum-ol7.repo /etc/yum.repos.d/public-yum-ol7.repo
RUN  yum -y install git terraform terraform-provider-oci \
      && rm -rf /var/cache/yum/*
VOLUME ["/data"]
WORKDIR /data
CMD ["/bin/bash"]
