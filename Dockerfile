FROM archlinux:latest

ENV LANG=C.UTF-8

RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm git archiso bash \
    && pacman -Scc --noconfirm

RUN git clone --branch upstream https://github.com/VPeti1/steamos.git /steamos

WORKDIR /steamos

RUN chmod +x build.sh

RUN ./build

CMD ["bash"]
