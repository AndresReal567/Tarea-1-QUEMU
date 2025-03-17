#!/bin/bash
# Script de respaldo
# Descripción:
# 1. Comprime la carpeta /home/usuario/proyecto.
# 2. Lo guarda en /home/usuario/backups con un nombre que incluye fecha y hora.
# Ajusta las rutas según tus necesidades.

FECHA=$(date +%Y%m%d_%H%M%S)
DESTINO="/home/usuario/backups"
ORIGEN="/home/usuario/proyecto"
NOMBRE="respaldo_$FECHA.tar.gz"

# Crear carpeta de backups si no existe
mkdir -p "$DESTINO"

# Comprimir la carpeta de origen
tar -czf "$DESTINO/$NOMBRE" "$ORIGEN"

# Mensaje de confirmación
echo "Respaldo completado: $DESTINO/$NOMBRE"
