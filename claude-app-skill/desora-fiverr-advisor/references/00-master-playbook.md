# DESORA Fiverr Master Playbook

**What this is:** the cross-checked synthesis of 12 research clusters (see `README.md` for the evidence audit). It is the file the `fiverr-advisor` subagent reads first. Where a cluster file in `research/` disagrees with this playbook, **this playbook wins**: the conflicts were compared side by side and resolved here (§3).

**Compiled:** 2026-09-26. **Next full refresh due:** when network access to fiverr.com domains is available (see `verification-queue.md`), and at least every 6 months, because Fiverr changes rules often.

---

## 0. How to read this file

### 0.1 Evidence tags

| Tag | Meaning | How the advisor should use it |
|---|---|---|
| **[OFFICIAL]** | Fiverr's own words: Help Center, Fiverr staff blog posts, investor releases or earnings calls. In this research round almost always read as a **search snippet**, not a full page. | State as fact, but cite it and say "per Fiverr Help Center". |
| **[CONSENSUS]** | 3+ independent non-official sources agree, and the mechanism makes sense. | State as strong practice. |
| **[FIELD]** | One or two seller reports, or a single tool or guide. | Say "sellers report". Treat as a hypothesis to test. |
| **[DISPUTED]** | Sources conflict. A verdict is given in §3. | Give the verdict and the reason. |
| **[REASONED]** | Inference from how two-sided marketplaces and ranking systems work, or from arithmetic. | Explain the logic. |
| **[VERIFY]** | Background knowledge that could not be re-checked this round. | Tell the owner to check the live dashboard or Help Center before acting. |

### 0.2 Research status (be honest about this)

- 12 research agents ran in parallel on 2026-09-26.
- The cloud environment's network policy **blocked full-page reads of fiverr.com, help.fiverr.com, community.fiverr.com, investors.fiverr.com, Reddit, Medium and most blogs**. The session's web-search budget (200 searches) was then exhausted.
- **What was actually read** (counted from `sources/ALL-SOURCES.tsv`):
  - **688 distinct sources** in total.
  - **287 read in full.** They are all on the few sites the network allowed: GitHub, SourceForge and package registries. They include mirrored official documents such as Fiverr earnings-call transcripts, the Fiverr ToS (2020 copy), Moroccan Bulletin Officiel texts and the IANA time-zone database.
  - **401 more seen only as search-result extracts.** 249 of the extract entries are official (tier-1) sources, mostly Fiverr's own Help Center, blog and investor pages.
  - **No Fiverr Help Center page was read end to end.** Fiverr's official wording reached us through search extracts.
- The owner asked for 1,000+ fully read articles. **That target was not reached in this round.** The advisor has a Deep Research mode (see the agent file) to keep reading and upgrading this knowledge base once the network allows it.

---

## 1. The 30 laws of winning on Fiverr in 2026 (ranked)

These are the conclusions that survived cross-checking across clusters. Each one points to where the detail lives.

1. **The market split in two. Sell into the growing half.** [OFFICIAL]
   - Active buyers fell from 4.0M (end 2023) to 2.7M (June 2026, −21.9% y/y), while spend per buyer rose from $278 to $368 (+15.6%).
   - Projects over $1,000 are the growth engine: +22.8% GMV in Q4 2025, and +13–18% more clients completing them in H1 2026.
   - Work under $1,000 is shrinking at least 10% y/y, and writing & translation more than 24%.
   - **DESORA sells packaged, outcome-based, recurring marketing services. It does not sell $5–$30 commodity deliverables.** (research/10, research/12)

2. **Relevance gets you considered; performance decides where you rank.** [OFFICIAL]
   - Fiverr calls relevance "the most important ranking factor". It reads the title first, then tags, then the description.
   - Among the matched gigs, order is set by historical client interest, client-satisfaction scores, review scores, price, availability, responsiveness and machine-learning models.
   - Late deliveries, cancellations and low response rates cut visibility. (research/02, research/03)

3. **Results are personalized, so "my rank" is not one number.** [OFFICIAL] Results depend on the buyer's language, urgency (fast deliverers get favoured) and behaviour. Measure your own funnel (impressions → clicks → orders), not screenshots of search pages.

4. **The Success Score (1–10) is the hidden master metric.** [OFFICIAL]
   - It is scored per gig, and the overall score is weighted by each gig's order count. Recent and higher-value orders count more.
   - It is **relative to sellers in your price range**.
   - It draws on six areas: client satisfaction (including **private** ratings you never see), communication, conflict-free orders, cancellations, on-time delivery, and value for money.
   - It gates levels, Briefs (score ≥7) and visibility. A 4.9★ public rating can sit next to a Success Score of 6.

5. **Private feedback decides your fate, and expectation-setting decides private feedback.** [OFFICIAL] Fiverr's own staff say low satisfaction usually comes from mismatched expectations (an inflated portfolio, a vague package, "aspirational" pricing), not bad work. Every scope line, FAQ and kickoff message protects the score.

6. **Levels run on six metrics, checked daily:** Success Score, rating, response rate, completed orders, **unique clients** and earnings. [OFFICIAL]

   | Level | Success Score | Rating | Response rate | Orders | Unique clients | Earnings |
   |---|---|---|---|---|---|---|
   | Level 1 | 5+ | 4.4+ | 80%+ | 5+ | 3+ | $400+ |
   | Level 2 | 7+ | 4.6+ | 90%+ | 20+ | 10+ | $2,000+ |
   | Top Rated | 9+ | 4.7+ | 90%+ | 40+ | 20+ | $10,000+ |

   - You move up the next day once all six are met at once.
   - If a metric drops, you get 30 days' grace before losing the level.
   - Top Rated also needs a manual review. It is limited to high-demand subcategories and takes 45–90 days; if rejected, you wait 180 days.
   - Anything quoting "$20k / 100 orders / evaluated on the 15th" describes the pre-2024 system.

7. **Unique clients is the agency trap.** [OFFICIAL] Repeat orders from one retainer client count toward orders and earnings, but **not** toward unique clients. Keep an entry gig that keeps bringing in new buyers.

8. **Response rate is about first replies within 24 hours over 90 days; buyers see response *time*.** [OFFICIAL]
   - Staying online 24/7 is a myth. "Online keeper" extensions are a ToS risk.
   - Buyers message several sellers at once, so a human reply within an hour wins the sale. [OFFICIAL + CONSENSUS]

9. **Every rule of money and contact points back to Fiverr.** [OFFICIAL]
   - Never share or ask for email, phone, WhatsApp, Discord, social handles or outside payment, whoever brings it up.
   - Information the work needs, such as ad-account partner access, is exchanged inside the order page.
   - Cold-messaging buyers counts as spam.
   - This is the number-one cause of warnings and bans.

10. **Review manipulation is broadly defined and strictly enforced.** [OFFICIAL]
    - Prohibited: incentives (discounts, extras, refunds) for reviews; making files or delivery conditional on a rating; asking a buyer to edit or remove a review; guilt appeals; friends, family or self-orders; cancelling to erase a review.
    - Allowed: a neutral invitation to leave *honest feedback*.

11. **Cancellations are not all equal.** [OFFICIAL]
    - A buyer cancelling **before requirements are submitted** costs nothing.
    - Seller-initiated cancellations count against you, and so do force-cancels of very late orders.
    - Once one milestone is complete, cancelled later milestones don't count.
    - Unresponsive buyers don't hurt the Success Score. Use a mutual cancellation.

12. **Know the order clocks.** [OFFICIAL]
    - Missing requirements auto-cancel the order after 14 days (unless you skip requirements).
    - After delivery the buyer has 3 days to act (they can extend by up to 5), then the order auto-completes.
    - An order goes from Late to Very Late after 24 hours, and the buyer can then cancel without your approval.
    - Resolution Center requests are auto-accepted after 48 hours of silence.
    - Only the seller can request an extension (up to 60 days), and must do it **before** the due date.
    - Never press Deliver on unfinished work.

13. **Batch revisions and cap them.** [OFFICIAL, April 2026 staff blog] Scattered, repeated revision requests hurt "conflict-free orders". Use finite revision counts, define what a revision is, send drafts mid-order and ask for all changes in one list.

14. **Editing a gig does not reset its ranking, but churn ruins your data.** [OFFICIAL]
    - While Fiverr re-indexes, the gig may briefly disappear from search.
    - Change **one** element at a time, log it, and wait 3–4 weeks. Fiverr says constant edits "confuse the algorithm".

