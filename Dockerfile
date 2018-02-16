# the feedyard/smashing image is the maintainer of the smashing version control
#   pull version changes in smashing via a version update in the docker image
# FROM feedyard/smashing:1.0.0
FROM local/smashing:latest

MAINTAINER Nic Chenewth <nic.cheneweth@thoughtworks.com>

WORKDIR /dashboard

COPY /assets        /dashboard/assets
COPY /dashboards    /dashboard/dashboards
COPY /dashboards    /dashboard/dashboards
COPY /jobs          /dashboard/jobs
COPY /public        /dashboard/public
COPY /widgets       /dashboard/widgets
COPY config.ru      /dashboard/config.ru
COPY Gemfile        /dashboard/Gemfile
COPY run.sh         /

RUN cd /dashboard && bundle

ENV PORT 3030
EXPOSE ${PORT}
WORKDIR /

USER smashing

CMD ["bash ./run.sh"]
