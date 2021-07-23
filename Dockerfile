FROM golang

RUN apt-get update && \ 
apt-get install vim -y

CMD cd src && mkdir hello \
&& cd hello \
&& go mod init src/hello \
&& touch hello.go \
&& echo 'package main; import "fmt"; func main() \
{ fmt.Println("Code.education Rocks!") };' >> hello.go \
&& go run .