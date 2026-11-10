#!/usr/bin/env bash
# =============================================================================
# Script de Despliegue y Actualización Automática
# Proyecto: Landing Page & Centro de Comando (Mario Álvarez)
# Servidor: malvarezserv (Ubuntu 26.04 LTS)
# =============================================================================

set -e

echo "=========================================================="
echo "🚀 Iniciando actualización de Mario's Landing Page..."
echo "=========================================================="

# 1. Obtener los últimos cambios desde GitHub de forma limpia
echo "📥 [1/3] Sincronizando con la última versión de GitHub..."
git fetch origin
git reset --hard origin/main
chmod +x deploy.sh

# 2. Reconstruir la imagen y reiniciar el contenedor en segundo plano
echo "🔨 [2/3] Reconstruyendo imagen y reiniciando contenedor..."
docker compose down --remove-orphans 2>/dev/null || true
docker compose up -d --build

# 3. Limpiar imágenes huérfanas / antiguas para ahorrar espacio en disco
echo "🧹 [3/3] Limpiando imágenes huérfanas en desuso..."
docker image prune -f

echo "=========================================================="
echo "✅ ¡Actualización completada con éxito!"
echo "🌐 URL Pública: https://malvarezserv.tail19bc30.ts.net/portal/"
echo "=========================================================="
