# MCP Ollama

A Model Context Protocol (MCP) server for integrating Ollama with Claude and other MCP clients.

## Installation

```bash
pip install mcp-ollama
```

## Requirements

- Python 3.10 or higher
- Ollama installed and running (https://ollama.com/download)
- At least one model pulled with Ollama (e.g., `ollama pull llama2`)

## Usage

### Command Line

Run the server directly:
```bash
mcp-ollama
```

### With Claude Desktop

Add to your Claude Desktop configuration (`~/Library/Application Support/Claude/claude_desktop_config.json` on macOS, `%APPDATA%\Claude\claude_desktop_config.json` on Windows):

```json
{
  "mcpServers": {
    "ollama": {
      "command": "mcp-ollama"
    }
  }
}
```

### Development

Install in development mode:
```bash
git clone https://github.com/yourusername/mcp-ollama.git
cd mcp-ollama
uv sync
```

Test with MCP Inspector:
```bash
mcp dev src/mcp_ollama/server.py
```

## Features

The server provides four main tools:
- `list_models` - List all downloaded Ollama models
- `show_model` - Get detailed information about a specific model
- `ask_model` - Ask a question to a specified model

## License

MIT
