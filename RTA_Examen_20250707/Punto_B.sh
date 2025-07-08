#!/bin/bash
clear

LISTA=$1
LOG_FILE="/var/log/status_url.log"

mkdir -p /tmp/head-check/{Error/{cliente,servidor},OK}

if [[ ! -f "$LISTA" ]]; then
  echo "ERROR: Archivo no encontrado"
  exit 1
fi


ANT_IFS=$IFS
IFS=$'\n'


for LINEA in $(grep -v '^#' "$LISTA")
do
     DOMINIO=$(echo  "$LINEA" |awk -F ';' '{print $1}')
     URL=$(echo  "$LINEA" |awk -F ';' '{print $2}')

#---- Dentro del bucle ----#
   # Obtener el código de estado HTTP
  STATUS_CODE=$(curl -LI -o /dev/null -w '%{http_code}\n' -s "$URL")

   # Fecha y hora actual en formato yyyymmddhhmmss
  TIMESTAMP=$(date +"%Y%m%d%H%M%S")

   # Registrar en el archivo /var/log/status_url.log
  LINEA_LOG="$TIMESTAMP - Code:$STATUS_CODE - URL:$URL"
  echo "$LINEA_LOG" | sudo tee -a  "$LOG_FILE" > /dev/null

  if [[ $STATUS_CODE -eq 200 ]]; then
              DESTINO="/tmp/head-check/OK/$DOMINIO.log"
  elif [[ "$STATUS_CODE" -ge 400 && "$STATUS_CODE" -lt 500 ]]; then
              DESTINO="/tmp/head-check/Error/cliente/$DOMINIO.log"
  elif [[ "$STATUS_CODE" -ge 500 && "$STATUS_CODE" -lt 600 ]]; then
              DESTINO="/tmp/head-check/Error/servidor/$DOMINIO.log"
  else
              continue
  fi

  [[ -z "$DESTINO" ]] && continue
  echo "$LINEA_LOG" >> "$DESTINO"


#-------------------------#
done
IFS=$ANT_IFS
