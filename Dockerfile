FROM alpine:3.6
WORKDIR /webhook-dingding
COPY . /webhook-dingding/
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.6/main/" > /etc/apk/repositories && \
    apk update && \
    apk add curl python3 && \
    pip3 install flask requests  requests -i http://pypi.douban.com/simple --trusted-host pypi.douban.com 
EXPOSE 80
CMD ["/bin/sh","run.sh"]