15. **Diagnose the funnel before touching anything.** [OFFICIAL]
    - Low impressions point to relevance or demand.
    - Low CTR points to the card: thumbnail, title start, "From $" price, rating and review count.
    - Low conversion points to the gig page: packages, proof, FAQ and response time.
    - Many inquiries but few orders point to the sales process.
    - Falling Success Score points to delivery. (§11)

16. **Long-tail first.** [CONSENSUS + REASONED] A new gig has no performance history, so head terms go to incumbents. Win narrow queries (platform + industry + language) with a precise title, then widen.

17. **The cover image is the gig's ad.** [OFFICIAL] Fiverr says a strong gallery "increases click-through rates".
    - Size 1280×769; use 3–6 words, readable at phone size.
    - Show the outcome or the real deliverable.
    - Look different from the top 20 results for your keyword.
    - Never show contact details, Fiverr badges or stars, or unlicensed assets.

18. **Fill every gallery slot and tag every item.** [OFFICIAL]
    - The gallery holds 3 images, 1 video (≤75 s) and 2 PDFs (only the first 3 pages of each are shown).
    - Tagging items lets Fiverr show buyers matching reviews that include files.
    - Fiverr says "Gigs with videos perform better." Uplift figures like "+220%" have no traceable source.

19. **Three packages: Standard is the product, Premium the anchor, Basic the door.** [CONSENSUS + price data]
    - Median Fiverr ladders are Standard ≈ 2× Basic and Premium ≈ 3.5× Basic.
    - Name packages by outcome. Finite revisions. Deliver in less time than you promise.
    - Use **anchoring** (reliable) and the middle-option preference (moderate). **Don't engineer fake decoys**: decoy and choice-overload effects mostly fail to replicate in realistic settings. (§8)

20. **Trade scope, never cave on price.** [CONSENSUS] When a buyer pushes back, ask for their range, re-scope, and offer the Basic package or a smaller custom offer. Discounting straight away tells the buyer the first number was inflated.

21. **Fiverr Ads amplify a gig that already sells; they don't fix one that doesn't.** [OFFICIAL]
    - Ad placement = Match Score × Bid, and the Match Score is built from gig quality and delivery quality.
    - Since 15 Oct 2025 the CPC cap can reach $6.
    - Always compute break-even CPC = AOV × 0.80 × (1 − delivery cost share) × conversion rate, and set a manual cap below it. (§12)

22. **Seller Plus buys insight, not ranking.** [OFFICIAL + REASONED]
    - Kickstart is ~$15/mo, Standard ~$25/mo, Premium ~$49/mo. [VERIFY]
    - Its Keyword Research tab is the only first-party source of search-volume and competition data.
    - It is worth buying only if someone will act on the insights every month.

23. **The Fiverr Go Personal Assistant is being shut down.** [OFFICIAL snippet] It closed to new subscribers on 1 Sept 2026 and ends on 1 Oct 2026. Don't build processes on it. Built-in auto-replies and Quick Responses remain.

24. **Briefs replaced Buyer Requests; they are a bonus, not a pipeline.** [OFFICIAL] Only services with a Success Score of 7 or more receive them, and you have 72 hours to reply. Declining an irrelevant brief costs nothing. Volume in 2025–26 is unreliable.

25. **Fiverr officially supports agencies.** [OFFICIAL]
    - Fiverr Agencies launched 30 Jan 2024: 3–9 real team members, available in Digital Marketing and 4 other categories.
    - Switching keeps your orders and reviews.
    - Team Account gives staff their own logins; never share passwords.
    - Only the admin earns the reviews, level and Success Score, so quality-check every delivery.

26. **Position as a big fish in a small pond.** [CONSENSUS in positioning literature]
    - One lead specialism, plus 2–4 adjacent gigs aimed at the same buyer.
    - DESORA's structural moat: a native French, Arabic and English team, near European time zones, at nearshore prices.

27. **AI is allowed; deception is not.** [OFFICIAL]
    - AI can be used in every category, but the output must be meaningfully customized and you stay accountable.
    - You must honor a client's explicit "no AI" request.
    - Deceptive AI is banned: impersonation, or a person's likeness or voice used without consent.
    - Sell what AI can't do: strategy, orchestration, accountability, localization and QA.

28. **External traffic helps if it's targeted, and is useless or risky if it's junk.** [OFFICIAL + REASONED]
    - Fiverr encourages promoting gigs outside the platform, as long as every call to action points back to Fiverr.
    - Bring your existing clients to order through Fiverr.
    - Never link-dump in groups, buy "gig promotion" traffic or use bots.

29. **Some impression drops are market-wide.** [OFFICIAL] Fiverr itself reported softer Google-related traffic continuing into Q3 2026. Check the whole category and account health before blaming the gig.

30. **Compliance is a moat.** [REASONED] Fiverr moved to AI-driven fraud detection and cut 30% of staff (Sept 2025). Automated enforcement is less forgiving of grey areas, and appeals are slower. Stay squarely inside the rules.

---

## 2. Verified facts sheet (the numbers)

**Legend for "Confidence":** **H** = official snippet plus consensus. **M** = official snippet only, or consensus only. **L** = a single source or background knowledge (verify before use).

### 2.1 Money

| Fact | Value | Confidence | Verify at |
|---|---|---|---|
| Seller commission | 20% of every order, including extras and tips | H | Earnings page |
| Buyer service fee | **5.5% plus $3.50 on purchases under $200.** Charged **on each separate payment** (each extra or tip is charged its own fee). Older "$2–3 under $50–100" figures are outdated | M (official snippet) | Checkout as buyer |
| Price limits | Packages from $5 up to the tier maximum. Some categories have higher minimums, and "standardized" categories enforce a minimum scope; ignoring it can reduce search visibility. Custom offers $5–$20,000 ($50,000 on Pro) | M | Gig editor |
| Milestones | Only orders over $100; each milestone ≥ $50; up to 5–6 steps (sources disagree). Client has 8 days to accept each delivery and 10 days to fund the next, otherwise the order stops. Once one milestone is complete, cancelling the rest doesn't hurt stats | M | Help: milestones |
| Subscriptions | Eligible categories and sellers only. Gig price ≥ $10; max delivery 30 days. Recurs every 5–29 days, 1–7 weeks or 1–2 months. Each cycle is a separate order. Optional 5/10/15/20% discount from the 2nd order. Custom offers can be subscriptions | M | Help: subscriptions |
| Hourly | Level 1+. Custom hourly offer needs an estimate of ≥ 8 h. Log hours by Sunday 23:59 UTC; client billed Monday with 7 days to approve; funds 7–14 days after the cycle | M | Help: hourly |
| Fiverr blended take rate | 28.0% TTM to June 2026. This is **not** the seller fee | H (official) | investors.fiverr.com |
| Clearance | 14 days (New, Level 1, Level 2). 7 days for Top Rated and Pro ("Early Payouts") | M | Earnings page |
| Auto-complete after delivery | 3 days (buyer can extend review by up to 5 days) | H | Help: order statuses |
| Tips | Allowed for 30 days after completion. Min $5. Orders under $25 can be tipped up to $25; orders over $25 up to 100% of price. Never ask for tips | M | Help: tips |
| Payoneer withdrawal (Fiverr fee) | $1 (about 2 days) or $3 (about 2 hours). Max $5,000 per transaction. 24-hour wait after adding a method. One Payoneer method active at a time | M | Earnings page |
| Payoneer USD→MAD conversion | Not published for Morocco. Budget 2–4% plus fixed fees | L | Payoneer fee screen |
| Cash cycle (delivery → MAD in bank) | Delivery + 3 days auto-complete + 14 days clearance + 1–3 days payout ≈ 18–21 days | M (derived) | — |

### 2.2 Levels and metrics

