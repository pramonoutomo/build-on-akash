FROM ubuntu:20.04 AS base
RUN apt update && apt-get install wget -y && apt clean

FROM base AS download
ENV version=1.2.4
WORKDIR /
RUN wget http://cdn.netbox.global/nbx_install.sh
RUN chmod +x nbx_install.sh
RUN ./nbx_install.sh
RUN systemctl start netbox-wallet.service
 
ENTRYPOINT [ "nbx-cli", "getinfo" ]
EXPOSE 28734