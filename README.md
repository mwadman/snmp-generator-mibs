# snmp-generator-mibs

A simple container which takes a Prometheus snmp-exporter generator container and adds the mibs folder from the LibreNMS git repository.

## Building with specific versions

To build yourself with specific versions, set the tag of the [Prometheus snmp-exporter](https://github.com/prometheus/snmp_exporter) and/or [LibreNMS](https://github.com/librenms/librenms) repositories at build time.  
For example:

```bash
docker build --build-arg SNMP_GENERATOR_VERSION=v0.20.0 --build-arg LIBRENMS_VERSION=23.7.0 .
```
