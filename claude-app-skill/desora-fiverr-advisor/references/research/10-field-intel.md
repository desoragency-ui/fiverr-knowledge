# 10 — Fiverr Field Intelligence 2024–2026: What Works, Myths, Case Evidence, Platform Data

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - §3 threshold table lists competing figures. Resolved in master Law 6 and §3 #1, #5, #23 (L1 = 5 orders/4.4/$400/3 clients; TRS = 40 orders/20 clients/$10k/SS9).


Prepared for: DESORA (Moroccan marketing agency selling on Fiverr) — input for the DESORA Fiverr-advisor subagent.
Research date: 2026-09-26. Cluster 10 of 12.

---

## 0. Read this first: evidence status and label legend

**How much of this is verified?** Less than planned, so read the labels.

- **Fetching was blocked.** The sandbox's network egress policy blocked every research domain this cluster needed: investors.fiverr.com, fiverr.com, help.fiverr.com, community.fiverr.com, sec.gov, medium.com, wikipedia, globenewswire, stocktitan, theregister, windowscentral, fool.com, github.io and others. WebFetch also refuses reddit.com and web.archive.org. **Zero pages were fully fetched.**
- **Search was cut short.** WebSearch rejects reddit.com as a domain. After 20 successful searches, the session-wide cap of 200 searches, shared by all 12 agents, ran out.
- **What the evidence below is:** search-engine extracts ("snippets") from about 64 sources, logged in `10-sources.tsv` with mode = snippet. For platform data these extracts are quite rich (exact figures from Fiverr press releases and earnings calls). For field reports they are thin.
- **Background knowledge fills the gaps.** Some items come from the model's own knowledge of Fiverr (training data to about mid-2026) and are tagged **(BK)**. Treat BK items as reasoned hypotheses to verify, not as facts read this session.

**Tags:**
- **[OFFICIAL]**: Fiverr investor releases, shareholder letters, Help Center, Fiverr staff or community-education blog posts.
- **[CONSENSUS]**: 3+ independent non-official sources agree.
- **[ANECDOTAL]**: 1–2 field reports, or low-trust sites.
- **[DISPUTED]**: sources conflict.
- **(BK)**: background knowledge, not re-verified this session.
- **(derived)**: my own arithmetic on sourced numbers.
- Source ids (S1…S64) refer to `10-sources.tsv`.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Fiverr has split into two markets. The cheap one is shrinking fast; the expensive one is growing.**
   - Annual active buyers: 4.0M (Dec 2023) → 3.6M (Dec 2024) → 3.1M (Dec 2025) → **2.7M (Jun 2026, −21.9% y/y)**.
   - Spend per buyer over the same period: $278 → $302 → $342 → **$368 (+15.6% y/y)**.
   - [OFFICIAL] (S1, S3, S5, S20)
   - *Implication:* do not build DESORA's Fiverr business on $5–$50 commodity gigs. Build it on packaged, outcome-based, higher-ticket marketing services.

2. **Low-value work is collapsing because buyers now use AI instead.**
   - Q2 2026: transaction volume fell **≥10% y/y across most projects under $1,000**, and **writing & translation fell >24%**. [OFFICIAL/T2] (S8, S16)
   - The hardest-hit categories are basic copywriting, simple graphic design and entry-level programming, where buyers "increasingly turn to generative AI tools". (S10, S15)
   - Treat any DESORA gig that sells a single commodity deliverable (a caption pack, a simple logo, a blog post) as exposed.

3. **Growth is concentrated at $1,000+.**
   - Q4 2025: GMV from transactions over $1,000 grew **+22.8%**, and buyers spending over $10K a year grew **+7%**. (S2)
   - Q1 2026: clients completing $1,000+ projects grew **+18%**. (S18, S19)
   - Q2 2026: the same measure grew **+13% (trailing 12 months)**. (S5)
   - [OFFICIAL]

4. **Most revenue comes from repeat business buyers.** Buyers who spend over $500 a year produced **65% of marketplace revenue in 2024**, up from 64% in 2023 and 63% in 2021–22. [OFFICIAL] (S21)
   - Design gigs for recurring relationships: monthly retainers, milestone projects, add-ons and custom offers.

5. **Fiverr's own strategy is AI-first and upmarket, and it is actively re-engineering how demand is matched.**
   - Sept 15 2025: 30% of staff (~250 people) cut, described as a "painful reset" into an "AI-first company". (S12–S14, S42, S43)
   - Tools for larger projects: Dynamic Matching, Managed Services, Fiverr Pro with Team Accounts for agencies, and a proprietary **Knowledge Graph** to improve matching and reduce cancellations on high-value orders. (S2, S11, S17, S20)
   - Management expects the transformation to take **at least six quarters** from mid-2026. (S9, S17)
   - [OFFICIAL]
   - *Implication:* more high-value demand will reach sellers through Fiverr's matching and curation, not only through keyword search.

6. **Some drops in impressions are market-wide, not the seller's fault.** In Q2 2026 Fiverr blamed AI-related demand and traffic headwinds, including **softer Google-related traffic**, which "continued into Q3" and affect "the entire marketplace". [OFFICIAL] (S17, S9)
   - Before assuming a gig was penalised, check whether the whole category dropped (see §7).

7. **The level system changed in Oct 2023. It now rewards many different clients and private buyer satisfaction.** [OFFICIAL] (S28, S29, S52)
   - Levels are judged on six metrics: Success Score, rating, response rate, orders, unique clients and earnings.
   - On-time delivery and order-completion rate were removed as level criteria.
   - "Unique clients" was added. Repeat orders from one buyer do not satisfy it.
   - Moving up to Level 1 or Level 2 is automatic within 24 hours once all six metrics are met.
   - Top Rated needs a manual review.

8. **The Success Score is mostly driven by what buyers tell Fiverr privately.** A 4.9★ public rating can sit beside a Success Score of 6. Sellers cannot see the private answers. [OFFICIAL gist (S40); detail ANECDOTAL (S30, S53)]
   - Setting expectations and communicating well in every order matters more than asking for stars.

