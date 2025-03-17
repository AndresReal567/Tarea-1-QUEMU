#!/bin/bash
# Script de ping
# Descripción:
# 1. Hace ping a google.com con 4 paquetes.
# 2. Guarda la salida en /home/usuario/logs/ping_test.log

LOG_DIR="/home/usuario/logs"
LOG_FILE="$LOG_DIR/ping_test.log"

# Crear carpeta de logs si no existe
mkdir -p "$LOG_DIR"

echo "=== PING TEST $(date) ===" >> "$LOG_FILE"
ping -c 4 google.com >> "$LOG_FILE"
echo "--------------------------" >> "$LOG_FILE"
