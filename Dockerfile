# the feedyard/smashing image is the maintainer of the smashing version control
#   pull version changes in smashing via a version update in the docker image
# FROM feedyard/smashing:1.0.0
FROM smashing:latest

LABEL maintainer="nic.cheneweth@thoughtworks.com"

WORKDIR /dashboard

RUN cd /dashboard && bundle

COPY /assets        /dashboard/assets
COPY /dashboards    /dashboard/dashboards
COPY /dashboards    /dashboard/dashboards
COPY /jobs          /dashboard/jobs
COPY /public        /dashboard/public
COPY /widgets       /dashboard/widgets
COPY config.ru      /dashboard/config.ru
COPY Gemfile        /dashboard/Gemfile
RUN rm jobs/twitter.rb

COPY run.sh /

ENV PORT 3030
EXPOSE ${PORT}
WORKDIR /dashboard

CMD ["/run.sh"]
