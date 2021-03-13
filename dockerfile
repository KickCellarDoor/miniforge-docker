FROM ubuntu:latest

# install necessary packages
COPY run_root.sh .
RUN bash run_root.sh
RUN rm run_root.sh

# add dev user and copy identity
RUN useradd -ms /bin/bash dev

# install miniforge
USER dev
WORKDIR /home/dev
COPY run_dev.sh .
RUN bash run_dev.sh
RUN rm run_dev.sh

USER root
COPY entry.sh .
ENTRYPOINT ["bash",  "entry.sh"]