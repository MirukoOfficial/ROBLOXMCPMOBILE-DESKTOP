getgenv().BridgeURL = "PUT-YOUR-CLOUDFLARE-HOST-HERE.trycloudflare.com"
getgenv().DisableWebSocket = true
loadstring(game:HttpGet("https://gitlab.com/upio/roblox-executor-mcp/-/raw/main/connector.luau"))()