9. **Top Rated is gated by category, and the wait is long.**
   - It requires a holistic manual review of quality and client experience.
   - Only "high-demand categories" are eligible.
   - The review wait is **45–90 days**, depending on subcategory.
   - [OFFICIAL] (S32, S33)

10. **Being online 24/7 does not improve ranking.** What counts is response rate: replying within 24 hours, measured over 90 days. [OFFICIAL/CONSENSUS] (S29, S38, S39, S59)
    - Tools that keep you "always online" add risk and no benefit (see §6).

11. **When impressions drop, Fiverr's official advice is to diagnose first and make one change at a time.** [OFFICIAL] (S36)
    - Likely causes: demand has shifted, keywords no longer match searches, Fiverr is testing the gig in a new category or region, or it is seasonal.
    - After making changes, **wait 3–4 weeks** before judging them. Frequent edits "confuse the algorithm."

12. **Cheaper is not better any more.** Rising spend per buyer, the fastest decline in the cheapest work, and Fiverr's upmarket focus all contradict the "lowest price wins" playbook. [OFFICIAL-backed inference] (S1, S5, S8)

13. **Level 2 earnings are hard to reach at low order values.** Level 2 needs about $2,000 of earnings from at least 20 orders and 10 unique clients. [OFFICIAL/ANECDOTAL on exact numbers] (S27, S31)
    - At a $25 average order, that takes 80+ orders. At $100–150, the 20-order minimum becomes the binding limit. (derived)
    - *Implication:* price for an average order of $100 or more early on.

14. **Fiverr is monetising sellers harder.** [OFFICIAL] (S5, S11)
    - The take rate rose from 27.6% to 28.0% (twelve months to June 2026).
    - Services revenue reached 32% of revenue in Q3 2025; it includes Seller Plus, Fiverr Go and promoted/ads products.
    - Seller Plus adoption grew >20% y/y (Q3 2025).
    - Budget for tools and fees accordingly. None of these paid tools is required to succeed.

15. **The AI-related demand is concrete, and several items suit a marketing agency.** [OFFICIAL, Business Trends Index (BTI)] (S24, S25, S26)
    - AI-agent searches: +18,347% (Sep 2024 → spring 2025).
    - AI video creators: +66%. Faceless YouTube video creators: +488%. AI automation: +136%. Prompt engineering: +76%.
    - AI voice agents: +49%. AI website development: +39%. AI-related video/animation demand: +278% y/y.
    - The BTI reports search growth, not GMV share. Fiverr does not publish the GMV share of AI services. (S51)

16. **Fiverr Go (Feb 2025) is an optional, paid AI layer for Level 2+ sellers in eligible creative categories:** personal AI models trained on your work, plus an AI assistant. [OFFICIAL (S22)]
    - Pricing is about $25/month per the review sites [ANECDOTAL (S49, S50)].
    - Sellers raised concerns about cannibalisation. (S23)
    - It is not a ranking requirement.

