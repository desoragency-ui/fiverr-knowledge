# DESORA Fiverr Knowledge Base

This is the knowledge base behind the **`fiverr-advisor`** subagent (`.claude/agents/fiverr-advisor.md`).

## Start here

| File | What it is |
|---|---|
| `00-master-playbook.md` | **The synthesized, cross-checked doctrine.** It includes the 30 laws, the facts sheet, the contradictions resolved and DESORA's strategy. Read it first. It wins every conflict. |
| `desora-state.md` | DESORA's live Fiverr data: profile, gigs, metrics log, experiment log, verified specs. **The advisor keeps it up to date.** |
| `verification-queue.md` | Items still unverified, in priority order, with the official URLs to check. It drives Deep Research mode. |
| `research/01…12` | The 12 deep-dive research files (about 110k words), each with evidence tags, myths, playbooks and templates. |
| `sources/ALL-SOURCES.tsv` | Every source logged by the research agents: cluster, id, URL, title, tier and read mode. |

## Research clusters

| # | File | Topic |
|---|---|---|
| 01 | `research/01-rules-levels.md` | Official rules, seller levels, Success Score, fees, ToS, account health |
| 02 | `research/02-search-seo.md` | Search algorithm, gig SEO, titles and tags, anti-cannibalization |
| 03 | `research/03-keywords-niches.md` | Keyword research SOP, demand/competition math, gap finding, trends, tool risks |
| 04 | `research/04-gig-creation.md` | Cover image, gallery, video, description, packages page, FAQ, requirements |
| 05 | `research/05-pricing-offers.md` | Pricing mechanics, package architecture, pricing psychology (evidence-graded), upsells |
| 06 | `research/06-communication-sales.md` | Inquiry-to-order sales, order lifecycle, reviews, 28 message templates |
| 07 | `research/07-ads-programs-traffic.md` | Fiverr Ads, Seller Plus, Fiverr Go, Pro, external traffic, break-even math |
| 08 | `research/08-metrics.md` | Metric dictionary, benchmarks, diagnostic tree, recovery playbooks |
| 09 | `research/09-positioning-scaling.md` | Positioning, profile, agencies and Team Account, scaling roadmap, SOPs |
| 10 | `research/10-field-intel.md` | Platform data (investor reports), 32 myths, first-10-orders plan |
| 11 | `research/11-free-tools.md` | Verified free tools directory, licence traps, risky extensions |
| 12 | `research/12-agency-morocco.md` | Marketing-services market map, Morocco payments, FX, tax and legal |

## Evidence audit

- **How it was built:** on 2026-09-26, 12 research agents ran in parallel, one per topic. Each was told to:
  - read sources in full;
  - rank sources by credibility (official > established publications > experienced-seller field reports > low-trust listicles);
  - tag every claim;
  - write down conflicting claims side by side and give a reasoned verdict;
  - never recommend anything against Fiverr's Terms of Service.
- **Two limits hit the research:**
  1. The cloud environment's network policy blocked full-page reads of fiverr.com, help.fiverr.com, community.fiverr.com, investors.fiverr.com, Reddit, Medium and most blogs. Only GitHub, SourceForge and package registries were reachable.
  2. The session's 200-search web budget was used up partway through.
- **Actual counts** (from `sources/ALL-SOURCES.tsv`):

  | Measure | Count |
  |---|---|
  | Distinct sources logged | **688** |
  | Read in full | **287** |
  | Seen only as search-result extracts | **401** |
  | Official (tier-1) extract entries, mostly Fiverr pages | **249** |
  | Fiverr Help Center pages read end to end | **0** |

  - The 287 full reads are all from GitHub, SourceForge and package registries. They include mirrored official texts: Fiverr earnings-call transcripts, the 2020 Fiverr ToS, Moroccan Bulletin Officiel issues and the IANA tz database.
  - Many GitHub full reads are low-trust. They were read on purpose, to identify myths and ToS-risky tools.
- **Owner's goal: 1,000+ fully read articles. Not yet reached.** The advisor's **Deep Research mode** exists to close the gap once network access allows. It reads official pages first, upgrades `[VERIFY]` items, adds sources to the log and reports progress toward 1,000.

## Evidence tags (used everywhere)

- `[OFFICIAL]`: Fiverr's own words (usually a search extract this round).
- `[CONSENSUS]`: 3+ independent non-official sources agree.
- `[FIELD]` / `[ANECDOTAL]`: seller reports.
- `[DISPUTED]`: sources conflict; a verdict is given.
- `[REASONED]` / `[INFERENCE]`: logic or arithmetic.
- `[VERIFY]` / `[BACKGROUND]` / `[BG]`: prior knowledge not re-checked this round. Confirm it before acting.

## How to unlock full research (free)

1. Change **Network access** in the cloud environment settings (session title bar → environment → Edit):
   - either choose a broader access level;
   - or allow at least `fiverr.com`, `help.fiverr.com`, `community.fiverr.com`, `investors.fiverr.com`, `reddit.com` and `medium.com`.
2. Start a **new session**. The web-search budget is per session.
3. Tell the advisor: *"Run Deep Research mode."*

Or run Claude Code on your own computer (no egress restrictions) with this repository cloned. The agent works the same way there.
