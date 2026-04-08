# Bitcoin Dashboard for Umbrel

Un dashboard visual elegante y minimalista para monitorear el estado de la red Bitcoin en tiempo real desde tu nodo Umbrel.

## Características

- **Precio BTC**: USD y EUR con gráfico sparkline y cambio de sesión
- **Comisiones**: Sat/vB y coste estimado en EUR para transacción estándar
- **Mempool**: Próximos bloques con tamaño, fees medianos y numeración correcta
- **Bloque actual**: Altura, minero, timestamp y transacciones
- **Hashrate**: EH/s actual y gráfico de últimos días
- **Dificultad**: Cambio estimado, bloques restantes y progreso del periodo
- **Supply**: BTC en circulación y porcentaje minado
- **Halving**: Cuenta atrás en bloques y fecha estimada
- **Lightning Network**: Nodos, canales y capacidad total
- **Dominancia BTC**: Desde CoinGecko (opcional)

## Interfaz

- **Bilingüe**: Español/Inglés con toggle
- **Tema claro/oscuro**: Cambio instantáneo
- **Responsive**: Diseño adaptable a móviles y desktop
- **Modales**: Información detallada en cada sección

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

## Changelog

### v1.1.0 (2026-04-08)
- Fix: Numeración correcta de bloques mempool
- Fix: Colores más intensos para mejor legibilidad
- Fix: Limpieza de elementos HTML sobrantes
- Mejora: Descripción actualizada para App Store
- Nueva: Logo SVG personalizado

### v1.0.0 (2026-03-30)
- Lanzamiento inicial con todas las funcionalidades básicas

## Licencia

MIT