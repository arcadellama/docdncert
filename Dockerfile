FROM certbot/dns-cloudflare as docdncert

RUN apk --no-cache add -f \
  coreutils \
  tzdata \
  curl \
  jq

COPY ./ /
RUN chmod +x /docdncert

ENTRYPOINT ["/docdncert"]
