# ₿ Bitcoin Dashboard — Notes for the Umbrel Community App Store

## Publication metadata

```yaml
id: bitcoin-dashboard
name: Bitcoin Dashboard
version: "1.2.0"
tagline: Real-time visual dashboard for the Bitcoin network
category: bitcoin
port: 8767
developer: Salinas25lz
website: https://github.com/Salinas25lz/umbrel-app-store
dependencies:
  - mempool
```

## Highlights for the store listing

1. **100% local** — Reads from your own mempool.space node
2. **Configurable sources** — Switch between local / public / testnet
3. **Zero configuration** — Works out of the box
4. **Bilingual UI** — English / Spanish
5. **Light & dark theme**
6. **Smart caching** — Reduces upstream load
7. **Live monitoring** — Connection status and response time

## Requirements

- Umbrel with the `mempool` app installed (declared as a dependency)
- Port 8767 free
- ~10 MB of disk

## Screenshots

Screenshots are added separately to the listing PR (`screenshot-dark.png`,
`screenshot-light.png`, optional `screenshot-mobile.png`). They are **not**
committed to this repository to keep the repo lean — the community app
store builds the gallery from the submission.

## Maintainer notes

- The app uses an nginx proxy to reach the local mempool.space node
- If the local node is unreachable, the UI falls back to public mempool.space
- User configuration is stored in browser `localStorage`; no server-side state
- No restart required after configuration changes

## Links

- **Repo**: <https://github.com/Salinas25lz/umbrel-app-store>
- **Issues**: report on the GitHub repository

---

*Actively maintained. Please open issues on the repo.*