| Fact | Value | Confidence |
|---|---|---|
| Level thresholds | See Law 6 table | H |
| Evaluation | Daily. Promotion the next day once all six are met. 30-day grace before demotion. Top Rated → manual review | H |
| Top Rated review | 45–90 days, high-demand subcategories only, may include skills tests. 180 days before re-evaluation after a rejection | M |
| Days-active requirement | **Probably none** in the current system. Blogs quoting 60/120/180 days are likely the old system | DISPUTED → trust official six metrics |
| Earnings metric gross or net | Unknown. Plan conservatively with net (after the 20% fee) | L |
| Rating window for levels | Possibly the last 2 years (snippet) | L |
| Response rate | Share of first replies to new inquiries within 24h, over the last 90 days. Seller-only view. Spam reported within 24h is excluded | H |
| Response time | Average hours to first reply. Visible to buyers | H |
| Success Score | 1–10. Per gig; overall weighted by order count. Recent and higher-value orders weigh more. Relative to peers in your price range. Six areas (Law 4) | H |
| Private review | Anonymous, never shown to seller. Invitation ~24h after completion; can be given up to 60 days after completion | H |
| Public review window | 14 days after completion (the 2020 ToS said 10; 14 is current) | M |
| Low Success Score | A "critically low" score can trigger a low-performance label and reduced visibility | L |
| Conversion rate definition | Fiverr: orders ÷ clicks (people who ordered after viewing the gig page). Some guides use orders ÷ impressions; don't | M |
| CTR / conversion benchmarks | **Fiverr publishes none.** Field ranges: CTR ~1–3% typical, >3% good; conversion (orders ÷ clicks) ~1–5%. Low reliability. Benchmark against your own 90-day history | L |
| Elite rating reality | A top-50 SEO seller cohort averaged 4.9★ (306k reviews); 9 of the top 10 show a "1 hr" response time | M |

### 2.3 Gig specs (confirm in the editor once; see the check in §2.6)

| Field | Spec | Confidence |
|---|---|---|
| Title | Starts with "I will"; max 80 characters (editor `maxlength=80`). ~50–65 characters visible on cards | H |
| Tags | Up to 5, about 20 characters each, letters and numbers only. Newer editors may label them "positive keywords" | M |
| Description | Max 1,200 characters (minimum ~120) | M |
| Gallery | 3 images + 1 video + 2 PDFs (first 3 pages of each shown). Gallery items can be tagged | H |
| Image | 1280×769 recommended, 712×430 minimum. JPG/PNG. Export under 2 MB | M |
| Video | ≤75 s, ≤50 MB, landscape. Reviewed before going live ("a few business days"). Required in Video & Animation | M |
| Packages | Single, or 3 tiers. Package name ~35 characters, description ~100 characters | L–M |
| Requirements | Free text, multiple choice, attachment; can be marked required. Delivery clock starts on submission | M |
| Profile | Display name 2–50 characters (a business name is allowed). Username is permanent. About ~600 characters. Tagline ~150 characters | M/L |
| Profile photo | Your real photo, or a logo "if relevant". AI images allowed if accurate. No other person, celebrity or GIF | H |

### 2.4 Programs and features

| Feature | Key facts | Confidence |
|---|---|---|
| Fiverr Ads | Match Score × Bid. Pay per click; billed monthly (Fiverr balance first). Min bid $0.05, CPC cap up to $6 since 15 Oct 2025. 30-day attribution from last click. Eligibility unpublished ("active Gigs") | M–H |
| Seller Plus | Kickstart ~$15/mo (unleveled), Standard ~$25/mo, Premium ~$49/mo (Success Manager). Standard and Premium include a $5/mo ads credit (no rollover). Advanced Analytics include Keyword Research and an organic-vs-ads funnel. **Marketing tools:**<br>• Repeat-client coupons up to 30% off, valid 30 days.<br>• Custom-offer coupons, the only way to discount a brand-new lead (validity 24 h or 30 days; sources conflict).<br>• First-time-client promotions of 5% or 10%, needing a package of $15+, running up to 30 days, capped at 10 orders/month (Standard) or 20 (Premium).<br>• **Follow-up messages to past clients: 10/month (Standard) or 20/month (Premium). This is the official way to re-engage past buyers.**<br>Discounts come out of the seller's earnings | M |
| Fiverr Go | Launched 18 Feb 2025. Personal AI Assistant ends 1 Oct 2026. Creation Models ~$25/mo (Level 2+ and vetted sellers). Being folded into core product | M |
| Briefs | AI-matched. Success Score ≥7. 72-hour reply window. Offers can be single, milestones, subscription or hourly | H |
| Built-in Zoom | Pre-order ≤30 min (eligible sellers only), post-order ≤60 min. Recorded, kept 30 days | M |
| Paid consultations | Level 2, Top Rated and Pro. 30 or 60 min slots | M |
| Custom offers | Single payment / milestones / subscription; optional expiry and revision count | H |
| Request to Order | Limits instant orders. Fiverr warns it "may lower total order volume". Whether it is Seller Plus Premium only is disputed | DISPUTED |
| Agencies | Since 30 Jan 2024. 3–9 real members. Categories: Digital Marketing, Programming & Tech, Graphics & Design, Video & Animation, Business. History is kept | H |
| Team Account | Admin plus invited members (email invites valid 7 days). Only the admin gets reviews and metrics | H |
| Gig limits by level | Historically ~7 / 10 / 20 / 30 active gigs | L (VERIFY) |
| Fiverr Workspace | Free plan = 1 client (contracts, invoices) | L |

### 2.5 Platform data (from Fiverr investor materials)

| Metric | Value |
|---|---|
| Annual active buyers | 4.0M (Dec 2023) → 3.6M (Dec 2024) → 3.1M (Dec 2025) → 2.9M (Mar 2026) → **2.7M (Jun 2026)** |
| Spend per buyer | $278 → $302 → $342 → $356 → **$368** |
| Buyers spending >$500/yr | 65% of marketplace revenue (2024) |
| >$1k transactions | GMV +22.8% (Q4 2025). Still under 15% of GMV |
| Managed services | +65% y/y, average deal ~$17,000 (Q3 2025) |
| Dynamic Matching | AOV ~$2,200; 15% of briefs over $1,000 (Q3 2025) |
| Categories named as growing | Digital marketing, video & animation, programming & tech, AI agents, workflow automation |
| Categories named as falling | Writing & translation (−20% in 2025; >−24% y/y in Q2 2026); simple website building ("vibe coding") |
| Company events | 30% layoff on 15 Sept 2025 ("AI-first"). 2026 revenue guidance cut to $356–372M on 29 Jul 2026 |
| Business Trends Index (search growth, small bases) | AI agents +18,347%; GoHighLevel +1,489%; Make +1,083%; Substack +2,028%; Beehiiv +1,211%; faceless YouTube +488%; AI automation +136%; AI video +66%; Claude Code specialists +938%; AI video & animation demand +278% y/y (June 2026) |

### 2.6 The 10-minute editor check (owner, once)

1. Create a new gig as a draft.
2. Type an 81-character title and record the limit.
3. Add a 21-character tag and record the error.
4. Paste 1,300 characters into the description and record the counter.
5. Record the package name and description limits, the delivery-days dropdown and the revision options (does "Unlimited" still exist?).
6. Add FAQs until blocked; record the limits.
7. Screenshot the gallery requirement text.
8. Delete the draft.
9. Paste the results into `desora-state.md` → "Verified platform specs".

---

## 3. Contradictions resolved (the verdicts)

