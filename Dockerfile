FROM alpine/git AS git-clone
WORKDIR /clone
RUN git clone --quiet --depth 1 --branch master https://github.com/airbus-seclab/cpu_rec

FROM refirmlabs/binwalk:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir -pv /home/appuser/.config/binwalk/modules
COPY --from=git-clone /clone/cpu_rec/cpu_rec.py     /home/appuser/.config/binwalk/modules/
COPY --from=git-clone /clone/cpu_rec/cpu_rec_corpus /home/appuser/.config/binwalk/modules/cpu_rec_corpus
