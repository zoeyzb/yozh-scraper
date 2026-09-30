# ChatGPT local MCP

Yozh already exposes Streamable HTTP MCP endpoints on both services. This
branch does not replace or merge them; it only adds a one-command local launch.

## Mac quick start

Requirements: Docker/OrbStack.

```bash
git checkout chatgpt-mcp-local
chmod +x scripts/start-chatgpt-mcp.sh
./scripts/start-chatgpt-mcp.sh
```

Endpoints:

- scraper MCP: `http://127.0.0.1:8000/mcp`
- crawler MCP: `http://127.0.0.1:8001/mcp`

Yozh is intentionally heavier than Scrapling because it includes Redis and
browser workers. You can leave it stopped unless you specifically want its
job queue/crawler.

For ChatGPT web, connect whichever endpoint you want through OpenAI Secure MCP
Tunnel.