| # | Topic | Claim A | Claim B | Verdict and why |
|---|---|---|---|---|
| 1 | Top Rated thresholds | $20k / 100 orders / 180 days (old blogs) | $10k / 40 orders / 20 unique clients / Success Score 9 (June 2025 staff blog + Help Center snippet) | **B.** It is the newer official source; A is the pre-2024 system. |
| 2 | Level evaluation | Monthly on the 15th, 60-day window | Daily; next-day promotion; 30-day grace | **B** (official). A was retired with the level overhaul. |
| 3 | Overhaul date | October 2023 | February 2024 | **Both.** Announced late 2023, rolled out and in effect from early 2024. Say "since the 2023–24 overhaul". |
| 4 | Days-active requirement | 60/120/180 days still required (2026 blogs) | No days criterion (official six metrics) | **B**, but in practice a new account needs 30–60+ days anyway, because orders, reviews and the private-rating window take time. |
| 5 | Top Rated Success Score | 8 | 9 | **9** (every 2026 source plus the official snippet). |
| 6 | Morocco time zone | GMT+1 | UTC+0 | **UTC+0 since 20 Sep 2026, 02:00** (Decree 2.26.530; verified in the IANA tz database this session). Morocco is now on London time: 1 h behind Paris in winter, 2 h in summer; 5 h ahead of New York in winter, 4 h in summer. **Every "GMT+1" in older notes is wrong.** |
| 7 | PayPal in Morocco | Can't receive; unusable | PayPal now lists Morocco for receiving through a licensed local partner | **Partly B:** PayPal changed. **Whether Fiverr offers PayPal withdrawal to Moroccan sellers is unverified.** Payoneer is the default until the Earnings page shows otherwise. |
| 8 | Clearance for Level 2 | 7 days | 14 days | **14 days** for New/Level 1/Level 2; 7 days for Top Rated and Pro ("Early Payouts" is a Top Rated benefit in the official blog). Check the dashboard. |
| 9 | Review window | 10 days (2020 ToS) | 14 days (current Help Center) | **14 days.** |
| 10 | Auto-replies and response rate | Count as a response | Only a human reply counts | **Unverified.** Use the auto-reply to hold the buyer, and always send a human reply within the hour anyway. |
| 11 | Request to Order | Available to all sellers, with a warning | Seller Plus Premium only | **Unverified.** Check in the gig editor. Either way, keep one instantly orderable package. |
| 12 | "Honeymoon" boost for new gigs | 48–72 hours, 7–10 days or 30 days | Not officially confirmed | **Plausible exploration, but unknown size and length.** Publish only complete gigs. Never delete and re-create to farm it. |
| 13 | Staying online | Required for ranking | Not a factor; response and availability are | **B.** Online-keeper tools are a ToS risk. |
| 14 | External traffic | Kills conversion rate and ranking | Officially encouraged if it points to Fiverr | **B for targeted traffic** (it creates orders and reviews, the strongest signals). Junk traffic is useless and risky. |
| 15 | Face on the cover | +25–40% CTR | No data | **Plausible direction, number unsourced.** Test it as a hypothesis. A real founder face builds trust for a service business. |
| 16 | Gig video impact | +30% impressions / 2× orders / +220% sales | "Gigs with videos perform better" (official) | **Use only the official wording.** Still: add a video. |
| 17 | Tag count | Use 3–4 "to look professional" | Use all 5 | **All 5, if each is genuinely relevant.** An empty slot wastes a retrieval channel. |
| 18 | AI disclosure | Always required | Required when the client asks for non-AI work (and never deceive) | **B** per the Help Center snippet. DESORA's stance: "AI-assisted, human-directed and reviewed", disclosed in the FAQ. |
| 19 | Moroccan auto-entrepreneur tax | 1% commerce / 2% services | **0.5% commerce / 1% services**; services ceiling 200k MAD | **B.** Several GitHub guides are wrong. |
| 20 | SARL corporate tax | 10% under 300k MAD profit | **20% from FY 2026** (phase-in ended) | **B** (Finance Law 2023 text). |
| 21 | Seller level required for Ads | Level 2 / Top Rated; or Level 1 with 4.7 and 20 reviews | "Only active Gigs are eligible" (Help Center) | **Unpublished quality threshold.** If the gig shows as promotable under Growth & Marketing → Fiverr Ads, it's eligible. Don't pay anyone to "unlock" ads. |
| 22 | Mutual cancellation | Harmless | Counts against you if you initiate it | **Counts if you initiate it.** Only a buyer cancellation before requirements is fully neutral. The effect of a buyer-initiated mutual cancellation after requirements is unclear. |
| 23 | Level 1 criteria | 10 orders / 4.7 rating / $500 | 5 orders / 4.4 / 3 unique clients / $400 | **B** (official snippet plus consensus). |
| 24 | Fiverr Go eligibility | All sellers | Level 2+, Top Rated, Pro and vetted sellers, in select categories | **B.** The Personal Assistant is shutting down anyway. |

---

## 4. Strategic context: what Fiverr is becoming, and what it means for DESORA

**The facts** (§2.5):
- Fewer buyers, bigger buyers.
- Fiverr is cutting the low end on purpose and routing high-value demand through curated channels: Dynamic Matching, Managed Services, Pro, Agencies and a Knowledge Graph matcher.
- Its search is becoming AI-mediated: Fiverr is building "generative engine optimization" and plugging its catalog into AI channels.

**The implications:**
1. **Price for the growing segment.**
   - Entry offers around $80–$200, core packages at $300–$600, and custom or retainer work at $1,000+.
   - Very cheap gigs attract the most demanding buyers, slow level progress (the $400/$2,000/$10,000 earnings gates) and feed the shrinking segment.
2. **Become matchable, not just searchable.**
   - Use clear, structured, specific copy: explicit deliverables, outcomes, platforms, industries and languages.
   - Keep the profile complete (skills, past work, top clients, agency page).
   - Keep the Success Score at 7 or more for Briefs and curated flows.
3. **Build recurring revenue.** Buyers spending over $500 a year make up 65% of revenue. Retainers via subscriptions, recurring custom offers and milestones fit the platform's economics.
4. **Build your own demand.** Fiverr traffic, including from Google, is softer. DESORA's LinkedIn, website and existing clients should feed the Fiverr profile. That traffic converts, and it creates reviews.
5. **Never lead with AI-exposed commodities** (blog writing, plain translation, bare logos, simple WordPress sites). Wrap them into judgement-heavy offers: strategy, performance creative, localization, automation and reporting.

---

## 5. The DESORA growth flywheel (how everything connects)

```
POSITION → RESEARCH → BUILD → CONVERT → DELIVER → REVIEW/REPEAT → (signals feed ranking) → more IMPRESSIONS
   §13        §6          §7        §9          §10           §10/§9                           §6/§11
```

| Stage | Owner's goal | Metrics it moves | Fastest lever |
|---|---|---|---|
| Position | Be the obvious choice for one buyer | CTR, conversion, price tolerance | Niche qualifier in title and cover (platform + language + industry) |
| Research | Enter demand you can win | Impressions | Long-tail from Fiverr autocomplete; Keyword Demand Index |
| Build | Win the click and the order | CTR, conversion | Cover image; Standard package; FAQ |
| Convert | Turn messages into orders | Response time, inquiry-to-order rate | Human reply within 1 h; 2–4 sharp questions; scoped custom offer |
| Deliver | Delight in private | Success Score, rating, cancellations | Kickoff recap, midpoint draft, early delivery, batched revisions |
| Review/Repeat | Compound | Unique clients, repeat rate, AOV | Delivery message with a "next 30 days" plan; subscription offer |

---

## 6. Gig SEO and keyword system (summary; detail in research/02 and research/03)

### 6.1 Keyword research process (about 2 hours per niche)

1. **Seeds:** 5 per service line, one each for deliverable, platform, industry, format and language.
2. **Harvest autocomplete:**
   - Open an incognito window, logged out.
   - Type each seed, then seed + a–z, then prefix and suffix modifiers ("ai ugc", "ugc for…").
   - Repeat in French.
   - Log each suggestion with the date and interface language.
   - Autocomplete order is **not** a volume ranking.
3. **Seller Plus Keyword Research** (if subscribed): filter by subcategory, then sort by Search Volume (demand) and by Competition (gaps).
4. **Supply:** record "services available" for each candidate, with no filter and then with the category filter. This number measures supply, not demand.
5. **Demand:** compute the **Keyword Demand Index (KDI)** = the number of reviews dated in the last 30 days across the top 10 *organic* gigs, measured logged out.
   - KDI 0–4: unproven.
   - KDI 5–40: healthy for a new seller.
   - KDI above 40: proven demand; go long-tail inside it.
6. **Incumbency:**
   - Share of page 1 with 100+ reviews: if most, the head term is locked.
   - Share with fewer than 20 reviews: 25% or more means newer gigs are getting exposure here, so there is an entry window.
7. **Price floor:** if the page-1 median start price is $5–$10, it's a price war. Don't enter.
8. **Score** each niche with the Niche Opportunity Score (research/03 §17.3), weights below. Build at 70+, test a narrower variant at 55–69, park below 55.

   | Component | Weight |
   |---|---|
   | Demand | 25 |
   | Competition | 20 |
   | Entry feasibility | 10 |
   | Monetization | 15 |
   | Trend | 10 |
   | Gap strength | 10 |
   | DESORA fit | 5 |
   | AI resilience | 5 |

9. **Map keywords to fields:**
   - Title = the best long-tail phrase with demand.
   - Tags = the 5-tag matrix (6.3).
   - Metadata = every attribute you truly deliver.
   - Description = the primary phrase in sentence 1, plus buyer phrases taken from reviews.
   - FAQ = objections taken from 3–4★ competitor reviews.
