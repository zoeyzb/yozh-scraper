#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if [ ! -f .env ]; then
  cp .env.example .env
  echo "Created .env from .env.example. Direct/no-proxy mode can work without a CyberYozh key."
fi

docker compose up -d --build redis web-scraper scraper-worker open-crawler

echo "Yozh scraper MCP: http://127.0.0.1:8000/mcp"
echo "Yozh crawler MCP: http://127.0.0.1:8001/mcp"
echo "Health:"
curl -fsS http://127.0.0.1:8000/api/v1/health || true
echo
curl -fsS http://127.0.0.1:8001/api/v1/health || true
echo
