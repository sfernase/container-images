FROM scratch
ADD amzn-container-minimal-2018.03.0.20190212-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-edec66042b312e0c355a9edb78ac48b3b0bfa85fb97bc8b115d35cb7e2fe2da2.tar.gz" \
 && echo "b2e5b6314f271462503fe3c5dd6022bfcd1ef926447a36748612ea6e6eb784b1  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