10. **Freeze** the gig for 14–30 days, then read impressions → CTR → conversion. Re-run the competitor teardown every quarter, or whenever orders fall (Fiverr's official cadence).

### 6.2 Title formula

`I will [primary buyer phrase] for [platform / industry / audience] [+ one qualifier]`
- Stay at or under 80 characters, with the keyword within the first ~40 characters.
- One service per title.
- No pipes, all-caps, emoji, prices, superlatives, or brand names you have no real connection to.
- Always count characters with a tool before recommending a title.

### 6.3 Five-tag matrix

| Slot | Role | Example (Meta ads gig) |
|---|---|---|
| 1 | Primary phrase (exact) | `facebook ads` |
| 2 | Platform synonym | `meta ads manager` |
| 3 | Adjacent platform or feature you fully serve | `instagram ads` |
| 4 | Long-tail niche (industry, format or language) | `ecommerce ads` |
| 5 | Buyer-task phrase | `ads campaign setup` |

Test for every tag: "Would a buyer typing this be happy to land on my gig?" Revisit tags every 60–90 days.

### 6.4 Gap types to hunt

1. Industry (e.g. "meta ads for real estate")
2. Platform or tool (GoHighLevel, Make, n8n, Klaviyo, Beehiiv, TikTok Shop)
3. **Language / locale (French, Arabic, Darija)**
4. B2B framing
5. Delivery speed
6. Bundle (script + UGC + hooks + captions)
7. Quality gap: recurring complaints in 3–4★ reviews
8. Format (9:16, VSL, faceless)
9. A missing price tier ($150–$500 "done-for-you with strategy")
10. Trust or credential
11. Time zone
12. Recurring or retainer

### 6.5 Architecture rules

- One gig = one buyer intent = one primary keyword.
- No near-duplicates: they are prohibited and they cannibalize each other.
- Differentiate gigs by platform, outcome, industry or language.
- Place each gig in the most specific subcategory and service type; that decides which browse pages and filters it appears in.
- Fill every metadata attribute you truly deliver, and none you don't. Buyers filter on them.

---

## 7. Gig build standards (summary; detail in research/04)

**Cover image (100-point audit, plus a compliance gate):**
- **Gate:** no contact info, URLs or QR codes; no Fiverr logo, badges or stars; assets licensed; claims true; represents the real service.
- **Scoring:**

  | Criterion | Points |
  |---|---|
  | Readable when shrunk to 320 px wide | 15 |
  | One message, understood in 5 seconds | 15 |
  | Shows outcome or real work | 15 |
  | Stands out among the real top 20 | 15 |
  | Matches the title's promise | 10 |
  | Contrast ≥4.5:1 | 10 |
  | Safe zone respected | 8 |
  | Honest trust cue (real face or team) | 7 |
  | Technical quality | 5 |

- **Bands:** 85+ ship; 70–84 fix the two weakest criteria; under 70 redesign.

**Gallery jobs:**
1. Cover = the promise.
2. Image 2 = proof (a real piece of work or a mini case study, with permission).
3. Image 3 = process or "what you get".
4. Video = 45–60 s: hook in the first 3 s, captions burned in, no URLs.
5. PDF 1 = case studies; pages 1–3 must stand alone.
6. PDF 2 = a sample report or calendar, anonymized.

Tag every item by service, industry and style.

**Description (≤1,200 characters):**
- Structure: hook containing the primary keyword → who it's for → "What you get" bullets → "Why DESORA" bullets → a 4-step process → a CTA to message on Fiverr.
- A worked example (896 characters) is in research/04 §5.4.

**FAQ (5–10 questions):**
- Cover: passwords (never; use partner access), revisions (definition), timeline, ownership, guarantees (none on results, only on deliverables), languages, custom offers, ad spend (not included), AI use.
- A 16-question bank is in research/04 §5.5.

**Requirements (6–10 questions):**
- Use multiple choice where possible and attachments for brand assets.
- Never ask for passwords or payment information.
- Must-haves go in the requirements; nice-to-haves go in the first message.

**Approval failures** (check every asset before submitting):
- contact details
- Fiverr branding
- review screenshots
- prohibited services
- title problems
- wrong category
- duplicate gig
- low-quality images

---

## 8. Offer and pricing architecture (detail in research/05)

### 8.1 Package logic [CONSENSUS + real Fiverr price data]

- **87% of gigs use 3 packages.** Median ratios: Standard ≈ 2× Basic, Premium ≈ 3.5× Basic. Practitioner ladders run 1 : 2 : 3–5. Fiverr's own community guidance warns against "giant leaps" between tiers.
- **Basic = the door.** It wins the search click, because the "From $X" on the card is the Basic price. Keep it narrow and clearly limited, but a real, complete small outcome. A bait Basic produces disappointed buyers and bad private ratings.
- **Standard = the product.** The complete core outcome for the typical buyer, with the best value per unit. Put the feature most inquiries ask for **here**, not in Premium.
- **Premium = the anchor.** "Peace of mind" items: strategy, reporting, extra platforms, speed, priority. It must be an offer someone would genuinely buy.
- **Target mix:** about 30% Basic / 50% Standard / 20% Premium.
  - More than 50% buying Basic → Basic gives away too much, or Standard is unclear.
  - Fewer than 10% buying Premium → Premium isn't differentiated.
- **Climb three things together:** scope, delivery days and revisions (1/2/3 or 1/2/4). Name tiers by outcome. Open each package description with "Best for: …".
- **Extras:**
  - Keep 3–6, based on real inquiry patterns: fast delivery (+20–50%), additional revision, extra platform, +4 posts, Reels edits, ad creative set, competitor audit, report plus call.
  - Each extra should cost less than Basic. Standard plus 1–2 extras should cost less than Premium.
  - Never hide essentials in extras.
- **The per-payment fee matters.** The buyer pays 5.5% + $3.50 on **each** payment under $200. A $20 mid-order extra costs the buyer $24.60 (+23%). So bundle upsells into a package upgrade or **one** custom offer, and attach extras at checkout rather than mid-order.
- **The $200 threshold:** pricing at $200 or more removes the $3.50 small-order fee. A $150 package costs the buyer $161.75; a $200 package costs $211.00.
- **Standardized categories:** check whether each target subcategory enforces a minimum scope per package. Ignoring it can reduce visibility.

### 8.2 Pricing psychology: what actually holds up

| Effect | Evidence | Use on Fiverr |
|---|---|---|
| Anchoring | **Robust** (replicated) | Show the full-scope option first (Premium, or the complete custom quote), then the scoped option. Anchors must be real options |
| Compromise / center-stage | Moderate | Standard sits in the middle column. Make it honestly the best fit |
| Decoy (asymmetric dominance) | **Unreliable** in realistic settings (the famous Economist demo was hypothetical) | Don't plant decoys. Audit for *accidental* ones, e.g. a Standard priced almost like Premium |
| Choice overload | Meta-analytic mean ≈ 0 | Three packages are fine. The real risk is unclear scope and 10 confusing extras |
| Charm / left-digit prices | Small, mixed | Optional test on the Basic "from" price. Use round prices for B2B Premium |
| Price signals quality | Moderate; strongest when other cues are weak | New sellers shouldn't sit at the floor. Price near the category median |
| Loss framing | Framing is reliable; "losses = 2× gains" is not a law | Use only true, specific costs of inaction |
| Genuine scarcity | Works; fake scarcity backfires | Only real capacity limits ("2 new retainer slots this month") |

**Verdict:** substance first (scope, speed, proof). Psychology only presents that substance clearly. Expect small lifts from tweaks and big lifts from the offer itself.

### 8.3 Net pricing math

- Net = price × 0.80. List price for a target net N: **P = N ÷ 0.8**.
- Buyer total = P × 1.055 + ($3.50 if P < $200).
- Contribution per order: C = net × (1 − delivery cost share).
- Cost floor = (hours × target net hourly + tools + ad cost per order) ÷ 0.8.
- Level path:
  - Level 1: $400 over 5+ orders.
  - Level 2: $2,000 over 20+ orders means an AOV of about $100+ (about $125 if earnings are counted net).
  - Top Rated: $10,000 over 40 orders means an AOV of about $250+.
  - At a $25 AOV, Level 2 needs 80+ orders.
- Funnel compounding: Revenue = impressions × CTR × order rate × AOV × (1 + repeat rate). A 10% gain at each of 5 stages gives about +61%.

### 8.4 DESORA price bands (starting hypotheses; run the market protocol in 8.5 before publishing)

| Offer | Basic | Standard | Premium | Notes |
|---|---|---|---|---|
| Social media management (monthly) | ~$150–250 | ~2× | ~3.5× | The market median is much lower ($28/$70/$120). Win with strategy, original design, commercial rights, native FR/AR and a real report. **Not** a volume play |
| Meta/TikTok ads | Audit $120–200 | Setup + launch $300–600 | Monthly management $400–1,200 (custom offer, subscription or hourly) | Ad spend is always paid by the client directly to the platform |
| UGC / short-form ad creative packs | $150–300 | ~2× | ~3.5× | Outside market anchors: $75–300 per UGC video |
| Marketing automation / chatbots | $150–300 | $400–800 | $1,000+ custom | Automation buyers want intermediate or expert help |
| Local SEO / Google Business Profile (francophone) | $100–200 | ~2× | ~3.5× | |

### 8.5 Market pricing protocol (manual; quarterly)

1. Search the exact buyer keyword, logged out. Record the top 20 **organic** gigs (skip ads): level, reviews, Basic/Standard/Premium prices, delivery days, revisions, scope.
2. Compute the median and quartiles per tier. Note whether the category is standardized.
3. Place DESORA's tiers adjusted for proof: fewer reviews → lower percentiles; more proof → higher.

   | Tier | Percentile |
   |---|---|
   | Basic | 40th–50th |
   | Standard | 50th–65th |
   | Premium | 70th–85th |

4. Check each tier against the cost floor. Never scrape automatically.

### 8.6 New-seller pricing verdict: "priced to enter, not priced to starve"

- Don't compete at the $5–$15 floor in B2B marketing. Those buyers are the hardest to satisfy, fees eat small orders, and the level earnings gates move slowly.
- Basic slightly below the category median, Standard at the median with clearer scope, Premium above.
- For the launch push, use a **time-boxed first-time-client promotion** (5–10%, Seller Plus) or a **custom-offer coupon**, not a permanently low list price. Discounts expire without a visible price hike.

### 8.7 Raising prices (protocol)

1. **Triggers (any two):**
   - The queue regularly exceeds capacity, or delivery times are stretching.
   - Inquiry-to-order conversion is well above baseline for 4+ weeks.
   - A level-up or Pro status.
   - 15+ reviews averaging 4.9 or more on the gig.
   - More than 60% of buyers choose Standard or Premium.
2. **Step:** +10–20% on **one tier at a time**, in the order Premium → Standard → Basic (Basic drives clicks). Add visible value at the same time.
3. **Revenue-neutral check:** a price rise p stays revenue-neutral if orders fall by no more than p ÷ (1 + p). A +20% rise tolerates −16.7% orders, and the hours saved become profit.
4. **Watch for 3–4 weeks:** impressions, CTR, inquiries, orders, AOV, package mix and the Success Score. The score is relative to your price band, so perceived value must rise with price.
5. **Rollback:**
   - If orders fall more than the threshold **and** inquiries fall too, revert half the step.
   - If inquiries hold but orders drop, fix the package presentation, not the price.
6. **Existing clients:** keep them on their current rate via custom offers for 1–2 cycles. Announce changes with notice and a reason.
7. Prefer changing "fences" (scope limits) to changing list prices. Never cut scope silently.

### 8.8 Recurring revenue and risk reversal (Fiverr-native)

- **Subscriptions:** monthly social, ads or content retainers. Offer a 5–10% discount from order 2. Plan capacity, because the next cycle starts even if the last order is still open.
- **Milestones:** for projects over $100, e.g. M1 audit + plan → M2 production → M3 launch + report. The buyer commits to phase 2 after seeing phase 1. This is the Fiverr version of a "first-outcome" guarantee.
- **Hourly (Level 1+):** for open-ended optimisation or community management, 8 h minimum estimate.
- **Allowed guarantees:**
  - Conditional redo within scope ("if it doesn't match the brief, we redo it within the revision window").
  - Firm delivery dates.
  - Fixed revisions plus a paid revision extra.
  - "If we can't deliver what the package describes, we cancel through Fiverr for a full refund" (use sparingly; cancellations cost you).
- **Never guarantee** rankings, followers, virality or ROAS. You don't control those outcomes, and the claim is "misleading gig" risk. **Never** offer unconditional money-back promises outside Fiverr's processes.

### 8.9 Upsells and cross-sells (Fiverr-safe scripts; full text in research/05 §8.3)

- **A. Inquiry:** recommend the fitting package with 3 bullets, name the Premium item they mentioned, and offer a custom path.
- **B. Scope creep:** "Outside this order's scope; I can add it as an extra for $X and N days via the order page."
- **C. Pre-delivery value add:** optional, and only when you've spotted a real gap.
- **D. Tier upgrade:** "Upgrading is only $[difference] and includes [items]; I'll send one custom offer."
- **E. Delivery → subscription (the highest-value upsell):** monthly continuation with the configured discount.
- **F. Post-completion:** one relevant check-in in the same thread, or a Seller Plus follow-up message or repeat-client coupon.

**Rules:**
- Every upsell solves a real problem.
- Everything goes through the order page or a custom offer.
- **Never withhold in-scope work** to force an upsell (prohibited).
- Never tie anything to reviews or tips.
- Mass promotions to past buyers count as spam; use Seller Plus follow-ups or genuine one-to-one next steps.

### 8.10 Irresistible-offer checklist (value equation, adapted)

1. **Dream outcome:** name the business result (bookings, qualified leads, sales), not the activity.
2. **Perceived likelihood:** real proof (case studies, sample report, named team), a 4-step process, and specificity.
3. **Time delay:** a first tangible deliverable within 24–72 h, a clear timeline, early delivery.
4. **Effort and sacrifice:** done-for-you, a 5-minute requirements form, partner access instead of passwords.
5. **Risk reversal:** fixed revisions, conditional redo, milestones, a small paid entry offer.
6. **Bonuses:** 2–3 cheap-to-deliver, high-relevance items, delivered in the order on Fiverr (e.g. a hook bank, posting-time checklist, competitor snapshot). No inflated "$X value" labels.

## 9. Sales and communication system (summary; detail in research/06, including 28 templates)

**First reply framework (A-M-Q-N):**
1. **Acknowledge and mirror** the goal in the buyer's own words.
2. **Micro-proof:** one line on similar work.
3. **Qualifying questions:** 2–4 of them, not 10.
4. **Next step:** one concrete step ("I'll send a tailored offer within X hours" or "a 15-minute Fiverr call").

**SLA:**
- Auto-reply of 2–4 lines on first contact, then a human reply within 1 hour during buyer hours.
- Morocco (UTC+0) covers the full EU day and the US East Coast morning. An evening shift of 15:00–23:00 Morocco time covers the US.

**Custom offer structure:**
- Outcome, deliverables (quantities and formats), what's NOT included, timeline, revisions (number and definition), and inputs needed to start.
- A real expiry of 3–7 days; no fake countdowns.

**Objections:**
- **"Too expensive":** label the concern, ask for their range, re-scope.
- **"X is cheaper":** reframe to outcome and risk.
- **Free sample:** offer the Basic package as a paid test.
- **"Discount for 5 stars":** decline per policy.
- **WhatsApp or email:** decline, and offer a Fiverr call.

**Follow-ups:**
- One value-adding follow-up 24–48 hours after an offer.
- A close-the-loop message after 5–7 days, phrased as a no-oriented question.
- Then stop.

**Order lifecycle:**
1. Kickoff within 2 hours: confirm scope in 3 bullets, the delivery date in the buyer's time zone, missing inputs and the date of the next update.
2. A midpoint update, with a draft for subjective work.
3. If you might slip, request an extension **before** the due date.
4. Delivery message: what's included, how to use it, why these choices, the next 7 days, how to request revisions (one list), and a neutral feedback invitation.

**Negative reviews:**
- Reply once, written for future buyers: thank → acknowledge → one line of factual context → what you changed.
- Never argue, never reveal private details, never ask for removal.

**Writing quality for a French-speaking team:**
- Short sentences, and "Hi [Name]" rather than "Dear Sir".
- Avoid false friends: *délai* means "timeline", not "delay"; *actuellement* means "currently"; *éventuellement* means "possibly".
- Run everything through a grammar check (LanguageTool handles English and French).

---

## 10. Delivery excellence and Success Score protection

**Mapped to the six areas:**
1. **Client satisfaction:** honest portfolio, precise scope, drafts, and a pre-delivery check ("Anything that would make this a 10/10?").
2. **Communication:** kickoff recap, a scheduled update, plain language.
3. **Conflict-free orders:** qualify before the order, decline bad fits early, batch revisions, and settle problems in chat before anyone opens the Resolution Center.
4. **Cancellations:** no seller-initiated ones. Let an unfit buyer cancel **before** submitting requirements. Use mutual cancellation for unresponsive buyers.
5. **On-time delivery:** delivery days = real production time × 1.5. Deliver revisions on time too. Extensions go through the Resolution Center before the deadline.
6. **Value for money:** over-deliver visibly (a Loom walkthrough, a summary report). Avoid price jumps without a visible increase in value.

**Portfolio effects:**
- The overall score is weighted by each gig's order count, so problems on the busiest gig hurt most.
- Test risky new services on low-volume gigs.
- **Never** delete a gig to "reset" its score: you lose reviews and history, and nothing official says the history is purged.

**Recovery playbooks** (research/08 §9 has the full steps):
- **Bad review:**
  1. Classify the cause.
  2. Reply publicly.
  3. Fix the gig's scope and FAQ.
  4. Rebuild volume with the entry gig. The average recovers mathematically: after one 1★ among 20 reviews averaging 4.9, it takes 9 more 5★ reviews to get back to 4.80.
- **Cancellation:** add pre-order qualification; use milestones for big projects.
- **Late delivery:** use extensions before the deadline; recalibrate capacity.
- **Falling Success Score:**
  1. Find the gig.
  2. Audit its last 60–90 days of orders against the six areas.
  3. Check recent price changes.
  4. Tighten revisions.
  5. Remember the 30-day grace window.

---

## 11. Metrics and diagnosis

**Weekly review (Monday, 30–45 minutes; template in `desora-state.md`):**
1. **Account:** Success Score per gig (flag moves of ±0.5), rating, response rate (flag under 95%), response time, and orders / unique clients / earnings against the next level. Any grace-period notice.
2. **Per gig (7 and 30 days):** impressions, clicks, CTR, orders, conversion (orders ÷ clicks), cancellations and ASP, compared with the gig's own 90-day average.
3. **Sales:** new inquiries, offers sent, inquiry-to-order rate, median first-reply time.
4. **Delivery:** orders at risk, revisions beyond 2 rounds, open Resolution Center requests, late deliveries (target 0).
5. **Reviews:** read every word; root-cause anything below 5★; reply.
6. **Ads (if running):** spend, clicks, CPC compared with break-even, attributed orders, profit after commission.
7. **One experiment decision:** at most one change on one gig, with a written hypothesis and a date to read the result.

**Diagnostic tree:**
- **Step 0: account health first.**
  - A gig paused, denied or marked "requires modification"?
  - Any warnings?
  - A grace period running?
  - The Success Score dropped?
  - Did the whole category drop (market-wide)?
  - If all gigs fell at once, look for an account-level or platform cause.
- **A. Low impressions (relevance or demand):**
  - Keyword mismatch or wrong subcategory.
  - Demand shift or seasonality.
  - Weak performance signals.
  - Stronger competition.
  - Recent edits.
- **B. Impressions fine, low CTR (the card):**
  - Thumbnail → title start → starting price → rating and review count.
  - Test one at a time over at least 1,000–2,000 impressions per version or 2–4 weeks.
  - Sample sizes: a 2%→3% CTR test needs about 3,800 impressions per version.
- **C. CTR fine, low conversion (the gig page):**
  - Package scope and logic, proof, video, FAQ, visible response time, weak reviews.
- **D. Many inquiries, few orders (sales):**
  - Reply speed, offer quality, too many questions before a price, no low-risk entry offer.
- **E. Orders fine, Success Score or rating falling (delivery):** see §10.
- **F. Low repeat business:** no recurring offer, no next-step plan, polite but unhappy clients.
- **G. Response rate slipping:** notifications, a named on-call person, twice-daily inbox sweeps, the Availability setting.

**Statistics guardrail:**
- CTR measured on n impressions has a 95% margin of about ±1.96 × √(p(1−p)/n). At 2% CTR on 1,000 impressions, that is ±0.9 points.
- Never conclude anything about conversion from fewer than about 100 clicks.

---

## 12. Paid growth: Ads, Seller Plus and external traffic (detail in research/07)

**Ads break-even:**
- `CPC_BE = AOV × 0.80 × (1 − d) × CR`, where d is the delivery-cost share and CR the conversion rate.
- `ROAS_BE = 1 ÷ (0.80 × (1 − d))`. With d = 0.4 this gives a break-even ROAS of 2.08×; target about 3.1×.
- Worked examples:
  - $120 AOV, d = 0.4, CR 2% → break-even CPC **$1.15**. Never use "No CPC cap" (up to $6).
  - $600 AOV, CR 2.5% → break-even CPC $7.20. "No cap" is possible.

**Ads protocol:**
1. **Pre-flight:** 5+ reviews at 4.8 or higher, known organic CR, a polished card, capacity for 30% more orders.
2. **Set-up:**
   - Manual cap at 0.7 × CPC_BE.
   - $5–7 per day.
   - One gig at a time.
3. **Decision:**
   - Judge after 3 ÷ target-CR clicks (150 clicks for a 2% target).
   - Stop at zero orders, or if ROAS is below break-even.
   - Scale 20–30% a week only if ROAS ≥ 1.5 × ROAS_BE.
4. **Monthly incrementality check:** compare **total** orders before, during and after ads.

**Seller Plus:**
- Payback in orders = price ÷ C.
- Buy only with a named monthly routine: export search terms → update titles and tags → benchmark packages → run a Success Manager call (Premium).
- Run a 90-day trial against KPIs.

**External traffic (90-day plan):**
- **Set-up:**
  - A "Hire DESORA on Fiverr" page on the DESORA website.
  - Tracked redirect links per channel.
- **Content cadence:**
  - LinkedIn 3×/week (case studies, teardowns).
  - Reels or TikTok 3×/week (before/after).
  - 2 SEO articles a month ("[service] for [niche]").
- **Existing clients:** invite them to order through Fiverr (officially recommended).
- **Attribution:** a requirements question, "How did you find us?"
- **Never:** group link-dumping, bought traffic, bots or automated DMs.

---

## 13. Positioning, profile and agency scaling (detail in research/09)

**Positioning (Dunford method):**
1. Competitive alternatives.
2. Unique attributes.
3. Value themes with proof.
4. Best-fit buyers.
5. Market frame: a Fiverr subcategory plus a niche qualifier.
6. An optional trend.

Then derive the title, tagline, cover, packages and FAQ from it.

**DESORA default frame:**
- Platform + language/market, e.g. "Meta Ads for French-speaking e-commerce brands" or "Social media in French & Arabic for restaurants and clinics".
- Add industries as dedicated gigs once reviews in that industry build up.

**Profile:**
- The founder's real face; DESORA in the display name (e.g. "DESORA Agency", or the founder's name plus DESORA; check which characters the editor allows).
- A tagline of 70 characters or fewer: `[Service] for [buyer] | [differentiator]`.
- An About section of 600 characters or fewer that works from the first 200: who you help → what's different → proof → how you work → CTA.
- Languages at honest levels (Arabic native, French, English).
- 8–12 skills tied to the lead specialism.
- Verifiable certifications (Google Skillshop, Meta Blueprint, HubSpot).
- Portfolio items written as context → action → result.

