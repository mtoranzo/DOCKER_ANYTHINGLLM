#!/bin/bash

# Limpiar la caché de npm y forzar la instalación de la última versión de Prisma
echo --> Cleaning npm cache and installing latest Prisma..."
npm cache clean --force
npm i --save-dev prisma@latest
npm i @prisma/client@latest