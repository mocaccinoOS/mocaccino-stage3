# This image has luet only
FROM quay.io/luet/base
ADD conf/luet.yaml.docker /etc/luet/luet.yaml
ADD conf/repos.conf.d/ /etc/luet/repos.conf.d

ENV USER=root

SHELL ["/usr/bin/luet", "install", "-y", "-d"]

RUN repository/mocaccino-stage3
RUN repository/luet
RUN utils/busybox

SHELL ["/bin/sh", "-c"]
RUN luet install -y system/luet
RUN rm -rf /var/cache/luet/packages/ /var/cache/luet/repos/

ENV TMPDIR=/tmp
ENTRYPOINT ["/bin/sh"]