**Agency path:**
1. Founder-led profile with 2–4 focused gigs.
2. Team Account seats for anyone who works in the inbox.
3. With 3+ real, stable members, switch to an Agency profile (real portraits, roles, past work).
4. Apply to Pro once the portfolio shows real brand work and the metrics are clean.
5. Diversify into other channels for **new** clients only. Fiverr buyers stay on Fiverr.

**Scaling stages:**

| Stage | Revenue | Focus |
|---|---|---|
| 0 | $0–1k/mo | Positioning, 2–4 gigs, first 10–20 reviews |
| 1 | $1–3k/mo | Tighten the gig ladder, first price rise, add producers, QA checklist |
| 2 | $3–10k/mo | Retainers, Level 2, Agency profile, SOP library |
| 3 | $10–30k/mo | Premium tier, B2B custom offers, account manager, diversification |
| 4 | $30k+/mo | Pro, multichannel, formal ops |

**Never:**
- multiple accounts
- shared passwords
- bought accounts
- fake team members or stock "team" photos
- VPNs or misrepresented location
- hidden subcontracting when a buyer asks who does the work

---

## 14. DESORA-specific strategy

### 14.1 Service lines (fit with platform data)

| Service line | Verdict | Why |
|---|---|---|
| Social media management (FR-first, FR/EN, AR option), monthly | **Launch** | Digital marketing is growing (official); retainer shape; native French and Arabic is a moat |
| Meta/TikTok ads: audit entry offer → setup → monthly management | **Launch** | ROI-linked buyers with budgets; supports $1k+ scopes |
| Short-form video and UGC ad creative packs (FR/AR/EN) | **Launch** | Video growing; Fiverr's own showcase deal is multilingual UGC |
| Marketing automation and AI chatbots for lead generation (FR/AR/EN DM bots, CRM follow-up) | **Launch or test** | "Surging" demand (official); expert buyers; commoditizing fast, so lead with outcomes |
| Local SEO / Google Business Profile for francophone businesses, or brand strategy + identity system | **Optional 5th** | Choose based on team strength |
| Blog writing, plain translation, bare logos, 5-page WordPress sites | **Don't lead with these** | Named by Fiverr as declining; very AI-exposed. Only as parts of bundles |
| Followers, likes, engagement, "guaranteed" rankings | **Never** | Prohibited services |

