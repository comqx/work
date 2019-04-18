FROM alpine:3.9
WORKDIR /webhook-dingding
COPY . /webhook-dingding/
#RUN echo "http://mirrors.aliyun.com/alpine/v3.9/community/" > /etc/apk/repositories 
#RUN echo "http://mirrors.aliyun.com/alpine/v3.9/main/" > /etc/apk/repositories 
RUN apk update && \
    apk add python3 curl --update-cache --repository http://mirrors.aliyun.com/alpine/v3.9/main/ --allow-untrusted && \
    pip3 install flask requests  requests -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
EXPOSE 80
CMD ["/bin/sh","run.sh"]
