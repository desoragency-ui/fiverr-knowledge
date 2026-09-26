# DESORA Fiverr Knowledge Base & Advisor Agent

A Claude Code subagent (`fiverr-advisor`) plus a cross-checked Fiverr knowledge base for DESORA, a marketing agency based in Morocco.

## Use it
Open this repository in Claude Code (web or local) and ask anything about Fiverr, for example: "audit my gig", "write titles and tags for…", "diagnose my impressions drop", "price my packages", "reply to this buyer". Claude hands the request to the `fiverr-advisor` agent automatically. You can also call it by name.

## Contents
- `.claude/agents/fiverr-advisor.md`: the agent (13 working modes, account-safety guardrails, compliance scan).
- `.claude/fiverr-knowledge/00-master-playbook.md`: the synthesized doctrine. Start here.
- `.claude/fiverr-knowledge/research/`: 12 deep-dive research files.
- `.claude/fiverr-knowledge/sources/ALL-SOURCES.tsv`: the source log (688 sources: 287 read in full, 401 seen only as search extracts).
- `.claude/fiverr-knowledge/verification-queue.md`: what still needs verifying (used by Deep Research mode).
- `.claude/fiverr-knowledge/desora-state.md`: DESORA's live gigs and metrics, which the agent keeps updated.

See `.claude/fiverr-knowledge/README.md` for the evidence audit and research limits.

## Install

### 1. Claude app (web, desktop, mobile): as a Skill
1. Download `claude-app-skill/desora-fiverr-advisor.zip`.
2. In Claude: **Settings → Capabilities → Skills → Upload skill**, choose the zip, and switch it on.
3. In any chat, ask a Fiverr question ("audit my gig…"). The skill loads automatically.

In the app the files are read-only. When you share new gig data, the advisor gives you the updated `desora-state.md` text to paste back here.

### 2. Claude Code on your computer: as a global agent (all projects)
```bash
git clone https://github.com/desoragency-ui/fiverr-knowledge.git
cd fiverr-knowledge
bash install.sh                                            # Mac / Linux
powershell -ExecutionPolicy Bypass -File install.ps1       # Windows
```
The installer copies the agent to `~/.claude/agents/fiverr-advisor.md` and the knowledge base to `~/.claude/fiverr-knowledge/`. Re-running it keeps your `desora-state.md`. Restart Claude Code and type `/agents` to confirm `fiverr-advisor` is listed.

### 3. Claude Code on the web
Open a session on this repo. The agent is picked up automatically from `.claude/agents/`.
