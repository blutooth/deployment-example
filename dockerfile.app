FROM ubuntu:latest

RUN apt-get update -y; apt-get install curl -y

RUN sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"

COPY . .

RUN sleep 10 && dfx deploy

EXPOSE 8000