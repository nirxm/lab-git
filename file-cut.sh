#!/bin/bash

# Pasamos el archivo a procesar como primer argumento 
ARCHIVO=$1

# 1. Contamos el total de líneas del archivo
TOTAL_LINEAS=$(wc -l < "$ARCHIVO")

# 2. Calculamos la sexta parte (dividimos entre 6)

LINEAS_A_GUARDAR=$((TOTAL_LINEAS / 6))

# 3. Cortamos y guardamos en un temporal
head -n "$LINEAS_A_GUARDAR" "$ARCHIVO" > "$ARCHIVO.tmp"

# 4. Sobreescribimos el original
mv "$ARCHIVO.tmp" "$ARCHIVO"
