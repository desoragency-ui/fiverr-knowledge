# Cluster 12: Selling marketing-agency services on Fiverr, and running the business from Morocco

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - The Morocco UTC+0 change (20 Sep 2026) was independently re-verified against the IANA tz database (Africa/Casablanca rule) during synthesis.


Knowledge base for DESORA's Fiverr advisor subagent. Compiled 2026-09-26 by research agent 12.

---

## 0. Read this first: how the research was done and how far to trust it

**Access limits during this session (stated honestly):**
- The organization's egress proxy **blocked WebFetch for almost every domain**: help.fiverr.com, fiverr.com, fr.fiverr.com, investors.fiverr.com, payoneer.com, tax.gov.ma, wikipedia, snrtnews, legalplace, hisab.ma, moneco and others. Only `github.com` and `raw.githubusercontent.com` were reachable. The user denied the Apify fetch alternative.
- The **shared WebSearch budget (200 calls per session, across all 12 agents) ran out after this agent's 3rd search.** This agent's 3 successful searches produced the "snippet" sources S01–S08, S48 and S49.
- Everything marked "fetched" was read in full from GitHub-hosted material. That includes several **official texts that people mirrored on GitHub**: Moroccan Bulletin Officiel issues (the Loi de Finances 2023 and CESE reports), Fiverr's own earnings-call transcripts, the IANA time-zone database, and datasets with page-level citations of the Office des Changes IGOC 2026. Many GitHub files are low-trust (T4). Several of them turned out to be **wrong on Moroccan tax rates**, which is useful because it documents common myths.
- **Target not met:** 39 sources fetched and 10 snippet sources, against the 85-fetch target. The coordinator should raise `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION` and allow-list at least help.fiverr.com, payoneer.com, tax.gov.ma, oc.gov.ma and ae.gov.ma, then re-run this cluster's verification list (Section 8).

**Tags used:**
- **[OFFICIAL]**: primary text from Fiverr (earnings call), the Moroccan state (Bulletin Officiel / LF text), or a regulator document cited to the page.
- **[CONSENSUS]**: two or more independent sources agree, and the claim is logically consistent.
- **[ANECDOTAL]**: a single field report or a low-tier source.
- **[DISPUTED]**: sources conflict. Both claims are given, with a verdict.
- **[BACKGROUND, UNVERIFIED]**: the model's prior knowledge (training data up to 2026), which could not be re-checked this session because of the access limits. The advisor must present these as "to verify" and never as fact.
- Source IDs such as (S42) refer to `12-sources.tsv`.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Fiverr is splitting into two markets, and DESORA must sell into the top one.** In Q4 2025, GMV from transactions over $1,000 grew **+22.8% YoY**. Projects over $1,000 are **<15% of marketplace GMV** but are the growth engine. Low-end transactions are "the majority of the marketplace", and Fiverr is now *intentionally deprioritizing* them. [OFFICIAL] (S29)
2. **Buyer count is shrinking and spend per buyer is rising.** Figures by quarter:
   - Q3 2025: 3.3M active buyers, $330 spend per buyer. (S30)
   - Q4 2025: 3.1M active buyers, $342 spend per buyer, 27.7% take rate. (S29)
   - Q1 2026: 2.9M active buyers (−17.8% YoY), $356 spend per buyer (+15.4%), marketplace revenue −13.6%, services revenue +30%. [OFFICIAL figures, reported via S31]

   **Implication:** fewer but bigger buyers. Win with larger scopes, retainers and bundles, not $5–$30 orders.
3. **Digital marketing is named by Fiverr management as a growing area.** Q4 2025: "digital marketing is one of them where we're seeing nice growth." Q3 2025: "Alongside programming and tech, we have digital marketing, video and animation, which are also growing very strong." [OFFICIAL] (S29, S30)
4. **AI is hollowing out commodity categories, according to Fiverr itself:**
   - "Writing and translation was heavily impacted by AI, down 20% over the year" (2025).
   - "Simple website building [is] accelerating the decline as a result of vibe coding." [OFFICIAL] (S29)

   **Implication:** do not lead with blog writing, simple WordPress sites or cheap logos.
5. **AI-native work is the hottest demand pocket.** Management says demand "continues to surge in areas such as AI agents, workflow automation, and vibe coding." Managed services grew **+65% YoY with an average deal size of $17,000**. Dynamic Matching briefs have a **$2,200 AOV**, and **15% of briefs exceed $1,000**. [OFFICIAL] (S30)
6. **A UGC signal that fits DESORA:** Fiverr's own showcase managed-services deal is "ongoing **multilingual UGC production for the Canadian market**, coordinating multiple creators each month". That is a recurring, multi-creator, multilingual retainer, which is exactly the shape a French/Arabic/English Moroccan agency can deliver. [OFFICIAL] (S29)
7. **Price structure norm from real Fiverr data** (own analysis of 663 gigs with 2023–2026 snapshots, S19):
   - 87% of gigs use 3 packages.
   - Median Standard is **2.0×** Basic; median Premium is **3.5×** Basic.
   - Median Basic list price is $30; 11% of gigs sit at $5 and 23% start at ≥$100.
   - Cheaper gigs carry more reviews (median 176 reviews for sub-$10 gigs vs 21 for $100+), which shows that the low end is a volume game DESORA should not play. [CONSENSUS with S37 archetypes]
8. **Marketing gig list prices** (median Basic / Standard / Premium, 2023–2026, small samples, S19). Use these as anchors only, not targets:

   | Category | n | Basic | Standard | Premium |
   |---|---|---|---|---|
   | Social media | 26 | $28 | $70 | $120 |
   | Paid ads | 10 | $45 | $70 | $100 |
   | SEO | 21 | $125 | $225 | $300 |
   | Email marketing | 12 | $100 | $250 | $500 |
   | Web / WordPress / Shopify | 53 | $80 | $155 | $320 |
   | Logo / brand | 37 | $30 | $60 | $115 |
9. **The Moroccan auto-entrepreneur (AE) regime is a starter vehicle, not an agency vehicle:**
   - The service ceiling is 200,000 MAD/yr [CONSENSUS].
   - AEs **cannot recruit employees** [OFFICIAL] (S10, CESE in BO 7470).
   - Since LF 2023, service revenue from the **same client above 80,000 MAD/yr** is subject to a **30% liberatory withholding "opérée par ledit client"** [OFFICIAL, LF 2023 text] (S42, S10).

   An agency with a team needs a SARL / SARL AU.
10. **Correct AE income-tax rates are 0.5% (commerce/industry/crafts) and 1% (services) of turnover collected.** [CONSENSUS] (S04, S06–S08, S13). Several GitHub "guides" claim 1%/2%, and one claims 500k/1M ceilings. **These are myths** (S14, S15, S25, S26). The advisor must not repeat them.
11. **SARL corporate tax (IS) from fiscal years opened on or after 1 Jan 2026 is 20%** (35% if net profit ≥100M MAD). This ends the LF 2023 phase-in for profits ≤300k MAD: 12.5% → 15% → 17.5% → 20%. Dividend withholding fell to **10% from 2026**. [OFFICIAL] (S42; CESE confirmation S10). Guides still quoting "10% under 300k MAD" (S09, S15, S27) are **outdated**.
12. **The 80k same-client rule is legally unclear for Fiverr income.** The law makes *the client* the withholding agent. Foreign Fiverr buyers, and Fiverr itself (the payer), are not Moroccan withholding agents. The law does not say which of them is "the client" for marketplace sales. **Verify with an expert-comptable before relying on the AE regime for Fiverr revenue above about 80k MAD/yr.** [DISPUTED / OPEN]
13. **Morocco's FX rules require service export income to come home.** IGOC 2026 (in force 1 Jan 2026):
   - Art. 97: service-export proceeds must be **repatriated within 90 days of performance**.
   - Art. 98: allows **service-exporter FX / convertible-dirham accounts**.

   [CONSENSUS citing OFFICIAL] (S40, S33). Do not leave earnings parked abroad for months, and do not route them through crypto (next point).
