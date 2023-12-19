FROM alpine
RUN apk add --update python3 py-pip
COPY . .
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["goods.py" , "test_good.py "]