# ₿ Bitcoin Dashboard - Para Tienda de Aplicaciones Umbrel

## Información para publicación

### Metadatos (umbrel-app.yml)
```yaml
id: bitcoin-dashboard
name: Bitcoin Dashboard
version: "1.1.0"
tagline: Panel visual en tiempo real del estado de la red Bitcoin
description: >-
  Dashboard visual elegante que muestra en tiempo real el estado completo
  de la red Bitcoin. Incluye precio BTC (USD/EUR), comisiones en sat/vB y EUR,
  mempool con próximos bloques, altura actual con minero, hashrate, dificultad,
  supply, halving, y estadísticas de Lightning Network. Con fuentes de datos
  configurables (local/público), cache inteligente, y monitorización avanzada.
category: bitcoin
port: 8767
developer: Claw (OpenClaw Assistant)
website: https://github.com/Salinas25lz/umbrel-app-store
```

### Características destacadas para la tienda
1. **✅ 100% local** - Datos de tu propio nodo mempool.space
2. **✅ Configurable** - Cambia entre fuentes local/público/testnet
3. **✅ Sin configuración** - Funciona out-of-the-box
4. **✅ Bilingüe** - Español/Inglés
5. **✅ Tema claro/oscuro** - Adaptable a preferencias
6. **✅ Optimizado** - Cache reduce carga del servidor
7. **✅ Monitorizado** - Estado conexión + tiempos respuesta

### Requisitos
- Umbrel con mempool.space instalado (recomendado)
- Puerto 8767 disponible
- 10MB de espacio

### Screenshots recomendadas
1. **screenshot-dark.png** - Vista modo oscuro
2. **screenshot-light.png** - Vista modo claro
3. **screenshot-mobile.png** - Vista responsive móvil (opcional)

### Notas para el mantenedor
- La app usa proxy nginx para conectar a mempool.space local
- Si mempool.space no está instalado, fallback automático a público
- Configuración guardada en localStorage del navegador
- No requiere reinicios tras cambios de configuración

### Enlaces
- **Repo**: `https://github.com/Salinas25lz/umbrel-app-store`
- **Dashboard demo**: `http://umbrel.tailf705f1.ts.net:8767`
- **Issues**: En el repo de GitHub

---

*Esta app está mantenida activamente. Reportar issues en el repositorio.*