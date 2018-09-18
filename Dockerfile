FROM mattrayner/lamp:latest-1604

RUN echo "installing" \
    && cd /tmp/ \
    && wget https://github.com/IdeaSpaceVR/IdeaSpace/releases/download/v1.1.4/IdeaSpace-1.1.4.tar.gz \
    && tar zxvf IdeaSpace-1.1.4.tar.gz \
    && mv IdeaSpace-1.1.4/* /app/

ADD ./run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80
CMD ["/run.sh"]
