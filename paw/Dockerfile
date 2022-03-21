FROM ubuntu:20.04 AS base
RUN apt update && apt install wget jq screen -y && apt clean
RUN wget https://github.com/paw-digital/paw-node/releases/latest/download/linux-paw_node -O paw_node
RUN chmod +x paw_node
RUN mkdir Paw
RUN wget https://raw.githubusercontent.com/pramonoutomo/pawNodeInstall/main/default-settings/config-rpc.toml -O Paw/config-rpc.toml
RUN wget https://raw.githubusercontent.com/pramonoutomo/pawNodeInstall/main/default-settings/config-node.toml -O Paw/config-node.toml
RUN cat Paw/config-node.toml
RUN cat Paw/config-rpc.toml
ENTRYPOINT ./paw_node --daemon --data_path=Paw
EXPOSE 9999

