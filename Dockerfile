#FROM gcr.io/vale-tovtec/evo_app
FROM valetovtec.azurecr.io/busybox

COPY evo_storage_local /opt/evo_storage_local
RUN find /opt -type f -name '*.py' -exec python -m compileall -b '{}' \; -delete

WORKDIR /opt/evo_storage_local
CMD ["/opt/pyenv/bin/python", "/opt/evo_storage_local/evo_storage_local.pyc"]
