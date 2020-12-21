FROM shk3bq4d/snapserver

COPY --from=shk3bq4d/librespot /usr/local/cargo/bin/librespot /usr/local/bin/

COPY run.sh /
CMD ["/run.sh"]
