ARG SNMP_GENERATOR_VERSION=v0.20.0
ARG LIBRENMS_VERSION=23.7.0

FROM prom/snmp-generator:$SNMP_GENERATOR_VERSION

RUN rm -rf /var/lib/apt/lists/* && \
    git clone --depth 1 --branch $LIBRENMS_VERSION https://github.com/librenms/librenms.git /opt/librenms && \
    mv /opt/librenms/mibs /opt/mibs && \
    rm -rf /opt/librenms

# Inherited from prom/snmp-generator
# WORKDIR "/opt"
# ENTRYPOINT ["/go/bin/generator"]
# ENV MIBDIRS mibs
# CMD ["generate"]
