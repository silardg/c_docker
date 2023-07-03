# select the image name ubuntu and the version 22.04
FROM ubuntu:22.04

# run an update of all the package
# DEBIAN_FRONTEND=noninteractive - as per the debconf, it is a silent when it comes to questioning (like updating)
# tzdata - timezone package
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
# install essential things for the cpp environment
# vim - text editor
# build-essential - GNU debugger, g++/GNU compiler collection
# git - git
# cmake - compiler configuration for c
# net-tools - networking utility for linux
# gdb - gcc compiler
# clang - tooling infrastructure for C language family
RUN apt-get install -y vim build-essential git cmake net-tools gdb clang

# set the working directory
WORKDIR /work