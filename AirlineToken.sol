# AeroCelo

Travel-loyalty tokens on Ethereum Sepolia. A single-page frontend for MetaMask that lets travelers earn, swap, transfer and redeem loyalty tokens.

## Live contracts (Ethereum Sepolia, chain ID 11155111)

| Contract | Address |
|---|---|
| HotelToken (HLT) | `0x6908CCA97717566Ee5FaA96358Fb5A49ef64B81a` |
| AirlineToken (ALT) | `0xdaF09Ecf06Ba9409F3647eFd14B9Aa25bBb6b55f` |
| SwapContract | `0xFd95C2d9b7A2f61Cc1e0031cb364ccCbbB38BEF3` |
| RedemptionContract | `0x0B3702320421d49F7546594C50a62C210E8C979C` |

## Run locally

No build step is needed.

```bash
cd aerocelo
python3 -m http.server 8000
```

Open http://localhost:8000 in a browser with MetaMask installed and switch MetaMask to Sepolia.

## Features

- MetaMask connection with network check (Sepolia only)
- Live HLT, ALT, Sepolia ETH balances and chain ID
- Booking reward (partner/owner wallet mints HLT to a traveler)
- HLT ↔ ALT swaps at the on-chain rate, with approval handling
- HLT transfer
- Redemption for 10 HLT
- Contract registry and diagnostics panel

## Notes

- The app never requests or stores private keys or seed phrases. MetaMask signs every transaction.
- The app loads ethers.js v5.7.2 from cdnjs.
- Booking mint works only from the HotelToken owner wallet.
