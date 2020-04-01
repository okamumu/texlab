FROM ubuntu:18.04

ENV DEBIAN_FRONTEND nointeractive
RUN apt-get update &&\
    apt-get install -y \
    git \
    texlive-full \
    aspell aspell-en &&\
    apt-get clean &&\
    rm -fr /var/lib/apt/lists/*

ENV GIT_USER_NAME anonymous
ENV GIT_USER_EMAIL nobody@anonymous

COPY texcompile /usr/local/bin/
COPY texdiff /usr/local/bin/
COPY texspell /usr/local/bin/
COPY texinit /usr/local/bin/

COPY dot.gitattributes /template/.gitattributes
COPY dot.gitignore /template/.gitignore
COPY latexmkrc /template/latexmkrc

WORKDIR /workdir
