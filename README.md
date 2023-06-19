# docdncert
Create, renew, attach, and update custom SSL certificates to Digitalocean Spaces CDN's

Example usage:

git clone git@github.com:arcadellama/docdncert

cd docdncert

docker build it "docdncert" .

docker run --rm \
  --env-file .env \
  docdncert \
  --daemon \
  renew all
