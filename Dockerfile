FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y neovim build-essential less tree make git

RUN --mount=type=bind,target=/lab,rw

CMD ["bash"]
