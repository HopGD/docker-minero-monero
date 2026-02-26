# Monero Docker Miner

Docker container para minar Monero (XMR) usando XMRig.

## ¿Por qué Monero?

- **Minable con CPU**: No necesitas GPU cara
- **Anonimo y privado**: Monero usa criptografía avanzada para privacidad
- **Equo**: Algoritmo RandomX diseñado para ser accesible a mineros regulares
- **Util**: Es una cryptomoneda real, no un token sin uso

## Requisitos

- Docker
- Docker Compose
- Wallet de Monero

## Configuración

Edita `docker-compose.yml` y reemplaza `TU_WALLET` con tu dirección de Monero:

```yaml
command:
  - "-u"
  - "TU_DIRECCION_WALLET"
```

### Parámetros opcionales

| Parámetro | Descripción |
|-----------|-------------|
| `-p docker` | Nombre del worker (aparece en el pool) |
| `--cpu-max-threads-hint=75` | Porcentaje de CPU a usar (0-100) |

## Uso

```bash
# Iniciar el minero
docker-compose up -d

# Ver logs
docker-compose logs -f

# Detener
docker-compose down
```

## Obtener una wallet

Si no tienes wallet de Monero, puedes crear una en:
- **Cake Wallet** (móvil)
- **Monero GUI** (escritorio)
- **Exodus**, **Binance**, **Coinbase** (exchanges)

## Pooles recomendados

- `pool.supportxmr.com:3333` (SSL: 14444)
- `xmr.pool.eu.nicehash.com:3333`
- `xmr-eu.poolhash.org:3333`

## Disclaimer

Minar consume electricidad y recursos. Asegúrate de que vale la pena en tu país/región.
