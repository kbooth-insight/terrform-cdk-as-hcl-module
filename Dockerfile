
FROM node:16.14.2-alpine3.15

ENV TERRAFORM_VERSION="1.1.7"
RUN apk -U add curl unzip
RUN npm install --global cdktf-cli@latest
RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/1.1.7/terraform_${TERRAFORM_VERSION}_linux_amd64.zip  \
   && unzip terraform.zip  \
   && cp terraform /usr/bin

ADD . /opt/app
WORKDIR /opt/app
RUN (cd modules/cdk-example && npm install)

CMD ["/opt/app/demo.sh"]