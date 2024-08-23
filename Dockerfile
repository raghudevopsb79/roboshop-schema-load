FROM          docker.io/redhat/ubi9
COPY          mongo.repo /etc/yum.repos.d/
RUN           dnf install mongodb-mongosh mysql git -y
COPY          run.sh /
ENTRYPOINT    ["bash", "/run.sh"]