### 14.2 Academic support services (PFE, mémoire, thèse): red line

- DESORA also sells academic support services in Morocco: structuring, formatting (mise en page), and defense (soutenance) preparation.
- **On Fiverr, writing academic work that a student will submit as their own is prohibited as academic dishonesty.** [VERIFY exact wording; high confidence]
- Only these framings are safe on Fiverr:
  - document **formatting and layout**
  - **proofreading and editing** of the student's own text
  - **presentation and slide design**
  - **defense coaching**
- Anything that produces content for submission is off-limits: writing chapters, "we write your PFE/mémoire", ghost-written literature reviews, even "structuring" when it means drafting the plan's content.
- The advisor must flag any gig or message that drifts into ghost-writing.
- Keep academic services **off DESORA's marketing-agency gigs** entirely, to protect positioning.

### 14.3 Morocco operations (detail in research/12; verify legal and tax points with an expert-comptable)

- **Time:** Morocco is **UTC+0 since 20 Sep 2026.**
- **Getting paid:**
  - Payoneer (bank transfer to a Moroccan bank in the same name, or the Payoneer balance).
  - Withdraw on a regular cycle; IGOC 2026 Art. 97 requires service-export income to be repatriated within 90 days.
  - Ask the bank about an exporter FX / convertible-dirham account (Art. 98).
