FROM prom/prometheus:latest

# Copy your prometheus.yml into the container
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus web UI port
EXPOSE 9090

# Use Prometheus as the entrypoint
ENTRYPOINT ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus"]
