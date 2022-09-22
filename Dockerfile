FROM codercom/enterprise-base:ubuntu

# Run everything as root
USER root

# Instal dart sdk
RUN apt update
RUN apt install apt-transport-https
RUN wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
RUN echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
RUN apt update
RUN apt install dart

# Set back to coder user
USER coder
