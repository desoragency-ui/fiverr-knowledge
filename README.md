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
