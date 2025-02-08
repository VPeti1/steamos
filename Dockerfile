FROM linuxserver/steamos:latest

ENV LANG=C.UTF-8

RUN sudo pacman -Syu --noconfirm \
    && sudo pacman -S --noconfirm git archiso bash \
    && sudo pacman -Scc --noconfirm

RUN git clone --branch downstream https://github.com/VPeti1/steamos.git /steamos

WORKDIR /steamos

RUN chmod +x build.sh

RUN ./build

CMD ["bash"]
