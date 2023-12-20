FROM alpine:latest
RUN apk add --update python3 py-pip
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["test_good.py"]