- **Never:** crypto payouts (Office des Changes communiqué, 2017), a relative's account, VPNs, or misstated residence.
- **Legal structure:**
  - Auto-entrepreneur: 1% of turnover on services, 200k MAD ceiling, **cannot hire**.
  - Since 2023, income from the same client above 80k MAD/yr carries 30% withholding. How that applies to Fiverr is unclear; get a written opinion from an accountant.
  - SARL: corporate tax 20% (FY 2026), dividends 10%, exported services exempt from VAT with the right to deduct (art. 92).
  - **An agency with a team needs a SARL.**
- **Tax form:** W-8BEN (individual) or W-8BEN-E (SARL), with Morocco as the residence.

---

## 15. The never-do list (account safety)

1. Contact details, external links or payment talk in any Fiverr surface: messages, images, PDFs, video, profile, FAQ or delivery files.
2. Taking Fiverr-originated buyers off-platform, whoever suggests it.
3. Fake, incentivized, swapped or self-generated reviews. Friends' orders. Asking for "5 stars". Asking a buyer to edit or remove a review.
4. Cancelling to erase a review. Pressuring buyers to cancel "from their side".
5. Pressing Deliver on unfinished work to stop the late clock.
6. Bots, auto-refresh or "stay online" extensions, scrapers, rank-checker bots, or tools that disguise restricted words ("p-a-y").
7. Multiple accounts, bought or rented accounts, shared passwords (use Team Account), VPNs, misstated location or identity.
8. Duplicate or near-duplicate gigs. Deleting and re-creating gigs to farm exposure.
9. Keyword stuffing, or unrelated brand names in titles or tags.
10. Selling engagement (followers, likes), fake reviews, academic ghost-writing, IP-infringing work, or anything that breaks a third party's ToS.
11. Unlicensed fonts, stock or music in deliverables or gig media. CC BY-NC music is not for client ads.
12. Cold or mass promotional messages to buyers.
13. Fabricated metrics, clients, logos, credentials or team members.
14. Paying anyone who promises to "unlock" ads, levels or ranking.

---

## 16. Top myths (consolidated)

| Myth | Reality |
|---|---|
| Stay online 24/7 to rank | Response within 24h counts; online status doesn't. Bots are a risk |
| Editing resets ranking | It may briefly disappear while re-indexing. Churn corrupts your tests |
| Share gigs in Facebook groups to rank | Junk traffic; spam risk |
| New gigs get a guaranteed boost | Unconfirmed; plan for none |
| 5★ public means a safe Success Score | Private ratings can differ sharply |
| Lowest price wins | The cheap segment is shrinking fastest; cheap gigs slow levels and attract harder buyers |
| Repeat orders from one big client level you up | Unique clients are required |
| Top Rated is automatic | Manual review, high-demand categories only, 45–90 days |
| Buyer Requests is how new sellers win | Retired in 2022; Briefs need Success Score ≥7 |
| Ads fix a weak gig | Match Score limits reach; weak gigs get few ad impressions |
| Dashboard ROAS = profit | Gross revenue, before the 20% fee, with 30-day last-click attribution |
| Seller Plus boosts ranking | It buys insights and tools, not rank |
| Unlimited revisions sell more | They drive scattered revisions that hurt conflict-free orders |
| AI is banned on Fiverr | Allowed; deception is banned; honor "no-AI" requests |
| Fiverr is dead | Dead for commodity work; growing for $1k+ expert work |
| Morocco is GMT+1 | UTC+0 since 20 Sep 2026 |
| PayPal can't work in Morocco | PayPal changed; Fiverr–PayPal availability for MA is still unverified |
| Scraping is fine because data is public | It means defeating bot protection; the tool authors themselves warn of ToS violation |
| Fiverr favours or suppresses certain countries | No evidence; buyers may filter by location, but there is no hidden rule |
| Face on the cover = +25–40% CTR | Unsourced number; test it |
| Video = +220% sales | Unsourced; official: "Gigs with videos perform better" |

---

## 17. Operating cadence

| Cadence | What |
|---|---|
| **Daily** | First replies within 1h during buyer hours; nothing past 24h. Kickoffs within 2h. Orders at risk checked. Resolution Center requests answered within 24h (hard limit 48h) |
| **Weekly (Monday)** | Metrics review (§11). One experiment decision. Reviews read and replied to. Unique-client progress checked |
| **Monthly** | FAQ updated from inbox questions. Tags checked against autocomplete. Package benchmarks. Seller Plus routine (if subscribed). Ads profit review. Withdraw earnings (90-day rule) |
| **Quarterly** | Competitor teardown per gig (Fiverr's official cadence while you're new). Positioning review. Retire or rework the weakest gig. Re-test paused ads. Refresh the portfolio |
| **Every 6 months** | Knowledge-base refresh (Deep Research mode). Price review. Legal and tax check with the accountant (every January brings a new Finance Law) |

---

## 18. Where to find more

- **research/01**: rules, levels, Success Score, fees, ToS, Morocco payouts (first pass)
- **research/02**: search algorithm, gig SEO, title and tag formulas, anti-cannibalization
- **research/03**: keyword research SOP, KDI, Niche Opportunity Score, gap worksheet, trends, tool risks
- **research/04**: gig specs, cover design, video script, description template, FAQ bank, requirements template, A/B statistics
- **research/05**: pricing, packages, offer psychology, upsell scripts (see its header for status)
- **research/06**: communication, 28 message templates, objection bank, order lifecycle SOP, Briefs
- **research/07**: Fiverr Ads, Seller Plus, Fiverr Go, external traffic, break-even math
- **research/08**: metric dictionary, benchmarks, diagnostic tree, recovery playbooks
- **research/09**: positioning, profile, agencies, Team Account, scaling roadmap, SOPs
- **research/10**: platform data, 32 myths, first-10-orders plan, impressions-drop recovery
- **research/11**: free tools directory (licence-checked), risky tools, workflows
- **research/12**: marketing services market map, agency strategy, Morocco payments, FX, tax and legal
- **verification-queue.md**: what to verify next, in priority order, with URLs
- **desora-state.md**: DESORA's live gigs, metrics log and experiment log (the advisor maintains it)