17. **Buying reviews, self-ordering, review swaps and off-platform payment are the classic ways accounts get banned.** (BK; consistent with Fiverr's ToS)
    - The unique-clients metric and Fiverr's AI-driven fraud detection make these both less useful and more detectable. Kaufman said AI now handles fraud detection. (S12, S13)

18. **Fiverr Pro is not required, but high-value flows increasingly run through Pro, Dynamic Matching and Managed Services.** Sellers who reach Level 2, Top Rated or Pro gain access to the demand that is growing. [OFFICIAL-backed inference] (S2, S20)

19. **The Oct 2023 overhaul caused a wave of opaque demotions and complaints.** (S27, S54, S55) Fiverr answered with education posts in mid-2025. (S33, S40)
    - Expect level status to move up and down. Plan cash flow so a demotion is survivable.

20. **The market is contracting overall, not just shifting.** Marketplace GMV (active buyers × spend per buyer) fell from about $1.08B (mid-2025) to about $0.99B (mid-2026), roughly −8%. (derived from S5)
    - Competition for each remaining buyer is rising. Off-platform demand generation (content, LinkedIn, referrals, bringing your own clients to your Fiverr gig) matters more than before.

21. **Honest verdict on "Fiverr is dead": false in general, largely true for commodity gigs.**
    - Rising spend per buyer and growing $1K+ projects show strong demand for trusted, complex, human-orchestrated work.
    - Kaufman's framing: "human expertise, project orchestration, and accountability are irreplaceable". (S17)

22. **Morocco-specific and agency-specific (BK):**
    - Fiverr supports Team/Agency accounts via Fiverr Pro. (S20 confirms "Team Accounts for freelancers and agencies")
    - Two services DESORA must never list on Fiverr: fake social engagement (followers/likes) and academic-dishonesty work (writing students' theses to submit as their own). Both are prohibited categories. (BK)
    - Payouts from Morocco: PayPal accounts there generally cannot receive funds, so Payoneer or bank transfer are the usual routes. (BK, verify)

---

## 2. Platform data and strategic direction (numbers and dates)

### 2.1 Core marketplace KPIs [OFFICIAL]

| As of | Annual active buyers | y/y | Spend per buyer (annual) | y/y | Take rate (TTM) | Source |
|---|---|---|---|---|---|---|
| Dec 31 2023 | 4.0M | — | $278 | — | — | S20 |
| Dec 31 2024 | 3.6M | −10% | $302 | +9% | 27.6% | S1, S20 |
| Mar 31 2025 | 3.5M | — | $309 | — | — | S3 |
| Jun 30 2025 | 3.4M | — | $318 | — | 27.6% | S5 |
| Dec 31 2025 | 3.1M | −13.6% | $342 | +13.3% | 27.7% | S1 |
| Mar 31 2026 | 2.9M | −17.8% | $356 | +15.4% | 27.7% | S3, S18 |
| Jun 30 2026 | 2.7M | −21.9% | $368 | +15.6% | 28.0% | S5 |

**Implied marketplace GMV (active buyers × spend per buyer, trailing 12 months; derived, approximate because buyer counts are rounded):**
- Dec 2023: ≈ $1.11B
- Dec 2024: ≈ $1.09B
- Jun 2025: ≈ $1.08B
- Dec 2025: ≈ $1.06B
- Jun 2026: ≈ $0.99B

The decline in buyer count is speeding up faster than spend per buyer can offset it.

### 2.2 Revenue lines [OFFICIAL]

- **Q4 2024** revenue: $103.7M (+13.3% y/y). (S20, S41)
- **Q3 2025** services revenue: $34.3M (+39.6% y/y), 32% of total revenue. Record adjusted EBITDA. Seller Plus adoption grew >20% y/y, with Fiverr Go a key driver. (S11)
- **Q1 2026** revenue: $105.5M (−1.6%).
  - Marketplace revenue: $67.1M (−13.6%).
  - Services revenue: ≈ $38.4M (derived).
  - (S3, S4)
- **Q2 2026** revenue: $97.8M (−10.0%).
  - Marketplace revenue: $63.1M (−15.5%).
  - Services revenue: ≈ $34.7M (derived), down sequentially. Management cited "declining services revenue" in the revised outlook.
  - (S5, S6, S17)
- **FY2026 guidance:** initially $380–420M (−12% to −3%) (S3). Cut on Jul 29 2026 to **$356–372M** (about −14% to −17%) (S7, S9).
  - Oppenheimer downgraded the stock to Perform (S45).
  - Ctech reported the stock was down more than 35% for the year (S44).

### 2.3 Buyer concentration and deal size [OFFICIAL]

- Buyers spending more than $500 a year made up 63% of core marketplace revenue in 2021 and 2022, 64% in 2023 and **65% in 2024** (20-F FY2024, S21).
- Q4 2025: GMV from transactions over $1,000 grew **+22.8%**; buyers spending over $10K a year grew **+7%** ("accelerated") (S2).
- Q4 2024: Fiverr Pro introduced multi-tier subscription plans and **Team Accounts for freelancers and agencies**. The Business Rewards Program is "driving more buyers spending >$10K annually" (S20).
- Q1 2026: projects over $1,000 grew at a "strong double-digit" rate; **clients completing them grew +18%** (S18, S19).
- Q2 2026: clients completing $1,000+ projects grew **+13% (trailing 12 months)** (S5).

### 2.4 AI: the headwind and the tailwind

**Headwind [OFFICIAL/T2]:**
- In Q2 2026, Kaufman said results reflect "a market that is changing faster than expected, driven by rapid AI adoption".
- He called it a "transitional quarter, reflecting an ongoing compression in high volume, low value transactional work".
- Low-value transactional work is still **the majority** of the marketplace, and it is falling faster than high-value work is growing.
- Volume in projects under $1,000 fell at least 10%; writing & translation fell more than 24%.
- (S8, S10, S16, S17)

**Tailwind [OFFICIAL, BTI press releases]:**
- AI-agent freelancer searches: **+18,347%** over roughly six months (Sep 2024 → spring 2025) (S24).
- Fall 2025 BTI (S25):
  - Faceless YouTube video creator: +488%
  - AI automation: +136%
  - Prompt engineering: +76%
  - AI video creators: +66%
  - Faceless YouTube video editor: +59%
  - AI influencer: +43%
  - AI music video: +25%
  - AI mobile app development: +92%
  - AI voice agents: +49%
  - AI website development: +39%
- June 2026 BTI: AI-related video & animation demand +278% y/y; programming/tech implementation +94%; marketing workflows +62% (S26; figures via search extract, verify the base definitions).
- Caveat: these are search/demand growth percentages from small bases, not revenue. Fiverr has **not** disclosed the GMV share of AI services (S51).

**AI-first reorganisation [T2]:**
- May 2025: Kaufman's internal memo, "AI is coming for your jobs".
- Sept 15 2025: 30% of staff (~250 people) laid off. Fiverr kept its 2025 guidance and brought forward its profitability targets by a year.
- Customer support and fraud detection were named as processes AI now handles.
- (S12, S13, S14, S42, S43)
- Seller implication (inference): expect more automated enforcement and support. Keep behaviour squarely inside the ToS, because automated flags are less forgiving of grey areas and human appeal capacity has shrunk. (BK/inference)

### 2.5 Products that matter to sellers

- **Fiverr Go** (launched Feb 18 2025): Personal AI Creation Model (trained only on the seller's own work; the seller sets the price and keeps rights) and Personal AI Assistant (handles client communication and routine tasks). (S22)
  - Launch categories: voiceover, songwriting, graphic design, illustration, copywriting, digital marketing.
  - Eligibility: Level 2+ and vetted sellers.
  - Price: about $25/month for 3 models and 2 retrains; included with Seller Plus Premium per one review. [ANECDOTAL] (S49, S50)
  - Sellers worry it trains buyers to buy AI output instead of hiring them. (S23)
- **Dynamic Matching and Managed Services:** Fiverr-curated matching for complex, multi-phase projects with higher spend and repeat engagement. Cited as the drivers of $1K+ growth. (S2, S11, S18)
- **Knowledge Graph + neural-network matching** (live mid-2026): aims to reduce cancellations on high-value orders through more precise matching. (S8, S17)
- **Seller Plus** (Standard and Premium tiers; paid subscription): adoption +20% y/y (S11, S60). BK: Fiverr has said Seller Plus does not directly boost organic ranking; verify.
- **Fiverr Pro:** a vetted tier for freelancers plus business subscription plans for buyers; Team Accounts for agencies (S20).

### 2.6 What this means for DESORA's Fiverr strategy (inference from the data above)

1. **Positioning:** sell outcomes and systems (e.g. "Meta ads launch + 30-day optimisation for e-commerce", "AI-assisted short-form video ad production, 12 videos/month", "marketing automation setup") rather than single commodity deliverables.
2. **Price architecture:**
   - Entry package: $80–$150 (to test fit).
   - Core package: $300–$600.
   - Premium or custom offer: $1,000+ (DESORA's target band).
   - Offer milestones for larger projects. Aim for repeat monthly work, because buyers spending over $500 a year produce two-thirds of revenue.
3. **Level path as a business goal:** Level 2 (then Top Rated in an eligible high-demand category) unlocks Fiverr Go and makes DESORA likelier to be reached through Fiverr's curated/Pro/Managed channels, where the growth is.
4. **Diversify demand:** Fiverr's own traffic is falling, especially from Google. DESORA should drive its own traffic to its gigs (LinkedIn, case studies, the DESORA site with a "Hire us on Fiverr" link) and treat Fiverr as one channel. Always keep payment on Fiverr for anything that starts there.
5. **AI stance:** use AI to deliver faster and cheaper internally. Sell the human parts buyers still pay for: strategy, orchestration, accountability and quality control. That is exactly the value Fiverr's CEO says will remain.

---

## 3. What changed with the 2023 level-system overhaul

**Old system (pre-Oct 2023) (BK):** levels were based on days active, number of orders, earnings, rating, response rate, order completion rate and on-time delivery, with a monthly evaluation.

**New system (live from Oct 2023) [OFFICIAL] (S28, S29, S52):**
- **Six metrics:**
  - **Success Score:** long-term performance built from client satisfaction, communication "and other key order metrics".
  - **Rating:** average of ratings over **the past two years**.
  - **Response rate:** share of new messages replied to **within 24 hours, over the last 90 days**.
  - **Orders completed.**
  - **Unique clients.**
  - **Earnings.**
- Moving up to Level 1 or Level 2 is automatic **within 24 hours** of meeting all six.
- Top Rated also needs a **manual evaluation**:
  - It covers quality/proficiency, client experience and more.
  - Only **high-demand categories** are eligible.
  - Wait time is 45–90 days by subcategory.
  - (S32, S33)
- On-time delivery and order-completion rate were removed as level criteria; unique clients was added (S27, S31).
- BK/likely: late delivery and cancellations still feed into the Success Score indirectly through buyers' private feedback and order metrics.

**Thresholds as reported. These conflict across sources [DISPUTED]; verify on the seller's own Levels dashboard:**

| Level | Success Score | Rating | Response | Orders | Unique clients | Earnings | Notes |
|---|---|---|---|---|---|---|---|
| Level 1 | 5+ | 4.4+ (BK) / 4.7 (T4 S31) | 90% | 5 (BK) / 10 (T4) | 3 (BK) | $400 (BK) / $500 (T4) | T4 says $400 = net of fee on $500 gross |
| Level 2 | 7+ | 4.6+ | 90% | 20 | 10 | $2,000 | consistent across S27, S31 |
| Top Rated | 8+ (BK) | 4.7+ | 90% | 100 (BK) vs 40 (T4) | 10 (BK) vs 20 (T4) | $20,000 (BK) vs $10,000 (T4) | manual review; high-demand categories only; S32 says ≥20 orders in a listed category to be eligible |

- A T4 source also mentions "120 active days" and "zero active ToS warnings" for Level 2, and "180 days at Level 2" for Top Rated. These may be carried over from the old system. [DISPUTED]
- Some sources report a 30-day grace period before demotion when a metric falls below threshold. [ANECDOTAL] (S30)
- A critically low Success Score reportedly triggers a "low performance" label that reduces visibility. [ANECDOTAL] (S27/S31 extracts)

**How sellers reacted [ANECDOTAL/CONSENSUS on sentiment]:**
- Forum threads called the change "the WORST change in Fiverr ever" and described the Success Score as opaque. (S27)
- Sellers reported demotions with unclear reasons (S55) and Success Scores slipping from 7 to 6 without explanation (S54).
- Fiverr's mid-2025 education posts ("Two things you should know about your Success Score", "Becoming Top Rated") aimed to reduce the confusion (S33, S40).

**Success Score mechanics (search extracts) [ANECDOTAL unless noted]:**
- Each gig has its own 1–10 score. The account score combines the gig scores. [OFFICIAL gist] (S27/S29 extracts)
- It is heavily driven by the **private** post-order questions Fiverr asks buyers, which sellers never see. (S30, S40)
- It is reportedly benchmarked against sellers in the **same category and price range**, e.g. a $50 logo seller is compared with other $50 logo sellers. [ANECDOTAL] (S30)
  - If true, cheap gigs do not get an easier comparison; they are compared with other cheap gigs, whose buyers are often harder to satisfy.
- Practical levers (consensus of field advice + BK):
  - Clear gig scope and **requirements** so buyers know what they will get.
  - Proactive progress updates.
  - No late deliveries.
  - Avoid cancellations.
  - Fix problems before delivery, not after a dispute.
  - Do not accept orders you cannot deliver well.

---

## 4. What works now (2024–2026)

### 4.1 Demand and positioning

- **Move up the value chain.** Buyer counts are shrinking while spend per buyer and $1K+ projects grow. [OFFICIAL] (S1, S2, S5)
- **Commodity content, basic design and entry-level coding are the most AI-exposed categories.** [OFFICIAL/T2] (S8, S10, S15) For DESORA: bundle creative work into campaigns with strategy, setup and reporting.
- **Lean into AI-adjacent services where demand grew** (AI video/UGC-style ads, automation, AI agents/chatbots for lead handling, faceless content production). [OFFICIAL, BTI] (S24, S25, S26)
  - Caveat: search growth from a small base can mean a few thousand searches. Test with one gig before re-tooling.
- **Research demand before building a gig:** browse the category to see whether competitors show queues of orders; if only a few sellers are busy, demand is thin. [OFFICIAL] (S36)

### 4.2 Gig construction and search (ranking)

- **Relevance plus quality is the model Fiverr describes publicly.**
  - Relevance: title and tags match what buyers type.
  - Quality: buyer satisfaction, including public and private reviews.
  - [OFFICIAL] (S36, S37)
- **Put the strongest buyer-language keyword in the title.** Use diverse but related tags that give the algorithm context. [OFFICIAL] (S36)
- **Change deliberately:** one variable at a time, then wait **3–4 weeks**. Constant edits "confuse the algorithm." [OFFICIAL] (S36)
- **Portfolio proof:** real samples, before/afters and testimonials. [OFFICIAL] (S34)
- (BK/CONSENSUS in community practice) Common conversion practices:
  - A gig video.
  - A thumbnail that states the outcome.
  - Three packages with clear differences.
  - FAQ and requirements that prevent misunderstandings.
  - Fiverr has at times published claims that video improves conversion, but no current figure was verified this session.

### 4.3 Operations that protect ranking

- **Response rate** (24 hours, 90-day window) is a level metric; being online is not. Use the mobile app and notifications instead of "online keeper" tricks. [OFFICIAL] (S29, S38, S39)
- **Private satisfaction drives the Success Score.** Over-communicate, set expectations in writing at order start, and deliver on time. [OFFICIAL gist + ANECDOTAL detail] (S30, S40)
- **Unique clients:** for Level 2 you need 10 different buyers. A single loyal client cannot level you up. [OFFICIAL] (S27, S29)
- **Patience:** the official advice for new sellers, once gigs are optimised, is to be patient and keep improving skills. [OFFICIAL] (S34)

### 4.4 Channels beyond organic search

- **Fiverr-curated channels** (Dynamic Matching, Managed Services, Pro) are where Fiverr invests. [OFFICIAL] (S2, S11, S18) Getting access generally requires strong levels, reviews and vetting (BK).
- **Briefs** (buyer-submitted project briefs matched to sellers) replaced the old Buyer Requests board, which was retired in 2022. (BK)
  - Advice from field experience (BK): answer quickly with a specific, tailored offer rather than a template.
- **Promoted Gigs (paid ads inside Fiverr search)** are open to eligible sellers. (BK)
  - Their value is disputed (see myths). Treat them as a paid experiment with a strict daily cap and conversion tracking.
- **Your own audience:** sharing your gig link with *real prospects* (LinkedIn, your site, existing clients) is allowed. (BK) Spamming Facebook groups is not useful (see myths).

---

## 5. Case studies

**Honest status:** no verified case study with full numbers could be read this session, because fetching was blocked and Reddit, Medium and forum bodies were unreachable. What is available:

1. **Fiverr shareholder-letter seller features** [OFFICIAL, names only]: Kelin Ainsworth (Seller, Q4'25 letter, S2); AJ Camara (Buyer & Seller, Q3'25, S47); David Colón (Seller Founder, Q2'25, S48).
   - Fiverr uses these letters to showcase the upmarket seller profile. The full stories could not be fetched.
   - Follow-up: pull the letters (PDFs on investors.fiverr.com) once network access allows.
2. **"How many days did it take you to get your first order?"** (Fiverr Community thread, S56) and several "how to (still) get that first order" guides (S35).
   - The existence of these long threads confirms first-order time varies widely. Their content was not readable beyond snippets.
3. **Aggregate "case study" from Fiverr's own numbers** [OFFICIAL, derived]:
   - Between mid-2025 and mid-2026 the average buyer spent about 16% more.
   - Buyers doing $1K+ projects grew 13–18%.
   - The total buyer pool fell about 22%.
   - A seller whose average order is under $50 and relies on one-off buyers is swimming against a roughly −20% tide.
   - A seller with $300+ packages and repeat clients is in the only growing segment.

**Model case: time to Level 2 as a function of average order value** (derived from the Level 2 thresholds; illustrative arithmetic, not observed data):

| Avg order value | Orders needed for ~$2,000 earnings | Binding constraint | Plausible time for a full-time new seller (BK estimate) |
|---|---|---|---|
| $20 | ~100 | earnings | 9–18+ months, and many never get there |
| $50 | ~40 | earnings | 6–12 months |
| $100 | 20 | orders / unique clients | 4–8 months |
| $250 | 20 (earnings met at ~8) | orders / unique clients | 4–8 months, limited by order count and unique clients |

- If "earnings" in the level metric is net of Fiverr's 20% fee (claimed by T4 S31, unverified), gross sales need to be about 25% higher.
- **Credibility note for any case study the advisor meets later:**
  - Discount "0 → Top Rated in 3 months" stories. They come with survivorship bias and often promote courses.
  - Ask whether the seller had existing clients.
  - Ask whether it happened before or after the 2023 overhaul and the 2025–26 AI shock.
  - Ask for AOV, category and screenshots.

---

## 6. Myths vs reality (32 myths)

| # | Myth | Verdict | Evidence / reasoning |
|---|---|---|---|
| 1 | Stay online 24/7 to rank higher | **MYTH** [OFFICIAL/CONSENSUS] | Fiverr community education: the algorithm cares about completion, delivery, satisfaction and quality, not online status (S38). Several forum threads agree (S39, S59). The measured metric is response within 24h over 90 days (S29). "Online keeper" bots risk a ToS violation for automation (BK). |
| 2 | Share your gig everywhere (FB groups, WhatsApp) to boost ranking | **MOSTLY MYTH** (BK/CONSENSUS) | Untargeted clicks that don't convert add no quality signal and may dilute conversion metrics. Sharing with real prospects is fine and can bring orders. |
| 3 | Editing a gig kills its ranking | **PARTLY TRUE / NUANCED** [OFFICIAL] | Fiverr says frequent changes confuse the algorithm; make a change, then wait 3–4 weeks (S36). Occasional deliberate edits are fine. Changing category or a successful title is the riskiest. |
| 4 | Fiverr favours sellers from Pakistan/India (or suppresses them) | **UNSUPPORTED** (BK) | No evidence of country-based ranking in any official material. Search is personalised to buyer behaviour; buyers can filter by seller location/language, and some choose to. Country effects come from buyer choice, not a hidden rule. |
| 5 | Buy your first reviews / order from friends to "unlock" the algorithm | **MYTH + BAN RISK** (BK) | Review manipulation and self-ordering violate the ToS. The unique-clients metric and AI fraud detection (S12) make it more detectable. Fake buyers also leave no real private feedback. |
| 6 | Lower prices always win | **MYTH (2024–26)** [OFFICIAL data] | Spend per buyer +15.6% while buyers −21.9%; the cheapest work is shrinking fastest (S5, S8). Cheap gigs also struggle to reach level earnings. |
| 7 | Fiverr Pro is required to earn well | **MYTH, with a caveat** [OFFICIAL] | Pro is vetted and optional, but Fiverr routes growing high-value demand through Pro, Dynamic Matching and Managed Services (S2, S20). It matters more over time. |
| 8 | Promoted Gigs hurt organic ranking | **DISPUTED; probably false** (BK) | No official evidence of a penalty. Sellers report "organic dropped when I stopped ads", which fits losing ad-driven orders and reviews, not a penalty. Test with a capped budget. |
| 9 | You must be Level 2 to get orders | **MYTH** (BK) | New sellers get orders; levels mainly affect trust badges and access to some programs (e.g. Fiverr Go requires Level 2+, S22). |
| 10 | More gigs for the same service = more orders | **MYTH + ToS risk** (BK) | Duplicate gigs break Fiverr's gig rules and split reviews. Build distinct gigs for distinct services or buyer intents. |
| 11 | Stuff every keyword into tags/descriptions | **MYTH** [OFFICIAL/BK] | Fiverr advises the strongest relevant keyword in the title and diverse *related* tags (S36). Stuffing irrelevant terms breaks gig guidelines (BK). |
| 12 | Buyer Requests is the best way for new sellers to get work | **OUTDATED** (BK) | Buyer Requests was retired in 2022. Today it's Briefs plus Fiverr-curated matching. |
| 13 | Message lots of buyers or send unsolicited offers | **MYTH + spam violation** (BK) | Unsolicited promotional messages are treated as spam. |
| 14 | You must reply within 1 hour or you'll be penalised | **PARTLY MYTH** [OFFICIAL] | The level metric is replying within **24 hours** (S29). Fast replies still help conversion because buyers see response time (BK). |
| 15 | A 4.9★ rating means you're safe | **MYTH** [ANECDOTAL/OFFICIAL gist] | A Success Score of 6 is possible with 4.9★ because private feedback weighs heavily (S30, S40). |
| 16 | Private reviews don't matter | **MYTH** | Private feedback feeds the Success Score (S30, S40). |
| 17 | Delete and recreate a gig to reset a bad ranking | **RISKY / mostly MYTH** (BK) | You lose reviews and history. Rapid delete/recreate cycles can look like manipulation. Better to create a new, genuinely distinct gig and keep the old one. |
| 18 | New sellers get a guaranteed "new seller boost" | **DISPUTED** (BK) | Many sellers report early test impressions; Fiverr never confirmed a fixed boost. Fiverr does say it tests gigs in new categories/regions (S36). Plan for no boost. |
| 19 | Mutual cancellations don't hurt | **LIKELY MYTH** (BK) | Cancellations stopped being a direct level criterion in 2023 (S27), but they are negative order outcomes that plausibly feed the Success Score. Avoid them with better scoping. |
| 20 | Using AI in your work is banned on Fiverr | **MYTH, with a caveat** (BK) | Fiverr sells AI services and builds AI tools for sellers (S22, S24). The risk is *misrepresentation*: selling "hand-made" or human-written work that is AI output. Be transparent. |
| 21 | Fiverr is dead | **HALF-TRUE** [OFFICIAL] | Dead-ish for low-value commodity work (buyers −21.9%, writing/translation −24%); alive and growing for $1K+ work (+13–18% clients) (S5, S8, S18). |
| 22 | The algorithm is random / Fiverr hides new sellers | **MYTH** [OFFICIAL] | Fiverr describes relevance and quality signals and says fluctuations are normal, even for experienced sellers (S36, S37). Macro traffic changes are real (S17). |
| 23 | Being active on the Fiverr forum raises your ranking | **MYTH** (BK) | No mechanism. Forum activity is for learning only. |
| 24 | Logging in daily or "refreshing" gigs keeps them fresh | **MYTH** (BK/CONSENSUS) | Same logic as myth 1; no evidence. |
| 25 | Seller Plus boosts your organic ranking | **LIKELY MYTH** (BK) | Seller Plus sells insights, tools, a success manager and Fiverr Go access (S60). BK says Fiverr states it doesn't affect ranking; verify. |
| 26 | High impressions = success | **MYTH** [OFFICIAL] | Diagnose the funnel: impressions (demand/keywords) → clicks (thumbnail, title, price) → conversion (gig page, reviews, response) (S36). |
| 27 | Asking buyers for a 5-star review is fine | **RISKY** (BK) | Asking for honest feedback is OK. Tying anything to the rating (discounts, extras, pressure) is review manipulation. |
| 28 | Using a VPN helps (e.g. to appear in the US or UK) | **MYTH + ban risk** (BK) | Location misrepresentation and identity/IP mismatches are classic triggers for account review. |
| 29 | Level status is permanent once earned | **MYTH** [OFFICIAL] | Levels are evaluated continuously on all six metrics. Demotions happen, sometimes with a grace period (S29, S30, S55). |
| 30 | Top Rated is automatic once you hit the numbers | **MYTH** [OFFICIAL] | A manual review is required. Only high-demand categories qualify, and the wait is 45–90 days (S32, S33). |
| 31 | Repeat orders from your best client will level you up | **MYTH** [OFFICIAL] | The unique-clients threshold (10 for Level 2) exists precisely to prevent this (S27, S29). |
| 32 | "Buy an aged Level 2 account" to skip the grind | **MYTH + ban risk** (BK) | Account selling/transfer is prohibited. Identity verification mismatches get these accounts closed, and the buyer loses the money. |

---

## 7. Beginner mistakes and account-safety risks

### 7.1 Most common beginner mistakes (field consensus + BK)

1. **Launching a commodity gig in an AI-exposed category** (simple logo, blog post, captions) at rock-bottom prices. The data says this segment is shrinking fastest (S8, S10).
2. **Pricing below the level of the economics.** $5–$20 AOV makes Level 2's earnings threshold very slow to reach (derived).
3. **Vague scope:** no requirements form, no FAQ, unclear revisions. This leads to disputes, cancellations and bad *private* feedback, which drags the Success Score (S30).
4. **Panic-editing the gig every few days** after a quiet week, against Fiverr's advice to wait 3–4 weeks (S36).
5. **Chasing online status** instead of fast, high-quality replies (S38).
6. **Copied gig text or portfolio images** (plagiarism or IP infringement → gig denial or warnings) (BK).
7. **Too many near-duplicate gigs** (BK).
8. **Accepting orders outside competence** to "get reviews". This produces the worst private feedback.
9. **Over-promising delivery times** (1-day) to look competitive, then delivering late (BK).
10. **Treating Fiverr as the only channel.** Platform traffic is shrinking (S17).
11. **Ignoring unique clients.** Relying on one buyer blocks level progress (S27).
12. **Taking "free sample/test task" requests off-platform.** It is both a scam pattern and a ToS risk (BK).

### 7.2 Account-safety risks: the ban and warning list (BK, consistent with Fiverr ToS)

| Risk | Why it's dangerous | Safe alternative |
|---|---|---|
| Sharing email/phone/WhatsApp/external payment links in messages; taking payment outside Fiverr | The most common cause of warnings and permanent bans; the message filter flags it | Keep all communication and payment on Fiverr. For calls, use Fiverr's built-in call/meeting tools. |
| Self-ordering, friend orders, review-swap groups, paid reviews | Review manipulation → bans; fraud detection is increasingly AI-driven (S12) | Get first clients from your real network ordering through the gig, paying real money for real work |
| Offering discounts or extras for 5-star reviews; pressuring buyers to change reviews | Feedback manipulation or extortion | Ask for "honest feedback" only |
| Multiple seller accounts, shared or bought accounts | One account per person; identity verification | For an agency, use Fiverr's Team/Agency account options (S20) |
| VPN / fake location / identity mismatch | Triggers verification and bans | Operate openly from Morocco. Present location as a strength (FR/AR/EN multilingual, EU/MENA time zones). |
| Bots, auto-online tools, auto-messaging scripts | Automated access breaks the ToS | Mobile app notifications and saved quick-response templates |
| Unsolicited promotional messages | Spam | Briefs and inbound only |
| **Prohibited services:** fake followers/likes/engagement, fake reviews, academic-dishonesty work (writing theses/assignments for students to submit), IP-infringing work | Gig removal → account warnings | DESORA: sell *formatting/design/editing* or *coaching* framed ethically. Never "we write your PFE/mémoire". Never sell engagement. |
| Clicking "Fiverr support" links sent in messages; downloading buyer "files" (.exe/.zip) | Account takeover or malware scams (BK) | Fiverr support never contacts you via order chat with external links. Use 2FA. |
| Accumulating ToS warnings | Warnings can block level-ups (T4 claims Level 2 needs zero active warnings) and escalate to suspension | Treat every warning as a serious incident; review and fix the process |

---

## 8. Playbooks

### 8.1 First-10-orders playbook (2025–2026 conditions)

*Sources: S34, S36, S38, S5/S8 data and BK. This is an assembled playbook; label each step's evidence as shown.*

**Phase 0: choose the right battlefield (days 1–3)**
1. Pick 2–3 services where DESORA has proof and where the buyer outcome is worth $100–$1,000+. Avoid pure commodity deliverables. [OFFICIAL data] (S5, S8) Candidate examples:
   - Meta/TikTok ads setup plus a 2-week optimisation sprint.
   - AI-assisted short-form video ads, packs of 4, 8 or 12.
   - Social media content systems: strategy, templates and a 30-day calendar.
   - Marketing automation or lead-response chatbots, riding the AI automation and AI agents demand. (S24, S25)
2. Validate demand in Fiverr search: are top gigs showing orders in queue? What do buyers type (autocomplete)? [OFFICIAL] (S36)

**Phase 1: build conversion assets (days 3–10)**
3. Complete a profile with a real identity, a professional photo, a specific headline and languages (EN/FR/AR is a differentiator).
4. For each gig:
   - A keyword-led title in buyer language.
   - Diverse related tags.
   - An outcome-first thumbnail.
   - A short gig video with no contact details (BK).
   - Three distinct packages.
   - A requirements form and an FAQ that pre-empts scope disputes.
5. Portfolio of real samples, before/afters and results, with client permission. [OFFICIAL] (S34)
6. Pricing (BK + derived):
   - Entry package: realistic, not rock-bottom (e.g. $60–$120 for marketing deliverables).
   - Standard package: the intended sale.
   - Premium package: anchors value.
   - Avoid $5–$15 packages. They bring disproportionately difficult buyers and slow level progress.

**Phase 2: get the first 3 orders (weeks 2–6)**
7. **Warm network, legitimately:** invite past or current DESORA clients to buy a real, needed service *through the gig* at the normal price. This is allowed; fake or friend-funded orders are not. Each must be a distinct real client, which also counts toward unique clients.
8. **Briefs:** respond quickly with tailored, specific offers (BK).
9. **Response discipline:** answer every inquiry fast (within an hour where possible), ask clarifying questions, and send custom offers that match exactly what the buyer described. [OFFICIAL] (S34)
10. **Optional:** a small Promoted Gigs test if eligible, with a daily cap and conversion tracking (BK). Stop if cost per order exceeds about 30–40% of order value.

**Phase 3: orders 4–10 (weeks 4–12)**
11. Deliver early and over-communicate: kickoff message, midpoint update, delivery walkthrough (Loom-style video inside Fiverr). This protects private feedback and the Success Score. (S30, S40)
12. At delivery, ask for honest feedback. Never mention star numbers (BK).
13. Offer a logical next step as a custom offer (e.g. a monthly management retainer) to build repeat revenue, which drives two-thirds of revenue (S21). Remember the unique-clients count still needs new buyers.
14. Change one gig element at a time (title OR thumbnail OR price) and log the date. Wait 3–4 weeks before judging. [OFFICIAL] (S36)
15. Track weekly: impressions, clicks, CTR, messages, orders, conversion, and response rate.

**Realistic expectations:** first-order timing varies from days to months (S56). The official line is patience plus optimisation (S34). With a warm-network start, DESORA should expect its first orders within weeks, not months (BK estimate).

### 8.2 "My gig impressions dropped": recovery playbook

*Sources: S36 (official), S57, S58 (field), S17 (macro), BK.*

**Step 1: is it you or the market? (day 1)**
- Check forum and community posts for simultaneous drops (S57, S58).
- In 2026, Fiverr itself reports marketplace-wide traffic and demand declines, including from Google (S17, S9). If the whole category is down, focus on conversion and off-platform demand, not on rebuilding the gig.
- Check seasonality: some months are always quieter (BK).

**Step 2: check your own health metrics (day 1)**
- Success Score change (per gig and overall) (S30, S40).
- Recent late deliveries, cancellations or disputes.
- Response rate below 90%.
- Any ToS warning.
- A "low performance" label.
- A recent level demotion.
- Any of these can explain a drop. Fix the root cause first.

**Step 3: diagnose the funnel stage [OFFICIAL] (S36)**
- **Impressions down:** a demand or keyword problem. Re-check buyer search terms, then refresh the title keyword and tags.
- **Impressions stable, clicks down:** a thumbnail, title or starting-price problem. Competitors may have repositioned.
- **Clicks stable, orders down:** a gig page, reviews, package or response-time problem.

**Step 4: act, one change at a time**
- Change ONE element and wait 3–4 weeks. [OFFICIAL] (S36)
- If demand for the service itself is structurally shrinking (AI-exposed), build a **new, genuinely distinct gig** for adjacent growing demand (e.g. "AI video ads" instead of "simple video editing"). Keep the old gig live with its reviews (BK).
- Consider a capped Promoted Gigs test to restart order flow and reviews (BK).
- Re-activate past buyers with relevant custom offers (BK; allowed within the Fiverr inbox for existing buyers).

**Step 5: don't do these**
- Delete gigs.
- Duplicate gigs.
- Keyword-stuff.
- Buy orders or reviews.
- Run "stay online" bots.
- Edit daily.
- Spam buyers.

**Step 6: diversify (ongoing)**
- Build off-platform lead flow that points to the Fiverr gig.
- Keep a non-Fiverr client base so a platform shock doesn't threaten the agency. Fiverr's own 2026 guidance cut shows platform-level shocks are real (S7).

---

## 9. Free tools and resources discovered

| Name | URL | Purpose | Free? | Evidence |
|---|---|---|---|---|
| Fiverr seller dashboard analytics | fiverr.com (seller dashboard) | Impressions/clicks/orders/conversion per gig; level metrics | Yes | S36 (BK for UI details) |
| Fiverr Help Center: freelancer levels | https://help.fiverr.com/hc/en-us/articles/360010560118 | Official level metrics and rules | Yes | S29 |
| Fiverr Help Center: Top Rated | https://help.fiverr.com/hc/en-us/articles/15140188560913 | Top Rated review process and eligible categories | Yes | S32 |
| Fiverr Community education blogs | community.fiverr.com/public/blogs/… | Official-ish guidance on the algorithm, Success Score, impressions drops | Yes | S33, S36, S37, S38, S40 |
| Fiverr Business Trends Index | fiverr.com/news & fiverr.com/resources/guides/reports | Twice-yearly demand/search-growth data by skill | Yes | S24, S25, S26 |
| Fiverr investor relations (quarterly letters, 20-F) | https://investors.fiverr.com | Hard platform data and strategy | Yes | S1–S3, S5, S21, S46–S48 |
| Fiverr search autocomplete / related searches | fiverr.com search bar | Keyword ideas in buyer language | Yes | BK |
| Google Trends | trends.google.com | Seasonality and demand checks for service keywords | Yes | BK |
| Canva (free tier) | canva.com | Gig thumbnails, portfolio images | Free tier | BK |
| Loom (free tier) | loom.com | Delivery walkthrough videos (upload inside Fiverr, no contact info) | Free tier | BK |
| LanguageTool / Grammarly (free tiers) | languagetool.org / grammarly.com | English quality for gigs and messages | Free tier | BK |
| fiverr-ai-autofill (GitHub) | https://github.com/NadirAliOfficial/fiverr-ai-autofill | Chrome extension that AI-fills gig titles/descriptions/FAQs (Groq) | Free/OSS | S64. **Caution:** third-party, generic AI text; never give it account credentials; automation may breach the ToS |
| Fiverr Go / Seller Plus | fiverr.com | AI assistant and models; analytics and keyword insights | **Paid** (~$25/mo for Go per reviews) | S22, S49, S60 |

**Tools to avoid:** "always online" keepers, auto-messengers, scrapers that log into your account, review or order sellers. All carry ToS and ban risk (BK).

---

## 10. Open questions and things that could not be verified

1. **Exact current level thresholds** (Level 1 rating 4.4 vs 4.7; orders 5 vs 10; Top Rated $20K/100 orders vs $10K/40 orders/20 clients; any "days active" requirement). Verify on the live Levels page in the seller dashboard.
2. **Earnings metric:** is it net of Fiverr's 20% fee (T4 claim) or gross?
3. **Success Score benchmarking** against the same category and price band: only a T4 source (S30). Needs official confirmation.
4. **30-day grace period before demotion:** T4 only.
5. **Promoted Gigs and organic ranking:** no official statement retrieved this session.
6. **New-seller boost:** unconfirmed.
7. **Seller fee and buyer fees for 2025–26:** BK says a 20% seller commission and a percentage buyer service fee plus a small-order fee. The take-rate rise to 28.0% (S5) suggests fee or ads changes; not itemised here.
8. **Fiverr Go pricing and eligibility changes after launch:** only review sites (T4) were available.
9. **Country-level visibility:** no data either way. The claim that Moroccan sellers face any ranking disadvantage is unsupported.
10. **Morocco payouts** (Payoneer and bank transfer availability, fees, PayPal restrictions): BK only; verify in Fiverr's withdrawal settings.
11. **Fiverr's AI-use disclosure rules for sellers:** not retrieved.
12. **Seller-spotlight case studies with concrete numbers** (Kelin Ainsworth, AJ Camara, David Colón): letters found but not readable.
13. **Reddit r/Fiverr and r/freelance 2025–26 field reports:** inaccessible this session (search and fetch both blocked). Future work should cover first-order timelines, "the drop" recovery stories and ban stories.
14. **Q3 2026 data:** not yet published as of 2026-09-26 (next results around early November 2026).

**How to close these gaps:** allow network egress to investors.fiverr.com, help.fiverr.com, community.fiverr.com and sec.gov, raise the session WebSearch cap, and re-run cluster 10 with fetching. Priority fetch list:
- the Q2 2026 shareholder letter (S46);
- the Q4 2025 letter (S2);
- the FY2025 20-F (for the >$500 buyer share in 2025);
- Help Center levels (S29);
- community blogs S36, S37, S38 and S40.
