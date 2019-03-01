FROM scratch
ADD amzn2-container-raw-2.0.20190228-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz" \
 && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
