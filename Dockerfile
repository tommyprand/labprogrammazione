FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y neovim build-essential less tree make git

CMD ["bash"]
