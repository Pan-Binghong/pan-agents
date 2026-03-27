# pan-agents

My Claude Code agents collection.

## Usage

Clone this repo and copy agents to your Claude Code agents directory:

```bash
git clone git@github.com:Pan-Binghong/pan-agents.git
cp pan-agents/agents/*.md ~/.claude/agents/
```

Or use the sync script to keep agents up to date:

```bash
bash pan-agents/sync.sh
```

## Environment Variables

Some agents require environment variables. Add them to your shell profile (`~/.bashrc`, `~/.zshrc`, etc.):

```bash
# Required by notion-requirements-manager
export NOTION_API_TOKEN="your_notion_integration_token"
```

## Agents

| Agent | Description |
|-------|-------------|
| git-notification-handler | Check and handle GitHub/GitLab notifications |
| notion-requirements-manager | CRUD operations on Notion requirements database (项目管理) |
