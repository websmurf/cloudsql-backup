# docker buildx build --platform linux/amd64,linux/arm64  --push -t websmurf/cloudsql-backup:1.0.0 .
FROM mysql:8

ENV CLOUDSQL=''
ENV USERNAME=''
ENV PASSWORD=''
ENV DATABASE=''
ENV STORAGE_PATH=''

CMD ["sh", "-c", "mysqldump --hex-blob --single-transaction --set-gtid-purged=OFF --triggers --routines --events --protocol=socket --socket=/cloudsql/${CLOUDSQL} --user=${USERNAME} --password=${PASSWORD} ${DATABASE} > ${STORAGE_PATH}/backup-$(date +%Y%m%d).sql"]
