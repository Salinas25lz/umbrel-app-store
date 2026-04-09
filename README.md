# ₿ Bitcoin Dashboard for Umbrel

![Logo](logo.svg)

Un dashboard visual elegante y minimalista para monitorear el estado completo de la red Bitcoin en tiempo real desde tu nodo Umbrel. **Versión 1.1.0** con fuentes de datos configurables, cache inteligente y monitorización avanzada.

## ✨ Características principales

### 📊 **Datos en tiempo real**
- **Precio BTC**: USD/EUR con gráfico sparkline y cambio de sesión
- **Comisiones**: Sat/vB + coste estimado en EUR (transacción estándar)
- **Mempool**: Próximos bloques con tamaño, fees y numeración correcta
- **Bloque actual**: Altura, minero, timestamp, transacciones
- **Hashrate**: EH/s actual + gráfico últimos días
- **Dificultad**: Cambio estimado, bloques restantes, progreso
- **Supply**: BTC en circulación + porcentaje minado
- **Halving**: Cuenta atrás en bloques + fecha estimada
- **Lightning Network**: Nodos, canales, capacidad total
- **Dominancia BTC**: Desde CoinGecko (opcional)

### 🔧 **Funcionalidades avanzadas (v1.2.0)**
- **✅ Fuentes múltiples**: Local (tu nodo) / Público (mempool.space) / Testnet
- **✅ Configuración flexible**: Endpoints personalizables vía UI
- **✅ Fallback automático**: Si local falla → usa público automáticamente
- **✅ Cache inteligente**: Datos que cambian poco se cachean (5-10 min)
- **✅ Monitorización**: Estado conexión + tiempo respuesta en ms
- **✅ Transparencia**: Indicadores 🖥️/🌐 muestran fuente de cada dato
- **✅ Optimizado**: Menos llamadas API, mejor rendimiento

## 🎨 Interfaz de usuario

- **🌐 Bilingüe**: Español/Inglés (toggle en header)
- **☀️ Tema claro/oscuro**: Cambio instantáneo
- **📱 Responsive**: Diseño adaptable móvil/desktop
- **ℹ️ Modales**: Información detallada en cada sección
- **⚙️ Configuración**: UI integrada para endpoints
- **📊 Indicadores**: Fuente de datos en cada card
- **⚡ Estado**: Conexión + tiempo respuesta en tiempo real

## Requisitos

- Umbrel con mempool.space instalado y funcionando
- Puerto 8767 disponible

## Instalación

1. Añade esta app a tu tienda de aplicaciones de Umbrel
2. Instala desde la interfaz de Umbrel
3. Accede a `http://tu-umbrel.local:8767`

## Configuración

No requiere configuración. Se conecta automáticamente al mempool.space local en `http://localhost:3006` (o `http://mempool.space` si usas proxy nginx).

## Desarrollo

El dashboard es una aplicación web estática (HTML/CSS/JS) que se sirve via nginx. Los datos se obtienen via API del mempool.space local.

### Estructura

```
umbrel-app/
├── docker-compose.yml    # Configuración Docker
├── umbrel-app.yml        # Metadatos para Umbrel App Store
├── logo.svg              # Logo de la aplicación
├── html/
│   └── index.html        # Dashboard principal
└── README.md             # Esta documentación
```

## Capturas de pantalla

*(Ver galería en la tienda de aplicaciones)*

## 📋 Changelog

### v1.2.0 (2026-04-08) - *Mejoras completas*
**Nuevas funcionalidades:**
- 🔧 Fuentes de datos múltiples (local/público/testnet)
- ⚙️ Configuración avanzada de endpoints
- 🖥️ Indicadores de fuente por card (🖥️ local / 🌐 público)
- 📡 Monitorización conexión y tiempo respuesta
- 💾 Cache inteligente para datos lentos
- 🔄 Fallback automático local→público

**Bugs arreglados:**
- ✅ Numeración correcta bloques mempool
- ✅ Colores más intensos para mejor legibilidad  
- ✅ Limpieza elementos HTML sobrantes

**Mejoras UI/UX:**
- 🎨 Botones adicionales (🌐 fuente, ⚙️ config)
- ⚡ Mejores indicadores de estado
- 📊 Transparencia en fuentes de datos

**Optimización:**
- 🚀 Reducción llamadas API con cache
- 📈 Mejor rendimiento general

### v1.0.0 (2026-03-30)
- 🚀 Lanzamiento inicial con funcionalidades básicas

## Licencia

MIT