# Docker Services

This directory contains Docker Compose configurations for various services.

## Services

- delotorrent: VPN and torrent management
- lego: Let's Encrypt certificate management
- obsidian-couchdb: CouchDB for Obsidian sync
- portainer: Docker management UI

## Usage

1. Copy the `.env.example` file to `.env` in each service directory and fill in your specific values.
2. Start the shared network:
   ```
   docker-compose -f shared-network/docker-compose.yml up -d
   ```
3. Start each service individually:
   ```
   docker-compose -f <service>/docker-compose.yml up -d
   ```

## Notes

- Ensure that sensitive information is not committed to version control.
- Use the shared network for inter-service communication.
