FROM gliderlabs/alpine:3.3
COPY entrypoint.sh /tmp
RUN chmod +x /tmp/entrypoint.sh && chown nobody:nobody /tmp/entrypoint.sh
USER nobody
ENTRYPOINT exec /tmp/entrypoint.sh
