# 🛡️ Portal & Centro de Comando - Mario Álvarez

[![Nginx](https://img.shields.io/badge/Nginx-Alpine-009639?logo=nginx&logoColor=white)](https://nginx.org)
[![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![Tailscale](https://img.shields.io/badge/Zero%20Trust-Tailscale%20Funnel-black?logo=tailscale&logoColor=white)](https://tailscale.com)
[![OWASP](https://img.shields.io/badge/Security-OWASP%20Hardened-orange)](https://owasp.org)

Landing Page profesional, portafolio y centro de lanzamiento unificado para los microservicios desplegados en el servidor en producción `malvarezserv`.

---

## 🚀 Despliegue Rápido en el Servidor

### 1. Clonar el repositorio
```bash
git clone https://github.com/kigmario01/mario-landing-page.git /home/mario/landing-page
cd /home/mario/landing-page
```

### 2. Dar permisos de ejecución al script
```bash
chmod +x deploy.sh
```

### 3. Ejecutar el despliegue automático
```bash
./deploy.sh
```

---

## 🔄 Actualización Automática (1 solo comando)

Cada vez que hagas un cambio y lo subas con `git push`, simplemente conéctate a tu servidor y corre:
```bash
cd /home/mario/landing-page && ./deploy.sh
```
El script automáticamente descargará las novedades de GitHub (`git pull`), reconstruirá el contenedor Docker (`docker compose up -d --build`) y limpiará imágenes residuales.

---

## 🔒 Hardening & Seguridad Aplicada
- **Nginx Hardened:** `server_tokens off`, cabeceras de seguridad estrictas (CSP, HSTS, X-Frame-Options, X-Content-Type-Options).
- **Rate Limiting:** Protección anti-DoS y anti-fuzzing (15 req/s con burst tolerado).
- **Métodos Restringidos:** Solo peticiones de lectura (`GET`, `HEAD`).
- **Bloqueo de Archivos Sensibles:** Bloqueo automático de dotfiles y extensiones peligrosas.
