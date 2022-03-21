FROM ubuntu:20.04 AS base
RUN apt update && apt install wget tini -y && apt clean

FROM base AS download
ENV version=0.17.0
ENV version_rev=0.17.0.3
WORKDIR /app
RUN wget https://github.com/dashpay/dash/releases/download/v${version_rev}/dashcore-${version_rev}-x86_64-linux-gnu.tar.gz
RUN tar xvf dashcore-${version_rev}-x86_64-linux-gnu.tar.gz
RUN mv dashcore-${version}/bin/dashd ./

FROM base
WORKDIR /app
COPY --from=download /app/dashd /usr/bin/
ENTRYPOINT ["tini", "--", "/usr/bin/dashd"]
EXPOSE 9998 9999 19998 19999