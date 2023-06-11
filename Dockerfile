FROM debian:stable as do-cert-renew

RUN apt-get update \
    && apt-get -y install curl jq git

RUN git clone https://github.com/acmesh-official/acme.sh.git /tmp/acme.sh
RUN cd /tmp/acme.sh && ./acme.sh --install --nocron
RUN ln -s $HOME/.acme.sh/acme.sh /usr/local/bin/acme.sh 
RUN rm -r /tmp/acme.sh

COPY ./do-cdn-cert /usr/local/bin/do-cdn-cert
RUN chmod +x /usr/local/bin/do-cdn-cert

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT entrypoint.sh