14. **Crypto payouts are off-limits.** An Office des Changes communiqué of 20 Nov 2017 treats virtual-currency transactions as a breach of exchange regulations. Crypto bill 42.25 was still a draft on 18 Sep 2026. [CONSENSUS citing OFFICIAL] (S33)
15. **Default payout rail: Payoneer**, either as a bank transfer to a Moroccan bank in MAD or through a Payoneer balance. The official Fiverr help pages (via search) give these rules:
   - $1 fee for 2-day delivery, $3 for 2-hour delivery.
   - Up to $5,000 per transaction.
   - A 24-hour wait after adding or changing the method.
   - Only one Payoneer method active at a time.

   [OFFICIAL, snippet] (S01–S03). **Payoneer's USD→MAD conversion cost is not published for Morocco.** Comparable published rates are 3% + $1 (Bangladesh route) and 1–4% (India). Budget **2–4% all-in** until verified. [ANECDOTAL/DISPUTED] (S34, S35)
16. **PayPal in Morocco has changed, but its use on Fiverr is unverified.** PayPal now lists Morocco as eligible to *receive payouts* "through third party partners", and receiving "requires linking your account to a licensed local partner". [CONSENSUS citing PayPal help, read 2026-09-18] (S33). Whether Fiverr offers PayPal withdrawal to Moroccan sellers could not be verified. Treat "PayPal doesn't work in Morocco" as **outdated** and "use PayPal for Fiverr" as **unverified**.
17. **Morocco returned to UTC+0 (GMT) on 20 September 2026 at 02:00.** Decree 2.26.530 abrogated the 2018 permanent GMT+1 decree and set no DST. [CONSENSUS: IANA tz db citing BO 7521, MAP and Morocco World News] (S39). Any source saying "Morocco is GMT+1" is now **outdated**.
   - Morocco is now on the same clock as London, Dublin and Lisbon.
   - It is 1 hour behind Paris/Madrid/Brussels in winter and 2 hours behind in summer.
   - It is 5 hours ahead of New York in winter (EST) and 4 hours ahead in summer (EDT).
18. **Services export is VAT-exempt with right of deduction (CGI art. 92)** for a VAT-registered company [ANECDOTAL (S27) plus BACKGROUND, consistent]. An AE is outside VAT altogether: no VAT on invoices, and input VAT cannot be recovered [CONSENSUS] (S14, S26).
19. **Fiverr has a separate agency account type.** A Fiverr help article titled "Working with agencies on Fiverr" (cited by S22) states that agencies are a distinct account type. The top AI-automation sellers "are essentially running micro-agencies" with team members and Fiverr Pro badges (S38). [ANECDOTAL; details of eligibility unverified]
20. **Buyer trust is the scarce asset in 2026.** Fiverr's CEO described "a flood of low-quality AI output eroding marketplace trust" (Q1 2026, S31). Reddit and press synthesis reports "AI slop" fatigue (S45). **The differentiation that sells:** named strategists, real reporting, commercial-use rights included, original work, fast human communication. A competitor blog lists what cheap social packages *lack*: strategy, original design, usage rights, brand voice, real reporting (S37). DESORA should make each of those a package line item.
21. **Fiverr revenue is contracting overall.** 2026 guidance is revenue of $380–420M (−12% to −3% YoY) after a September 2025 restructuring into an "AI-first" company [OFFICIAL] (S29, S30). Expect volatility in search traffic. Build repeat-buyer and retainer revenue so DESORA does not depend on new-gig impressions.
22. **Fiverr's own search is becoming AI-mediated.** Fiverr is "expanding our generative engine optimization, GEO, capabilities, integrating our catalog into native AI channels". Management also says hiring decisions "will increasingly be influenced ... by AI agents" [OFFICIAL] (S30, S29). Clear, structured, specific gig copy with explicit deliverables and outcomes will matter more for being matched.

---

## 2. Part A: The marketing-services market on Fiverr

### 2.1 Category structure (what the taxonomy looks like)

**Source quality caveat:** the subcategory slugs below come from a GitHub mirror of Fiverr category URLs (S28, S47; last commit 2025-01-09). The mirror has **no "AI Services" vertical**, so it predates or omits that vertical. [ANECDOTAL for exact current naming; structure is consistent with BACKGROUND knowledge]

**Digital Marketing (`/categories/online-marketing/`)** has 27 subcategory slugs. The ones relevant to DESORA:
- **Social:**
  - `social-marketing`, with service types social-media-management, organic-social-media, paid-social-media, social-content, social-media-strategy, profile-setup-integration, analytics-tracking.
  - `social-commerce`, `influencer-marketing`, `community-management`.
- **Search:**
  - `seo-services`: on-page, technical, off-page, keyword-research, competitor-analysis, seo-strategy, seo-packages, voice-search.
  - `local-seo-services`: google-my-business, local-citation.
  - `search-engine-marketing`: SEM setup/strategy, shopping-ads, ad review/optimization.
  - `e-commerce-marketing`: e-commerce SEO, promoted listings, strategy.
- **Methods:**
  - `email-marketing`: email-automation, campaign-management, cold-emailing, audience-development, platform-support.
  - `display-advertising`: management, retargeting, native, audio.
  - `online-video-marketing`: YouTube channel management, video SEO, video ads.
  - `text-message-marketing`, `affiliate-marketing`, `public-relations`, `guest-posting-services`.
- **Strategy:**
  - `marketing-strategy`: digital-marketing-strategy, brand-strategy, **ugc-strategy**, retention-strategy, omnichannel, ABM, consulting.
  - `conversion-rate-optimization`, `web-analytics-services`, `marketing-concepts-and-ideation`, `marketing-tips-and-advice`.
- **Niche:** music-promotion, podcast-marketing, mobile-app-marketing, book-marketing, crowdfunding.

**Adjacent verticals DESORA can sell into (S47):**
- **Video & Animation:** `ugc-videos`, `short-video-ads`, `social-media-videos`, `video-editing`, `ecommerce-product-videos`, `corporate-videos`, `subtitles-captions`, `logo-animation-services`.
- **Graphics & Design:** `social-media-design`, `creative-logo-design`, `brand-style-guides`, `landing-page-design`, `presentations-design`, `product-packaging-design`, `ai-image-editing`.
- **Writing & Translation:** `social-media-copywriting`, `ad-copy`, `sales-copy`, `email-copy`, `website-content`, `case-study-writing`, `tone-of-voice`, `localization`, `quality-translation-services`.
- **Programming & Tech:** `website-development`, `chatbots`, `ai-coding`, `website-maintenance`, and more.
- **AI Services** is a separate vertical (launched 2023, per BACKGROUND, UNVERIFIED). It is not in the mirror. Verify its current subcategories (AI agents, AI automation, chatbot development) directly on Fiverr before placing automation gigs.

**Advisor rule:** always place a gig in the most specific service type. It governs which category page and filters it appears in. Where a service spans two verticals (for example "UGC ads with editing"), pick the vertical whose buyers match the offer: Video & Animation for UGC videos, Digital Marketing for strategy and management.

### 2.2 What Fiverr's own numbers say about demand (the macro picture)

| Metric | Q3 2025 (S30) | Q4 2025 (S29) | Q1 2026 (S31) |
|---|---|---|---|
| Active buyers (annual) | 3.3M | 3.1M | 2.9M (−17.8% YoY) |
| Spend per buyer | $330 | $342 | $356 (+15.4%) |
| Marketplace take rate | 27.6% | 27.7% | n/a |
| Marketplace revenue | $73.6M | $71.5M | $67.1M (−13.6%) |
| Services revenue (Ads, Seller Plus, AutoDS) | n/a | $35.6M (+18%) | $38.4M (+30%) |
| GMV >$1k projects | growing | +22.8% YoY | "strong double-digit"; clients completing these +18% |

Other official data points:
- **Programming & tech is about 20% of Fiverr's business**, growing about 14%. Digital marketing, video and animation are also "growing very strong" (Q3 2025).
- **Seller Plus subscriptions grew +20% YoY**, helped by Fiverr Go. Fiverr Ads grew double digits. (Q3 2025, S30)
- Fiverr Go is no longer pushed as a standalone product. Its assets (scoping, matching, communication aids) are being folded into the core product. (Q4 2025, S29)
- "SMB sentiment" is soft, and management "assumes no improvement in the SMB side". The strategy is upmarket plus AI-native channels. (S30, S29)

**Interpretation for DESORA [reasoned verdict]:**
- The volume of small SMB buyers is shrinking. Buyers who remain spend more.
- A new agency's best path is:
  1. a small number of **high-intent, well-scoped gigs** priced at the mid/upper band;
  2. **custom offers and milestones** for projects over $1,000;
  3. **monthly retainers** that turn one buyer into recurring GMV.
