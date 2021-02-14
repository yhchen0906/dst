FROM yhchen0906/steamcmd

ENV DSTROOT "${STEAMROOT}/DST"

RUN set -x; \
  apt-get update && \
  apt-get install -y --no-install-recommends libcurl4-gnutls-dev:i386 && \
  rm -rf /var/lib/apt/lists

RUN mkdir -p "${DSTROOT}/bin"

WORKDIR "${DSTROOT}/bin"

COPY entrypoint.sh /usr/local/bin/entrypoint-dst.sh

ENTRYPOINT ["entrypoint-dst.sh"]

CMD ["/bin/bash"]