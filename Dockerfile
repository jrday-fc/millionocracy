FROM kkarczmarczyk/node-yarn:latest@sha256:ebaee68e82fec5e5924949b5c8700c6eb4b2ec9954269dc08fdb8ded9629542e

# if you're in China, please comment above image and uncomment following image :)

# FROM registry.docker-cn.com/kkarczmarczyk/node-yarn

EXPOSE 3006

ENV WORKSPACE=/opt/workspace

RUN mkdir -p $WORKSPACE

WORKDIR $WORKSPACE

ADD package.json $WORKSPACE

# if you're in China, uncomment following phrase to boost your yarn with cn-npm-registry :)

# RUN yarn config set registry https://registry.npm.taobao.org

RUN yarn

ADD . $WORKSPACE

CMD yarn docker