- Chasing impressions with $5–$20 entry packages feeds exactly the segment Fiverr is deprioritizing.

### 2.3 AI disruption evidence (so the advisor can judge categories)

- **Official (Fiverr, Q4 2025):** writing and translation −20% in 2025; simple website building declining because of vibe coding; digital marketing growing (S29).
- **Academic (secondary citations in S20, draft paper):**
  - Hui, Reshef & Zhou (2023): writing-related freelancers saw about 2% fewer monthly jobs and about 5.2% lower earnings after ChatGPT (on a major platform).
  - Demirci, Hannane & Zhu (2024): −21% job postings in automation-prone tasks within 8 months, and −17% for image-generation-related work.
  - Note: another aggregator (S32) attributes a "21% decline / 15% rate drop" to Hui et al. That **conflates two papers**. **Verdict:** trust the S20 attribution (it is internally consistent) and verify against the original papers before quoting numbers to clients.
- **Price-level evidence (S18, matched-panel pilot, 1,245 Fiverr gigs):**
  - Within-gig *list prices* for surviving sellers kept rising through Q4 2024 (index 312, base 2019Q1 = 100), then eased in 2025Q1–Q2 (to 246).
  - Writing prices still rose after ChatGPT (+33%), but below trend.
  - **Verdict:** AI hits *demand volume* and buyer count more than the list prices of sellers who survive. Survivors hold price by moving up in quality.
  - [ANECDOTAL/pilot, n small, survivorship bias]

### 2.4 Market map for DESORA

Price columns are list prices observed on Fiverr. "Own data" means the S19 snapshot analysis for 2023–2026, with n being the number of gigs. Buyers' actual spend on custom offers is often higher.

| Subcategory | Demand signal | Saturation | Typical price ranges | Differentiation angles for DESORA | AI-disruption risk |
|---|---|---|---|---|---|
| **Social media management** (organic, content, community) | Digital marketing growing [OFFICIAL]; the most common SMB ask | **Very high** at low end; "30 posts for $95" offers are widespread [ANECDOTAL S37] | Own data (n=26): Basic med $28 (p25–p75 $10–100), Std $70, Prem $120 (max $695). S37 archetypes: Basic $25–55, Std $75–145, Prem $195–395 per month | Strategy doc plus real monthly report (reach, engagement, leads, not screenshots); original design (no shared Canva templates); **commercial-use rights included**; brand-voice onboarding; **bilingual FR/EN plus Arabic/Darija**; community management hours stated | **Medium–high** for caption/template work; **low–medium** for strategy, community and reporting |
| **Paid social (Meta/TikTok ads)** | Tied to ROI; buyers with budgets; `paid-social-media` subcategory | High | Own data (n=10): Basic med $45, Std $70, Prem $100 (list prices; real management retainers usually custom). [BACKGROUND, UNVERIFIED] management fees are often a flat monthly fee or a % of ad spend | Pixel/Conversions API and GA4 tracking setup; creative testing plan; weekly dashboard; ROAS/CPA case studies (anonymized); French and MENA audience expertise | **Medium**. Platform automation (Advantage+, PMax) reduces manual bidding work but raises the value of creative strategy [BACKGROUND] |
| **Google Ads / SEM** | `search-engine-marketing` with shopping-ads and setup/strategy | High | Little data; same order as paid social [ANECDOTAL] | Account audits as a low-risk entry offer; conversion tracking fixes; Shopping/PMax for e-commerce | Medium |
| **SEO** (on/off/technical) | Steady; spam-heavy | **Very high**, noisy (backlink packages) | Own data (n=21): Basic med $125, Std $225, Prem $300 (max $1,525) | Technical audits with prioritized fixes; **GEO / AI-search visibility audits** (Fiverr itself invests in GEO [OFFICIAL]); French-language SEO for FR/BE/CH/QC sites | **Medium–high** for content-led SEO; low for technical |
| **Local SEO / Google Business Profile** | Dedicated service types (GMB, citations) [S28] | Medium (less data) | Own data n=2 (insufficient) | Francophone local businesses (France, Belgium, Quebec, Morocco); GBP optimization plus review-generation system plus monthly posts | Low–medium |
| **Email marketing** (Klaviyo/Mailchimp flows, cold email) | email-automation, campaign-mgmt, cold-emailing | Medium–high | Own data (n=12): Basic med $100, Std $250, Prem $500 (max $1,000) | E-commerce flows (welcome, abandoned cart, post-purchase) with revenue attribution; bilingual flows | Medium |
| **Branding / logo** | Large but commoditized | **Extreme** at low end | Own data (n=37): Basic med $30, Std $60, Prem $115 (max $2,200) | Sell **brand strategy plus identity system** (`brand-strategy`, `brand-style-guides`) at $500+; avoid bare logo gigs | **High** for bare logos (AI image tools) |
| **UGC videos / UGC strategy** | `ugc-videos` and `ugc-strategy` service types; Fiverr showcases multilingual UGC managed services [OFFICIAL] | Medium; creator-supply driven | External anchors: Billo $99/video, JoinBrands $75–300, Collabstr UGC avg $177 (down 44% YoY) [ANECDOTAL S46] | **Multilingual (FR/AR/Darija/EN) creator network**; UGC scripting plus hooks plus editing plus ad-ready variants; monthly UGC retainers | Medium (AI avatars rising), but authenticity demand persists |
| **Short-form video editing** (Reels/TikTok/Shorts) | Video & Animation "growing very strong" [OFFICIAL] | High | Own data (broad "video", n=72): Basic med $32, Std $70, Prem $120 (p75 $500). S37: Basic $35–95, Std $95–295, Prem $250–595 | Performance-creative angle (hook testing, ad variants); multilingual subtitles; content-repurposing retainers (1 long video to 10 shorts) | Medium (auto-editing tools) |
| **Copywriting / content writing** | Writing & translation **−20% in 2025** [OFFICIAL] | Very high | Own data: copywriting n=7 Basic med $15; content writing n=19 Basic med $35 | Only as part of bundles: ad copy plus landing-page CRO; "humanize/brand-voice" editing; French-native copy | **Very high** |
| **Web design (WordPress/Shopify/landing pages)** | Simple sites **declining** (vibe coding) [OFFICIAL]; complex tech growing | High | Own data (n=53): Basic med $80, Std $155, Prem $320 (max $3,990) | Conversion landing pages tied to ad campaigns; Shopify marketing stack (tracking, email, reviews); avoid "5-page WordPress site" as a lead gig | **High** for simple sites |
| **AI automation / chatbots** (marketing use cases) | "Surge" in AI agents and workflow automation [OFFICIAL]; managed services +65% | Rising fast; many course-trained entrants | $100–$800 per project typical; top sellers are micro-agencies with Zapier/GHL credentials and Fiverr Pro [ANECDOTAL S38]; own data n=4 Basic med $75 | Marketing-specific automations: lead capture to CRM to WhatsApp/email follow-up; Instagram/WhatsApp DM bots in FR/AR/EN; reporting automations | Low (this *is* the AI wave), but commoditizing fast |
| **Marketing strategy / consulting** | `digital-marketing-strategy`, `brand-strategy`, retention, omnichannel; matches the >$1k growth | Medium | Own data (n=4): Basic med $162, Prem med $350 (max $1,000) | Paid discovery/audit offers that lead into retainers; market-entry strategy for Francophone Africa, MENA and Europe | Low–medium |
| **Translation / localization** | Writing & translation −20% [OFFICIAL] | Very high, price collapse (own data Basic med $5) | $5–$70 | Only as **marketing transcreation** add-on (FR/AR/Darija) inside campaigns | **Very high** |

**Data caveats:** the S19 sample is small and random by seller, not category-representative. Prices are *listed* package prices from archived gig pages (2023–2026 snapshots; 443 of 663 from 2024). S37 is a competitor's blog written to make Fiverr look bad, so read its "real cost" claims as marketing. Its package price archetypes are plausible and consistent with S19. [ANECDOTAL]

### 2.5 How agencies (vs. solo freelancers) win on Fiverr

