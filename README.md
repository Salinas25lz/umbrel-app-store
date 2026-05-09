# ₿ Bitcoin Dashboard for Umbrel

![Logo](logo.svg)

An elegant, minimalistic visual dashboard that monitors the full state of the
Bitcoin network in real time, served from your own Umbrel node.

> The dashboard UI itself is bilingual (EN/ES toggle in the header). All
> repository documentation is in English.

---

## ✨ Features

### 📊 Real-time data

- **BTC price** — USD/EUR with sparkline and session change
- **Fees** — sat/vB plus EUR estimate for a standard transaction
- **Mempool** — upcoming blocks with size, median fees and correct numbering
- **Current block** — height, miner, timestamp and transactions
- **Hashrate** — current EH/s with multi-day chart
- **Difficulty** — next-adjustment estimate, blocks remaining, period progress
- **Supply** — circulating BTC and percentage mined
- **Halving** — blocks-to-go countdown and estimated date
- **Lightning Network** — nodes, channels, total capacity
- **BTC dominance** — via CoinGecko (optional)

### 🔧 v1.2.0 highlights

- Multiple data sources (your local node / public mempool.space / testnet)
- Endpoint configuration from the UI
- Automatic fallback local → public on failure
- Smart caching for slow-changing data (5–10 min)
- Connection state and response-time monitoring
- Per-card source indicators (🖥️ local / 🌐 public)
- Reduced API call count, lower upstream load

## 🎨 User interface

- Bilingual (EN/ES) with header toggle
- Light / dark theme switch
- Responsive (mobile + desktop)
- Detail modals per card
- Built-in configuration UI
- Live connection status

## Requirements

- Umbrel with the `mempool` app installed
- Port 8767 free

## Installation

### From an Umbrel community app store *(recommended once published)*

1. Add the community app store that hosts this app
2. Install **Bitcoin Dashboard** from the Umbrel UI
3. Open `http://umbrel.local:8767`

### Manual sideload *(for testing during development)*

```bash
git clone https://github.com/Salinas25lz/umbrel-app-store.git
cd umbrel-app-store
bash install.sh
```

## Configuration

No configuration required. The dashboard auto-detects the local mempool.space
endpoint via the nginx proxy and falls back to the public one if local fails.
All user preferences live in the browser's `localStorage`.

## Repository layout

```
umbrel-app-store/
├── docker-compose.yml      # Service definition for Umbrel
├── umbrel-app.yml          # App store manifest
├── nginx.conf              # Reverse proxy for /api/
├── logo.svg                # Repo logo
├── icon.svg                # Square icon for store listing
├── install.sh              # Manual sideload script
├── html/
│   └── index.html          # Single-page dashboard
└── .github/workflows/      # Manifest + lint CI
```

## 📋 Changelog

### v1.2.0 — 2026-04-09

**New:**
- Multiple data sources (local / public / testnet)
- Endpoint configuration UI
- Per-card source indicators
- Connection and response-time monitoring
- Smart cache for slow-changing data
- Automatic local → public fallback

**Fixes:**
- Correct mempool block numbering
- Stronger color contrast
- Cleanup of stray HTML elements

**Security cleanup:**
- Removed historical artefacts from git history (`git filter-repo`)

### v1.0.0 — 2026-03-30

- Initial release with core functionality

## License

[MIT](LICENSE)
