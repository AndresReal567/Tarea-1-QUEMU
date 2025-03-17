#!/bin/bash
# Script de limpieza
# Descripción:
# 1. Elimina todos los archivos dentro de /tmp.
# 2. Registra la acción en /var/log/limpieza_tmp.log

rm -rf /tmp/*
echo "Carpeta /tmp limpiada el $(date)" >> /var/log/limpieza_tmp.log