What is known:
- **Agency account type exists.** A Fiverr help article, "Working with agencies on Fiverr", is cited by S22 (July 2026, via search index). It says agencies are a *separate account type* from the one-person seller account. Eligibility, team-seat mechanics and fees were **not verifiable** this session. [ANECDOTAL, pointing to OFFICIAL] Action: read that help article in full before choosing account structure.
- **One account per person** is enforced. The account must belong to an ID-verified real human, or be a verified business account. Multiple personal accounts, bots and off-platform solicitation fall under "Integrity and Authenticity" (Community Standards, cited in S22). [ANECDOTAL, pointing to OFFICIAL] **Never let team members operate a founder's personal seller account from different countries or devices without the agency/team features. Never buy or rent accounts.**
- **Top sellers already operate as micro-agencies.** They show team members, certifications (for example Zapier Platinum Partner, GoHighLevel Certified Admin) and Fiverr Pro badges, and they charge "agency-adjacent rates at the top end" (S38). [ANECDOTAL]
- **Fiverr is building agency-style channels itself:** Managed Services (avg $17k deals), Dynamic Matching (AOV $2,200) and enterprise/AI-native go-to-market (S30, S29). [OFFICIAL] **Implication:** Fiverr's highest-value buyers are increasingly *matched*, not searched. Being eligible for matching requires strong quality metrics and possibly Pro vetting. [Reasoned inference]
- **Friction to know about:** Fiverr Pro sellers complain that enterprise matching sometimes brings "lowball budgets of merely $50" (Reddit synthesis, S45). [ANECDOTAL] Quote and qualify matched briefs carefully.

