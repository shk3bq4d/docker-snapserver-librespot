FROM shk3bq4d/snapserver:0.29.0-bookworm

COPY --from=shk3bq4d/librespot:0.5.0-1.82 /usr/local/cargo/bin/librespot /usr/local/bin/

COPY run.sh /
CMD ["/run.sh"]
