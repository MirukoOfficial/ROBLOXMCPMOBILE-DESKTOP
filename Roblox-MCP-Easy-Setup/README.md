# Roblox Executor MCP - Easy Setup (for Grok)

Simple package to connect Roblox Executor MCP with Grok (Web).

## Requirements
- Windows PC
- Node.js 18+
- cloudflared
- Mobile Roblox executor (Delta etc.)

## Quick Start

### 1. Download the original MCP
Go to: https://gitlab.com/upio/roblox-executor-mcp  
Download and extract it.

### 2. Build it
Open terminal inside the MCP folder and run:

```bash
npm install -g pnpm
pnpm install
pnpm run build
```

### 3. Start MCP Server
Double-click `start-mcp.bat`  
**or** run:

```bash
node dist/index.js
```

### 4. Start Cloudflare Tunnel
Double-click `start-tunnel.bat`  
**or** run:

```bash
cloudflared tunnel --url http://localhost:16384
```

Copy the link it gives you (example: `https://xxxx.trycloudflare.com`)

### 5. Add to Grok
1. Go to https://grok.x.ai
2. Open Connectors → Custom MCP
3. Paste: `https://xxxx.trycloudflare.com/mcp`
4. Save

### 6. Connect from Roblox (Mobile)
Copy and run this in your executor (replace the link):

```lua
getgenv().BridgeURL = "xxxx.trycloudflare.com"
getgenv().DisableWebSocket = true
loadstring(game:HttpGet("https://gitlab.com/upio/roblox-executor-mcp/-/raw/main/connector.luau"))()
```

## Notes
- Keep both terminals open
- Every time you restart the tunnel, the link changes
- You must update the link in Grok and in the Roblox script

Made for easy sharing.