Agency playbook [reasoned; combine with the other clusters' SEO and metrics findings]:
1. **Present a team, not a person, inside the rules:**
   - The profile description names the agency.
   - Gig images and portfolio show the team and process (strategy → production → reporting).
   - The FAQ explains who does what.
   - Do not post contact details, emails or external links. [BACKGROUND, consistent with Fiverr ToS]
2. **Build a small, non-overlapping gig set** where each gig answers one buyer job (see Section 5). Duplicate or near-duplicate gigs are prohibited (S23 claims this is in Fiverr guidelines). [ANECDOTAL]
3. **Use custom offers and milestones for anything over about $500**, and **subscriptions/retainers for recurring work**. [BACKGROUND, UNVERIFIED] Fiverr has "Subscriptions" (recurring orders at a discount) and "Milestones" features. Confirm current availability and level requirements in your seller dashboard.
4. **Aim at Fiverr Pro once the agency has 10–20 solid reviews and case studies.** Pro vetting unlocks access to Fiverr Business/enterprise buyers. [BACKGROUND, UNVERIFIED: application-based vetting; verify current agency eligibility]
5. **Response time and availability matter operationally.** New gigs appear to get a short "honeymoon" visibility test of about 7–10 days (S22 citing 2026 third-party guides) [ANECDOTAL]. A team that answers inside 1 hour across Europe/US hours has a structural edge (see the time-zone section).

### 2.6 Retainers and subscriptions for marketing services

- **Why retainers fit the 2026 market:** Fiverr's growth is in spend per buyer and bigger projects [OFFICIAL]. A monthly retainer is the natural "wallet-share" product.
- **Structure that works [reasoned, consistent with S19 package ratios]:**
  - **Basic ("Starter month")**: 1 platform, 12 posts, 1 report. A priced-to-convert entry (about $150–250).
  - **Standard ("Growth month")**: 2 platforms, 20 posts, 8 short videos, community management 3×/week, monthly strategy call. About 2× Basic.
  - **Premium ("Scale month")**: 3 platforms plus paid-ads management (ad spend separate) plus UGC or video pack plus bi-weekly report. About 3.5× Basic.
  - Offer the Standard and Premium tiers as a **monthly subscription** where Fiverr allows it, or as a **recurring custom offer** each month.
- **Keep ad spend outside Fiverr orders.** The client pays Meta/Google directly. The Fiverr order covers management only. This keeps accounting clean and avoids handling client money. [Reasoned; also avoids FX-rule complications]
- **Scope protection:** cap revisions (1–2 per deliverable) and state them. Unlimited revisions increase conflict and hurt Success Score (S23 claim) [ANECDOTAL].

### 2.7 Proof of results buyers trust, and how to show it without breaking rules

What buyers trust:
- **Specific, dated outcomes** (for example "CPA from €24 to €11 in 6 weeks, FR e-commerce, €3k/month spend").
- **Process transparency.**
- **Real reporting samples.**
- **Named humans.**

Buyers distrust generic AI copy and template portfolios (S45, S37). [ANECDOTAL/CONSENSUS]

**Rules-safe presentation [BACKGROUND, UNVERIFIED on exact ToS wording; confirm in Fiverr ToS / Community Standards]:**
- **Get written client permission** before showing any client work. Otherwise **anonymize**: remove brand names, logos, account IDs, URLs, faces and personal data. Blur identifiers in Ads Manager or GA4 screenshots.
- **No external links, emails, phone numbers or social handles** in gigs, portfolio items or messages. Fiverr prohibits steering buyers off-platform. **Promoting your Fiverr gig from outside** (LinkedIn, website, social) is allowed per S23 [ANECDOTAL].
- Put case studies **inside Fiverr**:
  - portfolio projects (images, PDF, video) with a one-line result caption;
  - gig gallery images with before/after metrics;
  - a 60–90 second gig video walking through a sanitized report.
- **Sample report as a deliverable preview:** a 1-page anonymized monthly report PDF in the gallery shows exactly what "reporting" means, which competitors fail to define (S37).
- **Never fabricate** metrics, reviews or client logos. It violates Fiverr policy and misleads buyers.
- **AI disclosure:** Fiverr's Community Standards on AI-generated content (cited via S22) allow AI-assisted work if it is customized per order and the seller holds the rights. There is no blanket disclosure mandate, but deception is punishable. Recommended stance: "AI-assisted, human-directed and reviewed." [ANECDOTAL, pointing to OFFICIAL]

### 2.8 French-language and Arabic-language opportunities

What is established:
- **fr.fiverr.com exists** as a localized French site. Its French help centre is live, for example "Retirer des fonds" (S03). [OFFICIAL, snippet] [BACKGROUND, UNVERIFIED] Fiverr localizes into several European languages (FR, DE, ES, PT, IT, NL). There is no Arabic-language Fiverr interface. Buyers can filter by the languages sellers speak, and Arabic and French are among them.
- **Demand evidence for multilingual work:** Fiverr's showcased managed deal was multilingual UGC for the Canadian market [OFFICIAL] (S29). Localization and transcreation service types exist in Writing & Translation (S47).
- **Could not be verified this session:**
  - gig-count or competition data per language;
  - whether French-language gigs rank separately on fr.fiverr.com;
  - French or Arabic buyer volumes.

  [OPEN]

Reasoned strategy (label as hypothesis for the advisor):
- **Use native French as a positioning edge, not as a separate "cheap" market.** French-speaking buyers (France, Belgium, Switzerland, Quebec, francophone Africa) often prefer to brief in French. A Moroccan agency with native French plus Maghreb/MENA cultural knowledge can credibly offer:
  - French-first social media management;
  - French and Arabic ad creatives;
  - Darija/Arabic UGC for MENA and diaspora brands;
  - bilingual FR/EN campaigns for Canadian brands.
- **Test, don't assume.** Create one gig with a French title/description focus (for example "Community manager francophone") next to an English equivalent. Only do this if they target *different buyer jobs*, to avoid duplicate-gig issues. Compare impressions, clicks and orders over 30+ days.
- **Arabic:** the Gulf and MENA buyer base on Fiverr is unquantified here. Arabic-market gigs make most sense for UGC, social management and ad localization aimed at Gulf/MENA brands, where native Arabic and dialect skills are a real barrier to entry.

---

## 3. Part B: Morocco operations (payments, FX, tax/legal, time zone)

> **Legal and tax content: verify with an expert-comptable (OEC Maroc) before acting.** Laws change every January (Loi de Finances). The dates next to each claim are the dates of the law or source. Nothing here is personalized advice.

### 3.1 Getting paid on Fiverr from Morocco

**Fiverr withdrawal methods** listed on Fiverr's help centre (S01; corroborated by S49): PayPal, bank transfer via Payoneer, Payoneer account, and the Fiverr Revenue Card. [OFFICIAL, snippet] **Availability depends on the seller's country.** The help pages themselves tell sellers to check with Payoneer for coverage (S02).

**Payoneer (the default route for Moroccan sellers):**
- Two Fiverr payout options (S01, S02, S03) [OFFICIAL, snippet]:
  - (a) **Bank Transfer via Payoneer**: funds go straight to a local bank account.
  - (b) **Payoneer Account**: funds go to the Payoneer balance, then you withdraw.
- Fees and limits from Fiverr [OFFICIAL, snippet]:
  - **$1 per withdrawal** for delivery in about 2 days; **$3** for about 2 hours.
  - **Up to $5,000 per withdrawal transaction.**
  - **24-hour wait** after adding or changing a Payoneer method.
  - **Only one active Payoneer method at a time.** Remove the old method before adding a new one.
- **Morocco is a Payoneer country.** It appears in Payoneer coverage lists, and withdrawal is to Moroccan bank accounts in MAD (S36) [ANECDOTAL]. Payoneer does not publish a public per-country list, only "190+ countries and territories" (S33).
- **Conversion cost USD→MAD: not verified for Morocco.** Published analogues from 2026-09-18 reads:
  - Payoneer to bKash (Bangladesh): **3% conversion + $1 per transaction** (S34).
  - Payoneer India: **1–4% of the amount converted** (S35).
  - Older guides often say "up to 2%" [BACKGROUND].
  - **Verdict [DISPUTED]:** budget **2–4% plus fixed fees** and read the live fee screen before confirming. Payoneer shows fees and rate before submission (S36).
- **Payoneer annual account fee:** S35 (India pricing page) says **$29.95/yr if under $6,000 is received in 12 months**. Older guides said under $2,000 [BACKGROUND]. [DISPUTED: check the Moroccan-account pricing page]
- **Name matching [BACKGROUND, UNVERIFIED but standard KYC practice]:**
  - The Fiverr account holder, the Payoneer account holder and the bank account holder must be the **same person or the same legal entity**.
  - Never withdraw to a relative's or friend's account.
  - Never use someone else's Payoneer. It violates Fiverr/Payoneer terms and Moroccan AML rules.

**PayPal:**
- **Outdated belief:** "PayPal in Morocco can only send, not receive."
- **Current state (read 2026-09-18):**
  - PayPal's help page for Morocco says the country is served "through third party partners".
  - "receiving money with PayPal requires linking your account to a licensed local partner."
  - Morocco appears on PayPal's list of countries eligible to receive payouts.

  [CONSENSUS citing PayPal pages] (S33)
- **Unverified:** whether Fiverr offers PayPal withdrawal to Moroccan-resident sellers, and at what cost. **Advisor stance:** check what the Fiverr Earnings page offers once logged in. Treat Payoneer as primary until then.

**Fiverr Revenue Card:** still listed by Fiverr's help centre as a withdrawal method (S01). Availability for Moroccan residents was not verifiable. [OPEN] Do not promise it.

**Bank side in Morocco:**
- **Al Barid Bank** states customers can receive money from abroad by **SWIFT** into their account (S33, read 2026-09-18). [CONSENSUS citing bank page]
- **Wise** can *send* MAD to Morocco, but **Moroccan residents cannot hold a Wise account** (S33). Wise is therefore not a receiving solution for a Morocco-based seller.
- **Service-exporter accounts:** IGOC 2026 **Art. 98** authorises service exporters to hold **FX or convertible-dirham accounts** (S40). [CONSENSUS citing OFFICIAL] The share of proceeds that may be credited, and bank-specific documentation, were not verified. Ask the bank for a *compte en devises / dirhams convertibles exportateur de services*, and bring evidence such as Fiverr earnings statements and invoices.

**Clearance before money is withdrawable:**
- **14 days** after order completion for New/Level 1 sellers, **7 days** for Level 2/Top Rated/Pro (S22, citing 2026 third-party guides). [ANECDOTAL]
- One outdated T4 source says 30 days for new sellers (S44). [DISPUTED; trust 14/7 as current, but verify in the dashboard]
- Orders **auto-complete 3 days after delivery** if the buyer does not act (S22 citing Fiverr's order-status guide). [ANECDOTAL, pointing to OFFICIAL]

**Commission:** Fiverr keeps **20% of each order** from the seller (S22, citing two 2026 guides) [CONSENSUS]. The platform "take rate" of 27.6–27.7% (S29, S30) [OFFICIAL] combines seller commission, buyer service fees and other items. It is **not** the seller's fee.

### 3.2 Foreign-exchange rules (Office des Changes): 2026 state

- **IGOC 2026** (Instruction Générale des Opérations de Change) **entered into force 1 January 2026** and is the controlling general instruction (S40). It replaced the 2024 edition, which was published 2 Jan 2024 (S24). [CONSENSUS citing OFFICIAL]
- **Art. 97: services-export proceeds must be repatriated within 90 days of performance of the service.** Two independent write-ups, S40 (article and page cited) and S33, both give 90 days for services. Goods have 150 days (Art. 89). [CONSENSUS citing OFFICIAL]
  - **Practical reading [reasoned; verify with the bank/accountant]:** do not accumulate Fiverr or Payoneer balances for months. Withdraw to the Moroccan account on a regular cycle (monthly, and within 90 days of each order's completion), and keep Fiverr order records to justify the inflows.
- **Art. 98:** service exporters may hold **FX / convertible-dirham accounts**. **Art. 71:** some *service imports*, including "intermediary collection of funds for non-resident services", need prior Office des Changes agreement (S40, S41).
  - **Implication:** DESORA collecting money in Morocco *on behalf of* foreign freelancers (a reseller/white-label model paying foreign subcontractors) needs prior checking. [CONSENSUS citing OFFICIAL]
- **Crypto:** the OC communiqué of **20 Nov 2017** says virtual-currency transactions breach the exchange regulations. Draft crypto-asset **bill 42.25** was still at the draft stage on 18 Sep 2026 (S33). [CONSENSUS citing OFFICIAL] **Do not accept or withdraw Fiverr income via crypto.**
- **Travel/personal allowance (useful for paying foreign SaaS as an individual):** IGOC 2026 Art. 141 sets a base of **100,000 MAD plus 30% of the prior year's income tax paid, capped at 500,000 MAD per person per year** (S40). [CONSENSUS citing OFFICIAL] Company payments for foreign software/services go through the bank under the service-import rules instead. Note: an allowance for e-commerce/online payments exists separately. [BACKGROUND, UNVERIFIED: amount not verified]
- **Monetary context:** the dirham floats within a **±5% band** around a **EUR 60% / USD 40%** basket (Bank Al-Maghrib; second phase 9 Mar 2020) (S40). [CONSENSUS citing OFFICIAL] USD earnings therefore carry EUR/USD cross-risk when converted to MAD.
- **AML:** Morocco left the FATF grey list in **February 2023** (S24). [ANECDOTAL] Banks still apply enhanced KYC to recurring foreign inflows. Keep statements and invoices.

### 3.3 Tax and legal status

#### 3.3.1 Auto-entrepreneur (AE), Loi 114-13 (2015)

| Item | Current rule | Status / source |
|---|---|---|
| Turnover ceiling, services | **200,000 MAD/yr** (≈ US$20–22k at ~9–10 MAD/USD; FX approximate) | [CONSENSUS] S04, S06–S09, S13 |
| Ceiling, commerce/industry/crafts | **500,000 MAD/yr** | [CONSENSUS] |
| Income tax (IR), services | **1% of turnover collected**, liberatory | [CONSENSUS] S04, S06–S08, S13 ("guide DGI 2025" per S04/S06 snippets) |
| IR, commerce/industry/crafts | **0.5%** | [CONSENSUS] |
| **Same-client rule (since LF 2023)** | Service turnover from the **same client above 80,000 MAD/yr**: the **surplus** is subject to IR **by withholding at source "opérée par ledit client"** at **30%, liberatory** (CGI art. 40-I/42 bis, 45 bis-II, 73-II-G-8°; also a declarative item in art. 82 quater) | [OFFICIAL] S42 (BO 7154 bis, 23-12-2022); confirmed still in force by the CESE text in BO 7470 (1 Jan 2026) (S10) |
| Worked example | One client paying 110,000 MAD/yr: 80k × 1% + 30k × 30% = 9,800 MAD, i.e. an **effective rate of about 8.9%** | S07 gives 8.91% [ANECDOTAL]; arithmetic checks out |
| Employees | **AE cannot recruit salaried staff** | [OFFICIAL] S10 (CESE: "l'impossibilité de recruter des salariés") |
| VAT | Outside VAT: no VAT on invoices ("Exonéré de TVA" mention), no input-VAT recovery | [CONSENSUS] S14, S26 |
| Declarations | Quarterly turnover declaration and payment on **ae.gov.ma**, even when turnover is zero. Deadlines per S14: 30 Apr, 31 Jul, 31 Oct, 31 Jan | [ANECDOTAL] S14; verify on ae.gov.ma |
| Health insurance (AMO) | AE must contribute to AMO via CNSS. **Amount disputed:** S14/S15 claim a flat 300 MAD/quarter; S43 cites decree 2.21.477 | [DISPUTED], verify on cnss.ma / damancom.ma |
| Status trend | About **440,916 active AEs in 2024** (DGI activity report). Growth fell from +27% (2021) to +2% (2024); CESE links the slowdown partly to the LF 2023 restrictions | [OFFICIAL] S10 |

**The Fiverr-specific open problem [DISPUTED / OPEN]:**
- The 30% withholding must be operated *by the client*.
- On Fiverr, the paying entity is Fiverr (a foreign company), while the service is bought by many different foreign buyers.
- Two readings exist:
  - **(a) Each buyer is a separate client.** The rule only bites for a single buyer paying over 80k MAD/yr, and even then there is no Moroccan withholding agent.
  - **(b) Fiverr is "the client".** All Fiverr turnover above 80k is the surplus, and the AE may have to declare it (art. 82 quater item 8°) with unclear payment mechanics.
- A 2026 feasibility study (S43) flags the same intermediary-vs-client ambiguity for Moroccan platforms. [ANECDOTAL]
- **Verdict:** unresolved in the sources reachable here. **An expert-comptable must opine in writing before the AE regime is used for Fiverr revenue above about 80k MAD/yr.** In practice, an agency will outgrow the 200k ceiling and the no-employee rule anyway (see the SARL section).

#### 3.3.2 SARL / SARL AU (the agency vehicle)

- **IS (corporate tax):**
  - From FY opened **1 Jan 2026**: **20%**, or **35%** if net profit ≥ 100M MAD.
  - The transitional rate for profits ≤ 300k MAD was 12.5% (2023), 15% (2024), 17.5% (2025) and 20% (2026).
  - The 20% rate already applied to profits of 300,001–1,000,000 MAD.

  [OFFICIAL] LF 2023 text (S42); CESE confirms "convergence vers un taux unifié de 20% ... à l'horizon 2026" (S10).
- **Dividend withholding:** 13.75% (2023) → 12.5% (2024) → 11.25% (2025) → **10% (2026)** for profits of fiscal years from 2023. Older profits stay at 15%. [OFFICIAL] (S42)
- **Minimum contribution (cotisation minimale):** 0.25% of turnover, minimum 3,000 MAD, exempt for the first 3 fiscal years (S27). [ANECDOTAL, consistent with BACKGROUND] Verify the current rate and minimum.
- **VAT:** standard 20%. **Exported services are exempt with right to deduct (CGI art. 92)** (S27). [ANECDOTAL plus BACKGROUND] This lets a SARL recover VAT on its Moroccan costs (equipment, rent, software bought locally) when it exports marketing services. **Verify what documentation proves "export" for marketplace sales** (Fiverr statements, buyer country).
- **Creation (T4 guide S09, Sept 2026, figures indicative):**
  - Capital: minimum 1 MAD; 10k recommended.
  - Certificat négatif about 230 MAD, or about 170 MAD per S25.
  - Total set-up cost about 4,000–9,000 MAD; 5 days with a service provider, otherwise 2–4 weeks.
  - Expert-comptable about 1,000–3,000 MAD/month.

  The same guide's IS table (10/20/31%) is **outdated**, so treat its tax content as unreliable. [ANECDOTAL]
- **CNSS:** the majority gérant is affiliated as an independent; forgetting this leads to retroactive penalties (S25). [ANECDOTAL] SARL employees carry employer and employee CNSS charges. Verify current rates on damancom.ma.
- **IR scale for salaries (if DESORA pays its team as salaried staff):** several T4 sources (S15, S26, S27) quote the *old* scale (0–30k exempt … 38% top). [BACKGROUND, UNVERIFIED] LF 2025 revised it (exempt band raised to about 40k MAD, top rate about 37%). **Verify the LF 2025/2026 scale.**

**Decision rule for DESORA [reasoned]:**
- **AE** fits a single founder testing Fiverr, under about 150k MAD/yr, with no staff and no single-buyer concentration.
- **SARL AU / SARL** is needed as soon as any of these apply:
  - there is a team (AE cannot hire);
  - turnover is heading past about 150–200k MAD;
  - VAT recovery or credibility with B2B clients matters;
  - the 80k rule creates exposure.

  With IS at 20% on profit (not turnover), plus accounting costs, a SARL is usually the right vehicle for an *agency*.

#### 3.3.3 Fiverr tax forms for non-US sellers

- [BACKGROUND, UNVERIFIED] Fiverr asks non-US sellers to complete tax information: a **W-8BEN** for individuals, or **W-8BEN-E** for a company such as a SARL. It certifies foreign status. Services performed outside the US are generally not US-source income, so no US withholding is expected.
- Morocco and the US have a 1977 income-tax treaty. [BACKGROUND] The form still matters: without it, payouts can be held.
- Fiverr's VAT handling on its own seller fees for Moroccan sellers was **not verified**. [OPEN]
- EU sellers face DAC7 reporting and ID checks under the Digital Services Act (S22). DAC7 does **not** directly apply to a Morocco-resident seller. [BACKGROUND]
- **Rule:** fill the form truthfully with the real residence (Morocco) and entity. **Never misstate location or use another person's identity.**

### 3.4 Time zone: new as of 20 September 2026

- **Morocco (Africa/Casablanca) is UTC+0 with no DST from 2026-09-20 02:00.** Decree 2.26.530, adopted by the Government Council on 25 June 2026, abrogates the 2018 decree that had set UTC+1 with a GMT switch during Ramadan. It was published in BO 7521. (S39, the IANA tz database, citing Morocco World News, MAP and sgg.gov.ma.) [CONSENSUS]
  - From 2018-10-28 to 2026-09-20, Morocco was UTC+1 except during Ramadan (for example 2026-02-15 to 2026-03-22 on UTC+0).
- **Overlap table (from 20 Sep 2026):**

  | Buyer region | Offset vs Morocco | A 10:00–19:00 Morocco workday covers |
  |---|---|---|
  | UK, Ireland, Portugal | 0 h (UK/IE/PT +1 h in summer) | Full business day |
  | France, Belgium, Spain, Germany, Netherlands | +1 h (CET) / +2 h (CEST, summer) | 11:00–20:00 CET, i.e. the full EU day |
  | US East | −5 h (EST) / −4 h (EDT) | 05:00–14:00 EST, i.e. the US morning to early afternoon |
  | US West | −8 h / −7 h | Almost none; needs an evening shift (19:00–23:00 Morocco = 11:00–15:00 PST) |
  | Gulf (UAE/KSA) | +4 h / +3 h | Gulf afternoon |

- **Operating implication [reasoned]:**
  - Morocco sits in the "EU plus US East" sweet spot. A split shift (09:00–13:00 and 15:00–20:00) gives same-day response to Europe and the US East coast.
  - Response speed is a ranking and conversion factor per several sources (S22, S23) [ANECDOTAL], so staff the inbox accordingly.
  - Update any gig FAQ or profile text that says "GMT+1".

### 3.5 Moroccan sellers' success stories

**Not verifiable this session.** No Moroccan press site (Médias24, Le360, TelQuel, Hespress, Morocco World News) was reachable. [OPEN]

- Do not cite specific seller names or earnings claims without a source.
- The official context: the CESE notes platform work lacks a legal definition in Morocco and recommends clarifying statuses (S11, BO 7460 bis). The auto-entrepreneur base was 440,916 active in 2024 (S10). [OFFICIAL]

---

## 4. Myths vs. reality

| Myth (seen in sources) | Reality | Evidence |
|---|---|---|
| "AE tax is 1% commerce / 2% services" (S14, S15, S25, S26) | **0.5% commerce/industry/crafts; 1% services.** The same website (S13 vs S14) contradicts itself | [CONSENSUS] S04, S06–S08, S13 |
| "AE services ceiling is 500k MAD (commerce 1M)" (S26) | **200k services / 500k commerce** | [CONSENSUS] S04, S09, S13, S25 |
| "SARL pays 10% IS under 300k MAD profit" (S09, S15, S27) | Phase-in ended: **20% from FY 2026** (12.5/15/17.5% in 2023–25) | [OFFICIAL] S42, S10 |
| "Dividends taxed at 15%" (S27) | **10% from 2026** for post-2023 profits (15% remains for pre-2023 profits) | [OFFICIAL] S42 |
| "As an AE you can scale an agency" | AE **cannot hire employees**; service ceiling 200k; 30% withholding above 80k per client | [OFFICIAL] S10, S42 |
| "AE reform 2025 raised ceilings, created optional family allowances..." (S16) | No official source found; the article omits the real 2023 change (the 80k rule). Treat as fabricated or unsourced | [ANECDOTAL] S16 vs [OFFICIAL] S10 |
| "Morocco is GMT+1" | **UTC+0 since 2026-09-20** (Decree 2.26.530) | [CONSENSUS] S39 |
| "PayPal can't receive money in Morocco" | PayPal now lists Morocco for receiving via a licensed local partner. **Fiverr-PayPal availability still unverified** | [CONSENSUS] S33 |
| "You can take Fiverr money in crypto/USDT to avoid bank fees" | OC treats virtual-currency transactions as an exchange-regulation breach (communiqué 20-11-2017) | [CONSENSUS citing OFFICIAL] S33 |
| "Keep your money in Payoneer as long as you like" | IGOC 2026 Art. 97: service-export proceeds to be **repatriated within 90 days** | [CONSENSUS citing OFFICIAL] S40, S33 |
| "Fiverr take rate 27% = what sellers pay" | Seller commission is **20%**; 27.7% is Fiverr's blended take rate including buyer fees | [OFFICIAL] S29 + [CONSENSUS] S22 |
| "AI crashed all Fiverr prices" | Buyer counts and low-end volume fell, while *list prices* of surviving gigs kept rising through 2024 and spend per buyer rose. The hit is on volume, concentrated in writing, translation and simple websites | [OFFICIAL] S29–S31; [ANECDOTAL] S18 |
| "Fiverr is dead in 2026" (Reddit sentiment, S45) | Fiverr is shrinking at the low end but growing >$1k projects (+23%), managed services (+65%) and services revenue (+30%). The platform is changing buyer mix, not dying | [OFFICIAL] S29–S31 |
| "New sellers wait 30 days for clearance" (S44) | 14 days New/L1, 7 days L2+/Pro in 2026 guides | [ANECDOTAL] S22 (verify) |
| "Unlimited revisions make buyers happier and help ranking" | Conflict and revision friction hurt quality signals; cap revisions | [ANECDOTAL] S23 |
| "Payoneer withdrawal to Morocco costs only the $1 Fiverr fee" | The $1/$3 is Fiverr's fee. Payoneer's **currency conversion** (≈2–4% range in comparable countries) comes on top | [OFFICIAL] S01–S03 + [ANECDOTAL] S34, S35 |
| "Wise solves Moroccan payouts" | Moroccan residents **cannot hold a Wise account**; Wise only sends MAD *to* Morocco | [CONSENSUS] S33 |

---

## 5. Actionable playbooks

### 5.1 The first 3–5 gigs a Moroccan marketing agency should launch, and why

Selection logic:
- **(i)** Fiverr management names the area as growing.
- **(ii)** Price bands allow ≥$150 Standard packages.
- **(iii)** Low AI-substitution risk, or AI as leverage.
- **(iv)** DESORA's unfair advantages: French/Arabic/English, Europe/US time overlap, and team capacity.

1. **"French-first social media management and content" (monthly, bilingual FR/EN, optional Arabic)**
   - *Why:* digital marketing is growing [OFFICIAL]; the recurring structure matches the spend-per-buyer trend; native French is an edge.
   - *Packages:* Starter / Growth / Scale at about $180 / $360 / $630. That follows the 1 : 2 : 3.5 ratio and sits above the commodity band (Basic $25–55) [S19, S37].
   - *Include:* strategy doc, original designs, commercial rights, monthly report, community-management hours.
2. **"Meta and TikTok ads management with tracking setup" (setup plus monthly management; ad spend paid by the client directly)**
   - *Why:* ROI-linked, budget-owning buyers; fits >$1k growth.
   - *Entry:* an **audit** at about $120–$200 that feeds into a management retainer at $400–$1,200/month via custom offers. [Reasoned; price data thin: own data n=10, Basic med $45, too low to anchor]
3. **"Short-form video and UGC ad creatives (FR/AR/EN), monthly creative packs"**
   - *Why:* Video & Animation is growing [OFFICIAL]; Fiverr's showcase is multilingual UGC production [OFFICIAL]; external UGC anchors are $75–$300 per video [S46].
   - *Differentiate:* scripts plus hooks plus 3 ad variants per concept; Darija/Arabic and French creators for MENA and Francophone brands.
4. **"Marketing automation and AI chatbots for lead generation" (Instagram/WhatsApp DM bots, lead to CRM to follow-up flows)**
   - *Why:* "surging" demand for AI agents and workflow automation [OFFICIAL]; typical $100–$800 per project [S38].
   - *Differentiate:* marketing-outcome framing (booked calls, qualified leads) plus multilingual bots.
   - *Place:* in the AI Services or Programming & Tech chatbot categories. Check the current taxonomy first.
5. *(Optional fifth)* **"Local SEO and Google Business Profile growth for francophone businesses"** or **"Brand strategy plus identity system"**.
   - Choose based on team strength. Avoid bare logo, blog-writing and "5-page WordPress site" gigs as lead offers, because of Fiverr's own reports of AI and vibe-coding declines [OFFICIAL].

Rules for the set:
- Each gig serves a **distinct buyer job**, so there are no near-duplicates.
- Every gig has a one-page sanitized sample report in the gallery.
- Revisions are capped.
- Response inside 1 hour during EU and US-East hours.
- Move buyers to monthly recurring custom offers after the first order.

### 5.2 Withdrawal setup checklist (Morocco, 2026)

1. Decide the legal holder first: **AE (individual) or SARL (company)**. Fiverr seller identity, Payoneer account and bank account must all be **the same person or entity**. [BACKGROUND, standard KYC]
2. Complete Fiverr **ID verification** (government ID, selfie, real non-VoIP phone number) (S22). Complete the **tax information form**: W-8BEN for an individual, W-8BEN-E for a company, with Morocco as residence. [BACKGROUND, UNVERIFIED]
3. Open a Moroccan bank account in the same name. Ask the bank about an **exporter-of-services FX or convertible-dirham account (IGOC 2026 Art. 98)** and the documents they want for recurring Payoneer inflows. [CONSENSUS citing OFFICIAL]
4. Add **Payoneer** as payout method from the Fiverr Earnings page: **"Bank Transfer via Payoneer"** (direct to the Moroccan bank) or **"Payoneer Account"**. Wait **24 h** before the first withdrawal. Keep only **one** Payoneer method active. [OFFICIAL, snippet]
5. Check the live Payoneer **fee and FX screen** on the first withdrawal. Record the effective rate against Bank Al-Maghrib's reference to learn the real spread. [Reasoned]
6. **Withdraw on a regular cycle** (for example monthly, batching to spread the $1 fixed fee and staying under $5,000 per transaction). Never let proceeds sit more than **90 days** from service performance (Art. 97). [CONSENSUS citing OFFICIAL]
7. Keep an evidence pack: Fiverr order list and earnings statements (monthly PDF/CSV exports), Payoneer statements, bank credit advices. You will need it for the bank, the accountant, and a DGI or Office des Changes query. [Reasoned]
8. **Never:**
   - use crypto rails (S33);
   - use a friend's or relative's Payoneer, PayPal or bank account;
   - use a VPN or misstate your country;
   - accept payment outside Fiverr from Fiverr-originated buyers (Fiverr ToS).
9. Optional: once verified, check whether **PayPal** appears as a Fiverr payout option for your Moroccan account. If it does, compare total cost against Payoneer. Do not assume it is available. [OPEN]

### 5.3 Legal setup checklist (verify each item with an expert-comptable; laws as of LF 2023 to LF 2026)

1. **Phase 0 (founder test, optional):**
   - Register as **auto-entrepreneur on ae.gov.ma** (services activity). Declare quarterly even at zero turnover.
   - Put "Exonéré de TVA" and your ICE on invoices.
   - Track turnover **per client**, because of the 80k rule, and get the accountant's written view on how Fiverr buyers count.
2. **Phase 1 (agency):**
   - Create a **SARL AU / SARL**: certificat négatif (OMPIC), statuts, capital deposit, registration, RC, IF/ICE, taxe professionnelle, CNSS affiliation.
   - Appoint an **expert-comptable**.
   - Budget about 4–9k MAD set-up and 1–3k MAD/month accounting (S09, indicative). [ANECDOTAL]
3. **Tax calendar for the SARL:**
   - IS at **20%** (FY 2026 onwards) paid in quarterly instalments.
   - VAT regime with **exported services exempt with right of deduction** (art. 92). Confirm the export documentation for marketplace income.
   - Cotisation minimale rules.
   - Dividends at **10%** withholding.
   - [OFFICIAL for IS and dividends (S42); others ANECDOTAL/BACKGROUND]
4. **Fiverr account structure:**
   - Read Fiverr's "Working with agencies on Fiverr" and business-verification help pages.
   - Decide whether to run as an **agency account** or a verified business seller.
   - Complete **W-8BEN-E** for the SARL.
   - Keep one account per person, with no shared logins from different countries. [ANECDOTAL, pointing to OFFICIAL]
5. **FX compliance:**
   - Service-exporter account (Art. 98).
   - Repatriation within 90 days (Art. 97).
   - Paying foreign freelancers or tools from Morocco goes through bank service-import rules (Arts 69–72). Some intermediary models need prior OC approval (Art. 71).
6. **Employees vs. freelancers in Morocco:** if DESORA uses local freelancers who are themselves AEs and bill DESORA more than 80k MAD/yr each, **DESORA (a Moroccan client) becomes the withholding agent at 30% on the surplus**. [OFFICIAL] (S42) Plan contracts accordingly, or hire salaried staff.
7. **Data protection:** client data such as ad accounts and customer lists falls under **Law 09-08 and the CNDP** (S43). [ANECDOTAL] Use NDAs and least-privilege access (business-manager partner access, never password sharing).

---

## 6. Free tools and resources discovered

| Name | URL | Purpose | Free? |
|---|---|---|---|
| Portail Auto-Entrepreneur | https://www.ae.gov.ma | AE registration, quarterly declaration and payment | Free (official) |
| DGI e-services (SIMPL) | https://simpl.tax.gov.ma | IS/IR/VAT e-filing for companies | Free (official) |
| Damancom (CNSS) | https://www.damancom.ma | CNSS/AMO declarations | Free (official) |
| Office des Changes: IGOC 2026 | https://www.oc.gov.ma/sites/default/files/reglementation/pdf/2026-01/IGOC%202026.pdf | Exchange rules (Arts 97–98 service exporters; 141 allowance) | Free (official) |
| OMPIC | https://www.ompic.ma | Company-name certificate (certificat négatif), trademarks | Paid fees (about 170–230 MAD for certificate) |
| Bank Al-Maghrib FX reform page | https://www.bkam.ma/en/Find-information-about/Reform-of-the-exchange-rate-regime/Implementation-of-the-reform | MAD basket (EUR60/USD40) and ±5% band | Free |
| IANA tz database (Africa/Casablanca) | https://github.com/eggert/tz/blob/main/africa | Authoritative time-zone history, incl. the 2026 return to UTC+0 | Free |
| Fiverr investor relations | https://investors.fiverr.com | Quarterly letters and KPIs (active buyers, spend per buyer, category commentary) | Free |
| Fiverr earnings transcripts (GitHub mirror) | https://github.com/vanillefatale/earnings-transcripts | Q3/Q4 2025 call text when IR site is blocked | Free |
| Intelligence Price Index dataset | https://github.com/AISmithLab/IntelligencePriceIndex | 22,632 archived Fiverr gig price snapshots for price benchmarking | Free (research pilot; verify) |
| Fiverr category slug mirror | https://github.com/devresponse/devresponse-library/tree/main/categories | Map of subcategory/service-type slugs (as of about 2024) | Free (unofficial) |
| Payoneer fee pages | https://www.payoneer.com/about/pricing/ | Per-country conversion/withdrawal pricing (check Morocco) | Free to read |
| PayPal Morocco help (receiving) | https://www.paypal.com/ma/cshelp/article/help1010 | Receiving via licensed local partner | Free to read |
| FacturePro-Maroc (open source) | https://github.com/seowecanagency-byte/FacturePro-Maroc | Free quote/invoice tool for AE/PME (T4; check legal mentions yourself) | Free |
| autoentrepreneurmaroc.ma calculators | https://github.com/Mottalib-10M/autoentrepreneurmaroc.ma | **Caution:** uses wrong 1%/2% rates in code (S15). Do not use for tax estimates | Free but unreliable |
| Meta Ad Library / Google Ads Transparency | https://www.facebook.com/ads/library ; https://adstransparency.google.com | Competitor creative research for ads and UGC gigs [BACKGROUND] | Free |
| Looker Studio + GA4 | https://lookerstudio.google.com | Client-facing monthly reports (proof of results) [BACKGROUND] | Free |

---

## 7. What the advisor should say, in brief (rules of thumb)

- Recommend **upmarket, recurring, multilingual** marketing offers. Discourage commodity writing, translation, logo and simple-website gigs as lead products (Fiverr's own 2025 data).
- For price anchoring, use **Standard ≈ 2× Basic and Premium ≈ 3.5× Basic** (Fiverr median). Keep Basic above the $30 median for marketing retainers.
- On money: **Payoneer to a Moroccan bank in the same name, withdrawn at least every 90 days, never crypto, never borrowed accounts.**
- On legal: **AE only for a solo test; SARL for the agency.** Always add "verify with an expert-comptable" and the law date.
- On time: **Morocco is UTC+0 since 20 Sep 2026.**

---

## 8. Open questions and things that could not be verified (priority verification list)

1. **Fiverr agency accounts:** eligibility, team seats, fees, and whether agencies can join Fiverr Pro. Read help.fiverr.com article 37553234516497, "Working with agencies on Fiverr".
2. **Fiverr payout options for Morocco-resident sellers:** is PayPal offered, and is the Fiverr Revenue Card available? Check the logged-in Earnings page and Fiverr help.
3. **Payoneer Morocco pricing:** USD→MAD conversion %, fixed fees, annual fee threshold ($2k vs $6k), and whether Payoneer's local receiving accounts work for Moroccan residents.
4. **80k same-client rule applied to marketplace income:** is Fiverr or each buyer the "client"? Get a written opinion from an expert-comptable or a DGI ruling.
5. **AE AMO/CNSS contribution amount:** flat 300 MAD/quarter vs. bracket-based. Check cnss.ma and decree 2.21.477.
6. **IGOC 2026 Art. 98:** what share of service-export proceeds may be kept in FX / convertible-dirham accounts, and what bank documentation is needed for Payoneer inflows.
7. **IR salary scale after LF 2025/LF 2026:** exact brackets. The T4 sources here are outdated.
8. **Whether Fiverr charges VAT on seller fees to Moroccan sellers**, and what invoice documentation Fiverr provides to support "export of services" for art. 92.
9. **French-language and Arabic-language competition** on Fiverr: gig counts, buyer volume on fr.fiverr.com, and whether localized gigs face less competition. No data was reachable.
10. **Moroccan Fiverr success stories and press coverage** (Médias24, Le360, TelQuel, Hespress, Morocco World News). Blocked this session.
11. **Current Fiverr Seller Plus tiers and prices, Promoted Gigs eligibility** (S23 claims Level 1+ and Success Score ≥ 7, plus a $5 monthly ad credit for Seller Plus), and **clearance periods** (14/7 days). All from secondary sources only.
12. **Fiverr "Subscriptions", "Milestones" and "Hourly" order features:** current availability and level gates for marketing gigs.
13. **Fiverr Q2 2026 results** (reported about August 2026) were not found. Check investors.fiverr.com for the latest active-buyer and category commentary.
14. **Academic figures** (Hui et al. 2023; Demirci et al. 2024): read the originals before quoting exact percentages. S32 misattributes them.
