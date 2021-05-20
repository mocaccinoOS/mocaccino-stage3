# This image has luet only
FROM quay.io/luet/base
ADD repository-index.yaml /etc/luet/repos.conf.d/

ENV USER=root

SHELL ["/usr/bin/luet", "install", "-y", "-d"]

RUN repository/mocaccino-stage3
RUN repository/luet
RUN layers/stage3

SHELL ["/bin/sh", "-c"]
RUN luet install -y system/luet
RUN rm -rf /var/cache/luet/packages/ /var/cache/luet/repos/

ENV TMPDIR=/tmp
ENTRYPOINT ["/bin/sh"]
