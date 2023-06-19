FROM certbot/dns-cloudflare as docdncert

RUN apk --no-cache add -f \
  coreutils \
  tzdata \
  curl \
  jq

COPY ./docdncert /usr/local/bin/docdncert
RUN chmod +x /usr/local/bin/docdncert

ENTRYPOINT ["/usr/local/bin/docdncert"]
