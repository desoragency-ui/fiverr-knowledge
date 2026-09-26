# Cluster 05 — Pricing, Persuasive Offers, Packages, Upsells & Cross-sells on Fiverr

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - Review window: the current Help Center says 14 days, not the 10 days in the 2020 ToS (master §3 #9).


Prepared for: DESORA (Morocco-based marketing agency selling on Fiverr).
Research date: 2026-09-26. Written for the future DESORA Fiverr-advisor subagent.

---

## 0. How this was researched, and how far to trust it (read this first)

The research ran into two hard limits. They shape how much you can trust each claim:

1. **Network egress block.** WebFetch was blocked for help.fiverr.com, www.fiverr.com, community.fiverr.com, blog.fiverr.com, answers.fiverr.com, wikipedia.org, hbr.org, cxl.com, paddle.com, thedecisionlab.com, medium.com, arxiv.org and pmc.ncbi.nlm.nih.gov. Only github.com, gist.github.com and raw.githubusercontent.com could be fetched.
2. **Search budget exhausted.** The WebSearch budget (200 calls, shared by the whole session) ran out after this agent's 17th query.

As a result:
- **Official Fiverr facts** come from the Fiverr Help Center text that WebSearch returned for those URLs (tier T1, mode "snippet"). They are official wording, but only partial, so check them in the live Help Center before relying on them for money decisions.
- **Fiverr Terms of Service** were read in full from an archived copy on GitHub. That copy is the **November 2020 version**, so parts of it may be outdated.
- **Pricing-psychology research** was read in evidence dossiers and replication notes on GitHub (S44, S46, S51, S59, S61, among others) that cite the original papers with DOIs. The original papers themselves were not re-read in this session.
- Claims resting only on the author's background knowledge carry the extra tag **[BG-UNVERIFIED]**. Treat them as hypotheses and verify them before stating them to a client.

Tag legend: [OFFICIAL] = Fiverr Help Center or ToS. [CONSENSUS] = 3 or more independent non-official sources agree. [ANECDOTAL] = a single field report or practitioner claim. [DISPUTED] = sources conflict (both sides and a verdict are given). [BG-UNVERIFIED] = background knowledge not verified this session. Source ids (S#) refer to 05-sources.tsv.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Fiverr's cut is 20% of everything, including tips and extras.** You keep 80% of each completed purchase [OFFICIAL, ToS 2020, S40]. Third-party sources in 2025–2026 agree that the rate is a flat 20% with no volume tiers, and that it also applies to tips and extras [CONSENSUS, S17, S18, S19, S20, S62]. **Pricing rule: list price = target net ÷ 0.80.**
2. **Buyers pay a service fee on every separate payment.** Per the current Help Center text it is **5.5% of the purchase, plus $3.50 on purchases under $200**, and each extra or tip is charged its own fee [OFFICIAL snippet, S23]. Older third-party figures ($2 under $50, $2.50 under $75, $3 under $100) are outdated or conflict [DISPUTED, S18, S21, S29]. **Consequence:** several small mid-order extras are fee-inefficient for the buyer. Put the upsell into a higher package or a single custom offer instead of a string of small add-ons.
3. **Fiverr pricing limits:**
   - Packages start at $5, up to "the maximum price for that package tier". Some categories have higher minimums, and "standardized package" categories enforce a minimum scope. Gigs that ignore the standard may get reduced search visibility [OFFICIAL, S1, S14].
   - Custom offers range from **$5 to $20,000** ($50,000 for Fiverr Pro) [OFFICIAL, S2, S7].
4. **Milestones are Fiverr's built-in risk reversal for larger jobs.**
   - Only orders over $100 are eligible, and each milestone must be at least $50 [OFFICIAL, S3, S4].
   - The client pays for the first milestone at order, then each later one as it starts.
   - The client has 8 days to accept or request a revision on each delivery, and 10 days to pay for the next milestone; otherwise the order stops [OFFICIAL, S3; same rules in ToS 2020, S40].
   - Maximum count: up to 6 per the Help Center and ToS, but another Help Center snippet says "up to five steps" [DISPUTED, verify in-product].
5. **Subscriptions are the official recurring-revenue tool.**
   - Available only in eligible categories to sellers who meet the eligibility criteria.
   - Gig price must be $10 or more (voice-over $5); maximum delivery time 30 days.
   - Recurrence: every 5–29 days, every 1–7 weeks, or every 1–2 months.
   - Each cycle is a standalone order, paid after each delivery. The next cycle starts even if the previous order is still open.
   - Optional discount of 5%, 10%, 15% or 20%, applied from the 2nd order [OFFICIAL, S5, S6].
   - Custom offers can also be set as subscriptions [OFFICIAL, S28].
6. **Hourly work exists for Level 1 and above.**
   - A custom hourly offer needs an estimate of at least 8 hours.
   - The seller logs hours by Sunday 23:59 UTC; the client is billed on Monday and has 7 days to approve or dispute.
   - Funds arrive 7–14 days after the billing cycle ends.
   - Clients can set, change or remove a weekly hour limit [OFFICIAL, S11, S12, S13].
   - Use hourly for open-ended scope: ongoing ad optimisation, community management, consulting.
7. **Tipping:** the minimum tip is $5. For orders under $25 the maximum tip is $25; for orders over $25 it is 100% of the order. Tips are possible for 30 days after completion, and fees apply [OFFICIAL, S10]. The ToS forbids withholding delivery to extract reviews or "additional services" [OFFICIAL, S40]. Never make tips or reviews a condition of anything.
8. **Two mid-order upsell paths are official:**
   - "Offer Extras" from the order page: pick one of your Gig extras (quantity plus extra days) or create a custom extra (description, price, days) [OFFICIAL, S9].
   - A new custom offer for out-of-scope work.
   - Extras must be related to the base service and part of the deliverables [OFFICIAL, ToS 2020, S40].
9. **Package architecture:** make Standard the target. Basic is the price that wins the click; Premium is the anchor and captures high-value buyers.
   - Practitioner heuristics converge on a price ratio of roughly **1 : 2 : 3–5** (Basic : Standard : Premium) [CONSENSUS, weak evidence: S52 "1x-2x-4x"; S56 "Basic 40–50% below, Premium 60–100% above Standard"; S47 observed tiers].
   - Fiverr's own community blog warns against "giant leaps" (for example $20 Basic next to $2,000 Premium) [OFFICIAL-community, S15].
10. **The middle-option preference is real but weaker than the marketing literature claims.** Evidence for the compromise and center-stage effects is moderate. The "decoy effect" is **[DISPUTED]**: replications fail when options are described realistically or with images (Frederick, Lee & Baskin 2014; Yang & Lynn 2014), and a naturalistic study found zero effect (Trendl et al. 2021) [S51, S61]. The famous Economist example (84% vs 32%) was a hypothetical classroom demo with about 100 MIT students [S51, S48, S57]. **Build honest tiers, not decoys.** The practical use of decoy theory is to remove accidental decoys, not to plant them.
11. **Anchoring is the most robust effect** (it replicated in Many Labs; a 2026 meta-analysis supports it, though arbitrary anchors are weak) [S51, S61]. On Fiverr, show the full-scope price first (Premium, or the "complete" custom quote), then the scoped option. Anchors must be real, relevant options.
12. **"Choice overload" is mostly a myth at the scale of Fiverr packages.** The meta-analytic mean effect is about zero (d = 0.02, 50 experiments, n ≈ 5,000; Scheibehenne et al. 2010). Choice overload appears only when the choices are complex, the task is hard, preferences are unclear, and the goal is to pick one best option (Chernev et al. 2015) [S44, S46, S51, S61]. Three packages are fine. The real risk is ten poorly explained extras and unclear scope.
13. **Charm pricing ($X9 / $X.99) gives a small, heterogeneous effect.** A 2024 preregistered meta-analysis found small purchase effects and no effect on perceived quality [S59]. The "+24%" figure comes from Poundstone's summary of 8 studies [S48]. Wadhwa & Zhang (2015) found round prices suit feeling-based purchases and precise prices suit reasoned ones [S60]. For B2B marketing services, left-digit endings on the "From $X" search price are a low-cost test. Checkout fees make the final amount non-round anyway.
14. **The loss-aversion "2×" figure is not a law.** One dossier grades the evidence C and says to avoid fixed "losses are twice gains" claims [S61]. Use loss framing only truthfully, in copy (for example, the cost of an unmanaged ad account), never with fake deadlines.
15. **Price signals quality most when buyers lack other cues** (Rao & Monroe 1989 meta-analysis; Völckner & Hofmann 2007) [S59]. On Fiverr, reviews and the portfolio are strong intrinsic cues. Underpricing a B2B marketing gig signals "risky", while overpricing with zero reviews looks uncorroborated. New sellers should set prices near the category median, not the bottom.
16. **Buyer type drives price sensitivity** (Nagle & Holden's nine effects) [S53]:
    - Business buyers spending company money (shared-cost effect), whose spend is small next to the revenue at stake (end-benefit effect), and who face switching costs are less price-sensitive.
    - Individuals paying from personal budgets (expenditure effect) are more sensitive.
    - Price B2B packages on outcome and risk reduction; price individual packages on affordability and clarity.
17. **Guarantees must be adapted to Fiverr.**
    - All refunds go through Fiverr cancellations or the Resolution Center; off-platform payment and communication are prohibited [OFFICIAL, S40].
    - Order cancellations hurt a seller's reputation and status [OFFICIAL, S40].
    - Hormozi-style unconditional money-back or performance (revenue-share) guarantees therefore mostly cannot be run on Fiverr [S58 plus the ToS].
    - Use Fiverr-native risk reversal: milestones, clear revision counts, "free redo within scope", delivery-date commitments, and conditional guarantees tied to inputs you control.
    - Never guarantee algorithm-dependent outcomes such as rankings, followers or ROAS [BG-UNVERIFIED; the logic is consistent with the ToS ban on misleading Gigs].
18. **Seller Plus levers** [OFFICIAL, S24, S26, S27]:
    - Repeat-client coupons: up to 30% off, valid 30 days. Custom-offer coupons: the only coupon that can go to a brand-new lead; validity is reported as 24 hours in one snippet and 30 days in another [DISPUTED].
    - First-time-client promotions: 5% or 10% off; the Gig needs a package of at least $15; runs up to 30 days; capped at 10 or 20 orders a month; cannot be combined with coupons, custom offers or milestones.
    - Follow-up messages to past clients: 10 or 20 a month.
    - The discount comes out of the seller's earnings.
    - Plan prices are $25 or $49 a month per one snippet [OFFICIAL snippet, S25; verify].
19. **Discount-led acquisition attracts price-driven clients.** Practitioner sources warn that discount-acquired customers churn faster and anchor you as cheap [ANECDOTAL, S42; the "2× churn" figure is unverified]. Prefer adding value (bonus deliverables, faster delivery) over cutting price. If you discount, use the Rule of 100: express the discount as a percentage under $100 and as a dollar amount over $100 [ANECDOTAL/practitioner, S48, S50].
20. **Raise prices in steps, with a trigger and a rollback rule.** A price rise of p is revenue-neutral if orders fall by p/(1+p): a 20% rise tolerates a 16.7% drop in orders. Because hours fall with orders, profit per hour improves even at break-even revenue. Keep existing clients on their old price via custom offers, because the fairness effect makes price rises on existing clients riskier (Nagle, S53) [reasoned; BG].
21. **The highest-leverage way to raise AOV** is designing the Premium and Standard contents around what buyers already ask for in inquiries, then converting delivery moments into subscriptions or retainers [ANECDOTAL/practitioner consensus, S56, S42, S55]. Recurring revenue lowers acquisition cost per dollar.
22. **Discard T4 advice that breaks Fiverr rules.** For example, "offer a small incentive (future discount) for reviews" (S56) is an incentivized-review violation. The review system must reflect genuine orders only, and withholding delivery for reviews is banned [OFFICIAL, S40].

---

## 2. Fiverr pricing mechanics (platform facts)

### 2.1 Gig packages
- Up to three packages per Gig: Basic, Standard, Premium. Buyers compare them side by side [OFFICIAL, S1].
- Package prices start at $5, up to the maximum for that package tier. Some categories have higher minimums [OFFICIAL, S1].
  - ToS 2020: "Gigs on Fiverr may be offered at a base starting price of $5. Some Gigs are offered at a base price of more than $5 as determined by the Seller." Packages "can include upgrades, which lets Sellers price their service for a basic price of over $5." [OFFICIAL, S40]
- **Maximum package price:** not verified this session. Searches for a "$10,000 per package" limit found nothing authoritative [open question].
- **Standardized Gig packages** apply in some categories [OFFICIAL, S14]:
  - Fiverr sets a minimum scope for each package.
  - Two requirement types: "minimal scope" (the value must be at or above the threshold) and "fixed value" (the same across all Gigs describing that scope).
  - The seller may be unable to save a price below the category minimum. If a seller can save it but ignores the standard, the Gig may get "reduced visibility and exposure in search results within that category" [OFFICIAL, S14 via search summary].
  - **Action for DESORA:** check whether each target subcategory (social media marketing, SEO, video editing and so on) is standardized before designing packages.
- Package fields generally include deliverables, delivery days and revisions. Category-specific fields vary [BG-UNVERIFIED].
- Search result cards show the lowest package price as the Gig's "starting at" price [BG-UNVERIFIED; this is why practitioner sources call Basic the "click" package, S56].

### 2.2 Gig extras
- Three types [OFFICIAL, S8]:
  - **Fast delivery:** must be shorter than the standard delivery time.
  - **Additional revisions:** also sets expectations and limits.
  - **Additional extras:** any other related service.
  - Source-file extras exist only in some categories.
  - Extras are added in the Gig's Pricing tab.
- ToS 2020: extras "must be related to the base service and part of the deliverables on the Order". The number and pricing of extras depends on seller level. Each extra can extend the order's duration. Gigs can be removed over non-compliant extras [OFFICIAL, S40].
- **Mid-order extras** [OFFICIAL, S9]: from the order page, open the Message panel, then choose Offer Extras. Pick an existing extra, set the quantity and extra days, or use "Add custom extra" (description, amount, days).
- Every separate payment (for example an extra or a tip) carries its own buyer service fee [OFFICIAL, S23].
  - **Implication:** a $20 extra costs the buyer $20 + $1.10 + $3.50 = $24.60 (+23%). A $250 package upgrade costs $250 + $13.75 = $263.75 (+5.5%).
  - Consolidating upsells into fewer, larger payments cuts the buyer's friction and fees [reasoned from OFFICIAL figures].

### 2.3 Custom offers
- Custom offers are proposals tailored to one buyer's requirements. They define the service, the price and the delivery time [OFFICIAL, S40].
- Limits are $5–$20,000, or up to $50,000 for Fiverr Pro [OFFICIAL, S2, S7].
- Payment modes are "single payment" or "subscription" [OFFICIAL, S28].
- A client cannot accept a custom offer while the seller's status is "Unavailable" [OFFICIAL, S28].
- A custom hourly offer needs an estimate of at least 8 hours (Level 1+) [OFFICIAL, S11].
- **Briefs (personalized offers)** [OFFICIAL, S28]:
  - Fiverr routes buyer briefs to matching sellers, focusing on services with a success score of 7 or higher.
  - Each brief can be answered within **72 hours**. The seller responds with an introduction plus an offer, or asks questions.

### 2.4 Milestones

| Rule | Value | Source |
|---|---|---|
| Eligibility | Orders over $100. One snippet also says the Gig's Basic package must be at least $100 | S3, S4 |
| Minimum per milestone | $50 | S3; ToS 2020 S40 |
| Count | Up to 6 (ToS 2020: 2 to 6). Another snippet says "up to five steps" | S3, S40 [DISPUTED] |
| Payment | First milestone charged at order; each later one paid when it starts | S3 |
| Client response window | 8 days after each delivery to accept or request a revision. With no action, the milestone is marked complete and the order stops | S3, S40 |
| Next payment | Client has 10 days to pay for the next milestone; otherwise the order stops | S3, S40 |
| Promotions | First-time-client promotions cannot apply to milestone orders | S24 |

**Strategic use:** milestones are the Fiverr-native form of Hormozi's "delayed second payment" and "first-outcome" guarantees (S58). The client only commits to phase 2 after seeing phase 1. Example for a monthly SMM project:
- Phase 1: audit plus 30-day content calendar.
- Phase 2: content production.
- Phase 3: publishing and reporting.

### 2.5 Subscriptions
All details below are [OFFICIAL, S5, S6] unless marked otherwise.
- Eligible categories and sellers only.
- Offered through a Gig or a custom offer.
- One snippet describes subscription periods of 3 or 6 months [verify; the wording was ambiguous].
- Gig price $10 or more ($5 for voice-over); maximum delivery 30 days.
- Recurrence: every 5–29 days ("daily"), every 1–7 weeks, or every 1–2 months.
- Each order is standalone and paid after each successful delivery. The next order starts automatically even if the previous one is still in progress. **Operational risk:** plan capacity so orders never overlap into lateness.
- Discount options: 5, 10, 15 or 20%, from the 2nd order onward, across all related packages.
- The subscription option can be added to or removed from a Gig at any time.

### 2.6 Hourly
All details below are [OFFICIAL, S11, S12, S13].
- Available to Level 1 and above.
- Hourly rate set on the freelancer page.
- Custom hourly offer requires an estimate of at least 8 hours.
- The client can set, change or remove a weekly hour cap.
- The seller logs hours by Sunday 23:59 UTC; the client is charged Monday and has 7 days to approve or dispute. Refunds are weekly, not for the whole order.
- Funds arrive 7–14 days after the cycle ends.
- An hourly payment protection policy exists; its details were not read.
- Hourly suits unclear or evolving scope, reserving capacity, or work estimated above 8 hours.

### 2.7 Tips
- Minimum $5. Maximum $25 for orders under $25; up to 100% of the order price for orders over $25.
- Available for 30 days after completion [OFFICIAL, S10].
- The buyer pays a separate fee on the tip [OFFICIAL, S23].
- Sellers lose 20% of tips: third-party consensus [CONSENSUS, S17, S18, S19]. The Help Center snippet says "service fee applies".
- Rules on soliciting tips were not verified. Never withhold anything pending a tip; the ToS bans withholding delivery for "favorable reviews or additional services" [OFFICIAL, S40].

### 2.8 Fees and the net-price math

| Item | Value | Status |
|---|---|---|
| Seller commission | 20% of each purchase, including extras and tips; seller gets 80% | [OFFICIAL ToS 2020 S40] + [CONSENSUS 2026 S17–S20, S62] |
| Buyer service fee | 5.5% + $3.50 on purchases under $200; applies to each separate payment | [OFFICIAL snippet S23]. Conflicts with third-party $2–$3 figures [DISPUTED; the official figure wins] |
| Clearance | 14 days (new/Level 1), 7 days (Level 2+/Pro) per third parties. Top Rated/Pro 7 days per older knowledge | [ANECDOTAL S55, S62; verify] |
| Auto-complete | 3 days after delivery if the buyer takes no action | [OFFICIAL ToS 2020 S40] |
| Reviews window | Reviews can be left up to 10 days after completion | [OFFICIAL ToS 2020 S40; may have changed] |
| Seller Plus | $25/month (Standard), $49/month (Premium) | [OFFICIAL snippet S25; verify] |
| Withdrawal fees | PayPal/bank/Payoneer fees vary; Morocco-specific options not verified | [open question] |

Formulas:
- **Seller net** = P × 0.80. List price for a target net N is **P = N ÷ 0.8**.
- **Buyer total** = P × 1.055 + (P < 200 ? 3.50 : 0) (+ VAT where applicable).
- Worked example:
  - Standard SMM package P = $150. DESORA nets $120. The buyer pays $161.75.
  - Raising P to $200 removes the $3.50 small-order fee: the buyer pays $211.00 and DESORA nets $160.
  - Prices just above $200 look slightly better to the buyer at checkout than $190–$199 [reasoned from S23; the effect size is unknown].
- **Promoted Gigs (Fiverr Ads)** cost per click, which reduces net margin. Include ad cost per order in your price floor: floor = (hours × target net hourly + ad cost per order) ÷ 0.8.

### 2.9 Discounts and coupons (Seller Plus)
- **Repeat-client coupons** [OFFICIAL, S24, S26]:
  - Up to 30% off, sent to a specific past client from the Marketing Tools page, valid 30 days.
  - Fiverr's advice is to send it shortly after delivering, "while the experience is still fresh".
- **Custom-offer coupons** [OFFICIAL, S24, S26, S27]:
  - Attached to a custom offer; the only way to give a coupon to someone who has never ordered from you.
  - Single use, tied to that client.
  - Validity reported as 24 hours in one snippet and 30 days in another [DISPUTED].
  - The discount comes out of your earnings.
- **First-time-client promotions** [OFFICIAL, S24]:
  - 5% or 10% off, shown to eligible new clients as a pop-up and applied automatically.
  - The Gig needs at least one package of $15 or more; runs up to 30 days.
  - Cap of 10 orders a month (Standard) or 20 (Premium).
  - Not combinable with coupons, custom offers or milestones.
  - Fiverr's advice: use it on Gigs that are not already high performers.
- **Follow-up messages** to past clients: 10 a month (Standard) or 20 (Premium) [OFFICIAL, S24].

---

## 3. Package architecture: Basic, Standard, Premium

### 3.1 What each package is for
The table below synthesizes S52, S56, S55 and S15 with the research in section 4 [CONSENSUS among practitioners; the psychology behind it is graded in section 4].

| Package | Job | Design rule |
|---|---|---|
| Basic | Wins the search click ("starting at" price) and serves genuinely small needs. It is shown first, so defaults pull toward it | Narrow and clearly limited scope (for example 1 platform, 8 posts, 1 revision). Enough to prove quality, but visibly not a full solution. Don't make Basic "too good" (S52: if more than 50% of buyers pick the entry tier, it gives away too much) |
| Standard | The target package, where most revenue should come from | The complete core outcome for the typical buyer. Name it by outcome. Put the one feature most inquiries ask for here, not in Premium |
| Premium | Anchor, and captures high-value buyers | Adds speed, strategy, reporting, extra platforms, priority support: "peace of mind" items. Avoid gold-plating with filler (S52). It must be a real offer someone would buy |

- **Price ratios** [CONSENSUS, weak]:
  - Start near 1 : 2 : 4 (S52), or equivalently Basic about 50% below Standard and Premium about 2× Standard (S56).
  - Observed Fiverr tier data from one scrape (S47) showed Basic → Standard ≈ 2× and Premium ≈ 3–5× Basic.
  - Fiverr's own community guidance: "incremental upgrades, not giant leaps" (S15).
- **Target mix** (practitioner heuristic, S52): about 30% Basic / 50% Standard / 20% Premium.
  - If more than 50% buy Basic, tighten Basic's scope.
  - If fewer than 10% buy Premium, Premium lacks differentiation [ANECDOTAL/heuristic; no Fiverr-specific data found].
- **Naming:** name tiers after the job or customer, not Bronze/Silver/Gold (S52). Fiverr package titles are free text, for example "Starter Presence / Growth Engine / Full-Funnel Partner" [practitioner].

### 3.2 Fiverr-specific tension: Basic is the default and the search price
- The default effect has grade-A evidence (Jachimowicz et al. 2019 meta-analysis, 58 datasets) [S61]. If the gig page opens on the Basic tab [BG-UNVERIFIED], the default pulls buyers toward Basic, while the compromise effect pulls toward the middle.
- The "starting at" price in search is also Basic's price [BG-UNVERIFIED].
- **Verdict:** keep Basic's price competitive for the click, but make its limits explicit in the package description, and state in the Gig description which package fits which buyer. For example: "Most growing brands choose Standard". Say this only if it is true; a false "most popular" claim is deceptive.

### 3.3 Extras design (AOV engine)
- Extras should be priced **below** the base package and related to it [practitioner S56; OFFICIAL relatedness rule S40].
- Offer 3–6 extras that match real inquiry patterns. For DESORA:
  - "extra platform"
  - "extra 4 posts"
  - "Reels/short video edit"
  - "ad creative set (3 variations)"
  - "competitor audit"
  - "monthly report + 30-min call"
  - fast delivery
  - additional revision
- Fast-delivery pricing: +20% to +50% of the package price is common practitioner advice (S54 cites a "+50% express" competitor; S56 lists fixed-dollar tiers) [ANECDOTAL].
- Because of the per-payment fee, **promote extras at checkout (in the order) rather than mid-order** where you can.

---

## 4. Pricing psychology: evidence grade and Fiverr application

| Effect | Evidence status (2026) | Fiverr application for DESORA |
|---|---|---|
| **Anchoring** (Tversky & Kahneman 1974) | Robust. Replicated in Many Labs; a 2026 meta-analysis (Schley & Weingarten, Mgmt Sci) supports it, with widely varying sizes; arbitrary anchors are weaker [S51, S61]. In UI, the likely mechanism is "selective accessibility", not adjustment [S51] | Show Premium and full-scope quotes first. In custom offers, state the full-program value, then the phased or reduced option. The anchor must be a real option you would deliver |
| **Compromise / Goldilocks effect** (Simonson 1989; Simonson & Tversky 1992) | Moderate; widely cited and more stable than the decoy effect [S43, S48, S52; BG] | A middle Standard package works when flanked by a credible cheaper and a credible richer option |
| **Center-stage effect** (Valenzuela & Raghubir 2009; Atalay et al. 2012 eye-tracking) | Moderate. Stronger when options are similar, preferences are weak, or buying for others [S48] | Standard sits in the middle column of Fiverr's comparison table: a structural advantage |
| **Decoy / asymmetric dominance** (Huber, Payne & Puto 1982) | **[DISPUTED].** Fails with realistic descriptions or images (Frederick, Lee & Baskin 2014; Yang & Lynn 2014). Original authors concede boundary conditions (Huber et al. 2014). Naturalistic zero effect (Trendl et al. 2021) [S51, S61]. Economist example = hypothetical classroom demo [S51, S57] | Don't engineer fake decoys; buyers compare real deliverables. Audit for accidental decoys, for example a Standard so close to Premium in price that Standard looks bad value, or a Basic so rich it dominates Standard |
| **Choice overload** (Iyengar & Lepper 2000 jam study) | **Mostly a myth as a general rule.** Meta-analytic mean ≈ 0: d = 0.02 [−0.09, 0.12] (Scheibehenne et al. 2010, 50 experiments, n ≈ 5,036). Appears only under complexity, difficulty, preference uncertainty and a pick-one-best goal (Chernev et al. 2015) [S44, S46, S51, S61] | Three packages are fine. Cap extras at about 6, write them clearly, and explain "which package is for whom" |
| **Charm / left-digit pricing** (Thomas & Morwitz 2005; Anderson & Simester 2003 catalog test: $39 outsold $34 and $44) | Small, heterogeneous purchase effect. A preregistered meta-analysis (Troll et al. 2024) found no perceived-quality effect [S59]. The "+24%" figure comes from Poundstone's 8-study summary [S48]. Round prices suit hedonic or feeling-based purchases; precise prices suit utilitarian ones (Wadhwa & Zhang 2015) [S60] | Test left-digit endings on the "starting at" price (for example $45 vs $50, $95 vs $100) if Fiverr's price input allows them [open question: $5 increments?]. Use round prices on premium or B2B Premium tiers |
| **Price-quality inference** (Rao & Monroe 1989 meta-analysis; Völckner & Hofmann 2007) | Moderate. Strongest when intrinsic quality cues are weak [S59; Nagle "price-quality effect" S53] | Underpricing B2B marketing services signals risk. As reviews accumulate, price can rise because price stops being the only quality cue |
| **Bundling / partitioned pricing** (Stremersch & Tellis 2002; Nagle framing effect) | Moderate. Buyers are more price-sensitive when a price is paid separately than as part of a bundle [S53]; partitioned prices change perception [S50; BG] | Packages are mixed bundles; keep à-la-carte extras for customization, but put the popular combination in Standard or Premium. The per-payment fee adds a Fiverr reason to bundle |
| **Loss aversion / framing** (Kahneman & Tversky 1979; Tversky & Kahneman 1981) | Framing: grade A with boundary conditions [S61]. Loss-aversion magnitude contested; don't quote "2×" as fact (grade C) [S61] | Copy: "Each month without a posting schedule costs you reach you'll pay to buy back with ads". Only true and specific claims |
| **Endowment / IKEA / sunk cost** | Endowment grade B, procedure-sensitive [S59] | Weak relevance on Fiverr; loosely maps to "phase 1 delivered → continue with phase 2" in milestones and subscriptions |
| **Reference price** (Mazumdar et al. 2005) | Grade B [S59] | Buyers' reference is the category's typical price. Know the median before pricing (see the market research protocol in 8.4) |
| **Pain of paying / mental accounting** | Mental accounting grade A; pain of paying grade B, small effects [S59] | Monthly subscriptions ("$X/month for your content engine") land in an operating-expense mental account for businesses |
| **Zero-price effect** (Shampanier, Mazar & Ariely 2007) | Grade B; can reverse [S59] | Free consults or audits outside an order are a value lever, but any work or delivery must stay on Fiverr. Don't give away real work as bait |
| **Scarcity** | Genuine scarcity raises perceived value; fake scarcity backfires (reactance) [S60, S42, S50] | Only real capacity limits ("2 new SMM clients this month"). No fake countdowns |
| **"Most popular" badges** | ProfitWell claim of +20–30% is SaaS-specific and unverified [S48, S50] | Use only if true; on Fiverr it goes in the package name or description |
| **Nudge meta-analyses in general** | Headline effects (d = 0.45) are inflated by publication bias; under severe-bias assumptions d drops to about 0.03 (Mertens et al. 2022; critique by Collins/Gelman) [S45] | Expect small lifts from psychological tweaks; bigger gains come from offer substance (scope, speed, proof) |

**Critical-thinking verdict:** most "pricing psychology" content online (T4 listicles and AI-generated skills) repeats the jam study, the Economist decoy and "losses = 2× gains" as settled law. Evidence as of 2024–2026 says:
- **Anchoring and framing:** reliable.
- **Compromise / center-stage:** moderately reliable.
- **Charm pricing and price-quality:** small, context-dependent.
- **Decoy and choice overload:** unreliable in realistic settings.

Design from substance first, then use the psychology to present that substance clearly.

---

## 5. New-seller pricing vs the "race to the bottom"

**[DISPUTED]**, with the claims on each side and a verdict:
- **Claim A (common in forums and T4 guides):** start cheap to win the first 5–10 reviews, then raise prices. S55: "set competitive pricing initially → deliver … → collect reviews → incrementally raise rates". S56: "lower prices temporarily (to build reviews)".
- **Claim B (Fiverr's own community guidance plus research):**
  - Underpricing is listed among common pricing mistakes (S15, 2025-11-24; the snippet warned against giant leaps and unrealistic tiers).
  - Price signals quality when other cues are missing (S59).
  - Low prices attract low-commitment, high-maintenance buyers (S42).
  - The buyer small-order fee ($3.50 under $200, S23) makes very cheap orders relatively costly for the buyer anyway.
- **Verdict (reasoned):** use **"priced to enter, not priced to starve"**:
  - Set Basic slightly below the category median for the click.
  - Keep Standard at or near the median with superior scope clarity.
  - Price Premium above the median.
  - Don't compete at the $5–$15 floor in B2B marketing categories. Those buyers value reliability, and the margin after 20% can't fund quality agency delivery.
  - Use Fiverr's first-time-client promotion (5–10%, capped and time-boxed) instead of a permanently low list price, so discounts expire without a visible price hike [OFFICIAL tool, S24].
- Market data proving which approach ranks better could not be found. Whether Fiverr's search algorithm rewards low prices directly (as opposed to conversion rate) is unverified [open question].

---

## 6. Raising prices: protocol and evidence

- **Evidence base:** practitioner consensus to "raise as you gain reviews and demand" [S16, S55, S56, S62].
- **Official framing** (Fiverr Resources, S16): "As your reputation grows, revisit your rates and increase them accordingly."
- No controlled Fiverr data was found on the effects of raising prices [open question]. Field reports (Reddit and forum threads) could not be read this session.

**The price-raise protocol:**
1. **Triggers** (any two):
   - Order queue regularly exceeds capacity, or delivery times are stretching.
   - Inquiry-to-order conversion runs well above your baseline for 4+ weeks.
   - Level-up or Top Rated/Pro status.
   - 15+ reviews averaging 4.9+ on the Gig.
   - More than 60% of buyers choose Standard or Premium, which suggests headroom.
2. **Step size:** +10–20% per step on **one package at a time**, starting with Premium, then Standard, and Basic last (Basic drives clicks).
3. **Revenue-neutral check:** allowed order drop = p/(1+p). A +20% rise tolerates −16.7% orders. Hours saved are extra profit.
4. **Observation window:** 3–4 weeks. Track impressions, clicks, CTR, inquiries, orders, AOV and Standard/Premium mix in Fiverr Analytics (Seller Plus has advanced analytics, S24).
5. **Rollback rule:** if orders fall by more than the revenue-neutral threshold for 4 weeks and inquiries fall too, revert half the step. If inquiries hold but orders drop, the problem is the offer or presentation, not the price; improve the package descriptions first.
6. **Existing clients:** honour current rates for a set period through custom offers. Announce new rates with advance notice and a reason (added value, capacity). The fairness effect means perceived unfair increases raise price sensitivity (Nagle, S53).
7. **Never** raise the price by removing scope silently. Changing fences (scope limits) is a cleaner lever than changing list prices (S52: "adjust packaging and fences more often than list prices").

---

## 7. Value-based pricing and building irresistible offers

### 7.1 Value-based pricing for marketing services
- Value-based pricing means price follows the customer's perceived value relative to their alternatives: a competitor, doing it themselves, or doing nothing [S53].
- For DESORA, quantify the buyer's alternative:
  - In-house social media hire (monthly salary).
  - A local agency retainer.
  - The cost of the time an owner spends (hours × their rate).
  - The value of the leads or revenue at stake.
- Charge a fraction of that value, as long as it is also above your cost floor.
- **Fiverr limits:**
  - Revenue-share or performance fees cannot be collected outside Fiverr (the ToS bans off-platform payment, S40).
  - An on-platform performance component can only be approximated through phased milestones, bonus-milestone custom offers agreed in advance and paid on Fiverr, or voluntary tips (which cannot be mandated) [reasoned].
- **Cost floor** = (estimated hours × target net hourly + tools + ad cost per order) ÷ 0.8.

### 7.2 Hormozi's value equation, adapted to Fiverr
Value = (Dream Outcome × Perceived Likelihood of Achievement) ÷ (Time Delay × Effort & Sacrifice) [S42, S58; Hormozi, $100M Offers, 2021].

| Lever | Fiverr implementation (DESORA) |
|---|---|
| Dream outcome | Title and first image name the business result: "Consistent Instagram presence that brings DMs", not "I will be your social media manager". Put the outcome in each package title |
| Perceived likelihood | Reviews, portfolio with metrics (real ones only), process steps, milestone plan, case snippets, FAQ answering "what if it doesn't work", a Gig video (practitioner claims of +20%/+40% conversion are unsourced and conflict: S55 vs S56) |
| Time delay | Fast first deliverable ("calendar in 48h"), fast-delivery extra, clear timeline |
| Effort & sacrifice | Done-for-you scope, short requirements form, templates, "we handle scheduling", fewer back-and-forth rounds |

- **Offer anatomy** (S42): core deliverable, bonus stack, guarantee, real scarcity or urgency, name, price and payment structure (packages, milestones, subscription).
- Practitioners report 10–40% lift per single change; this is [ANECDOTAL], S42.
- **Anti-patterns** (S42, S50, S60): fake scarcity; over-promised guarantees; inflated "$X value" bonuses; discount-led acquisition; strikethrough "was" prices that were never real. In the US, fictitious former prices violate FTC 16 CFR 233 (S60).

### 7.3 Guarantees and risk reversal within Fiverr's rules
Hormozi's four guarantee types, and what Fiverr permits [S58 plus ToS S40]:
- **Unconditional money-back:** cannot be promised as your own refund policy outside Fiverr. Refunds happen only via Fiverr cancellation or the Resolution Center, and cancellations hurt your reputation and status (S40).
  - Safe wording: "If I can't deliver what the package describes, I'll cancel through Fiverr for a full refund." Use it sparingly.
- **Conditional guarantee:** the best fit for Fiverr. Examples:
  - "If the calendar doesn't match your brief, I'll redo it free within the revision window."
  - "If you post the 12 designs on schedule and engagement doesn't improve over 30 days, the next month's strategy review is free (as a $0 extra, or a discount via coupon)."
  - Conditions should mirror the success path (S58).
  - A free follow-up must still be delivered and recorded on Fiverr.
- **Anti-guarantee:** "all sales final" is not enforceable against Fiverr's buyer-protection processes [BG-UNVERIFIED]. Not recommended.
- **Implied / performance:** not on-platform, except as milestone phasing.
- **Never guarantee:** Google rankings, follower counts, ad ROAS or virality. These are outcomes controlled by third-party algorithms, and such claims risk "misleading Gig" enforcement [ToS lists misleading descriptions as grounds for removal, S40]. Google's own guidance says no one can guarantee a #1 ranking [BG-UNVERIFIED].
- **Revisions as risk reversal:**
  - "Unlimited revisions" invites scope creep and lateness; T4 guides push it for Premium (S54, S56) [DISPUTED].
  - **Verdict:** give fixed revision counts that grow by tier (1 / 2 / 4), plus a paid revision extra. Clearly define what counts as a revision (changes within the brief) versus new scope (a custom offer).

### 7.4 Bonuses
Offer bonuses that are cheap to deliver but valuable to the buyer. Deliver them in the order, on Fiverr. Examples:
- Posting-time checklist.
- 10 caption hooks.
- Competitor snapshot.
- Hashtag set.
- Template pack.
- 15-minute Loom walkthrough.

Name them and state their use, not an inflated dollar value (S42).

---

## 8. AOV optimization, upsells, cross-sells, repeat orders

### 8.1 The funnel math
- Revenue = impressions × CTR × inquiry or order rate × AOV × (1 + repeat rate).
- A 10% improvement at each of 5 stages compounds to about +61% (1.1⁵ = 1.61) [S56 states "60%+"; arithmetic confirmed].
- Practitioner target benchmarks (CTR 5–10%, inquiries at 10–20% of views, inquiry-to-order 30–50%) are unsourced [ANECDOTAL, S56].

### 8.2 AOV levers (ranked, reasoned)
1. Standard as the default recommendation, with honest fit guidance.
2. Premium content based on the top 3 inquiry requests.
3. Extras attached at checkout, especially fast delivery, an extra platform and a report.
4. Consolidating mid-order upsells into one custom offer rather than several small extras (fee-efficient, S23).
5. Milestones for projects over $100, making larger scopes easier to accept.
6. Converting deliveries into subscriptions or retainers (subscription discount 5–20%, S5).
7. Volume bundles (for example 3 months prepaid as one milestone custom offer).

### 8.3 Scripts (all on-platform and ToS-safe)

**A. Inquiry stage (buyer asks "can you do X?")**
> "Thanks, [Name]. Based on what you described ([goal], [platforms], [volume]), the **Standard – Growth** package fits best: [3 bullets of what they get]. If you'd also like [the item they mentioned that sits in Premium], **Premium** covers it plus [speed/reporting]. If you'd prefer a tailored scope, I can send a custom offer. Which works better for you?"

This anchors on fit rather than price, and gives two honest options plus a custom path.

**B. Scope creep during the order** (adapted from S55)
> "Happy to help with that. It's outside this order's scope ([what was bought]). I can add it as an extra for $[X] with [N] extra day(s), sent through the order page, so everything stays covered by Fiverr. Shall I send it?"

**C. Pre-delivery upsell** (only when it adds real value, S56)
> "While preparing your calendar I noticed [specific gap, e.g. no Reels in your mix]. Reels are currently your cheapest reach lever. I can add 4 short edits to this order for $[X]. Totally optional; the calendar is complete either way."

**D. Tier upgrade (buyer ordered Basic but needs Standard)**
> "From your brief, you need [feature]. That's included in Standard. Rather than adding pieces separately, upgrading costs only $[difference] more and includes [extras]. I can send that as a single custom offer."

**E. Delivery-to-subscription** (the highest-value upsell)
> "Here's your delivery. To keep momentum, most brands continue monthly. I offer this as a Fiverr subscription: each month you get [deliverables], billed per delivery with [5–20]% off from the second month. Cancel anytime. Want me to set it up?"

State the subscription discount only as configured (S5).

**F. Post-completion repeat or cross-sell** (via a Seller Plus follow-up message or coupon, or a normal Fiverr message)
> "Hope the first posts are performing well! Many clients pair content with a small ad budget. I also run [Meta Ads setup] here on Fiverr: [link to your Fiverr Gig]. As a returning client, here's a [10–15]% coupon valid 30 days."

Coupons are Seller Plus only and up to 30% (S24, S26).

**Cross-sell rules:**
- Only link your own Fiverr Gigs and communicate in the Fiverr inbox.
- Never share contact details or off-platform payment options (ToS, S40).
- Never make reviews or tips conditional on anything (S40).

### 8.4 Market research protocol for pricing (replaces the unverified ranges)
1. Search the exact buyer keyword in the target subcategory. Record the top 20 organic Gigs (skip ads): level, review count, Basic/Standard/Premium price, delivery days, revisions and scope.
2. Compute the median and quartiles per tier. Note whether the category is standardized (S14).
3. Position DESORA's tiers as: Basic around the 40th–50th percentile, Standard around the 50th–65th, Premium around the 70th–85th. Adjust by review count: fewer reviews means lower percentiles.
4. Repeat quarterly.

S47 shows that such a scrape is feasible. Do not automate scraping in ways that breach Fiverr's terms; manual sampling is safe.

### 8.5 Indicative price ranges for marketing services [BG-UNVERIFIED]
These come from pre-2026 background knowledge. **Do not use them without running 8.4.**
- **Social media management (monthly):**
  - Basic ≈ $30–$150.
  - Standard ≈ $100–$400.
  - Premium ≈ $300–$1,000+.
  - Agency or Pro-level retainers ≈ $500–$2,000+/month.
- **Social post design packs:** ≈ $10–$100 per pack.
- **Meta or Google Ads setup:** ≈ $50–$400. Monthly management ≈ $200–$1,500+ (often scaled to ad spend).
- **SEO:**
  - Audits ≈ $20–$200.
  - On-page ≈ $50–$400.
  - Monthly SEO ≈ $150–$1,000+.
  - Cheap link-building Gigs carry quality and policy risk.
- **Logo and brand design:** ≈ $10–$100 (low end), $100–$500 (mid), $500–$2,500+ (Pro).
- **Video editing:** short-form ≈ $10–$60 per video; long-form YouTube ≈ $30–$250 per video.

---

## 9. B2B vs individual buyers
Nagle & Holden's price-sensitivity drivers [S53] applied:

| Driver | B2B buyer (brands, SMEs, agencies, Fiverr Business/Pro buyers) | Individual / solopreneur |
|---|---|---|
| Shared-cost effect | Company pays, so lower sensitivity | Personal money, so higher sensitivity |
| End-benefit effect | Marketing is a small share of revenue at stake, so lower sensitivity | Often no clear revenue link, so higher sensitivity |
| Difficult-comparison effect | Specialized, strategic scopes are hard to compare, so lower sensitivity | Commodity tasks, so higher sensitivity |
| Switching-cost effect | Retainers and onboarding create stickiness | Lower |
| Fairness effect | Expects justified, stable pricing and invoices | Reacts to "feels expensive" |

Pricing implications:
- **B2B:** outcome-named Standard/Premium, milestones, subscriptions, custom offers up to $20k ($50k Pro, S7), round premium prices, proof and process.
- **Individuals:** a clear Basic, left-digit "starting at" price, simple scope, fast delivery.

---

## 10. Myths vs reality

| # | Myth | Reality | Status |
|---|---|---|---|
| 1 | "Losses hurt exactly 2× as much as gains, so always use loss framing" | Magnitude contested; evidence grade C; avoid fixed ratios (S61) | [DISPUTED] |
| 2 | "Adding a decoy tier shifts about 50% of buyers to premium (Economist)" | Hypothetical classroom demo (n ≈ 100). Effect fails with realistic descriptions and images; naturalistic study shows zero (S51, S61) | Myth / overstated |
| 3 | "More options kill sales 10× (jam study)" | Meta-analytic mean d ≈ 0.02; effect only under specific moderators (S44, S46, S61) | Myth as a general rule |
| 4 | "Charm prices lift sales 24%" | Small, heterogeneous effect in preregistered meta-analysis; the 24% figure is from Poundstone's 8-study summary (S48, S59) | Overstated |
| 5 | "You must start at $5–$10 to get your first orders" | Fiverr community guidance warns against underpricing; price signals quality; small-order fee (S15, S23, S59) | [DISPUTED]; verdict in §5 |
| 6 | "Tips are free money, and Fiverr doesn't take a cut" | 20% seller commission applies to tips; the buyer also pays a fee on the tip (S10, S17–S19, S23) | Myth |
| 7 | "The buyer small-order fee is $2 (or $2.50)" | Current Help Center: 5.5% + $3.50 on purchases under $200 (S23) | Outdated |
| 8 | "Any order can use milestones" | Only orders over $100; each milestone at least $50 (S3, S40) | Myth |
| 9 | "Offer a discount in exchange for a 5-star review" (recommended in S56) | Incentivized or arranged reviews are banned (S40) | **ToS violation** |
| 10 | "Level 1 = 60 days + 10 orders + 4.7 rating" (S55) | Fiverr overhauled its level system (success score) in 2023 [BG-UNVERIFIED]; another cluster covers levels | Outdated |
| 11 | "A Gig video converts 20% / 40% better" | Two T4 sources give conflicting, unsourced numbers (S55 vs S56) | Unverified |
| 12 | "Unlimited revisions is the best guarantee" | Invites scope creep and late orders; fixed counts plus a revision extra are safer | [DISPUTED] |
| 13 | "Guaranteed page-1 rankings / 10k followers" as an offer | Outcomes you don't control; risk of misleading-Gig enforcement; fake engagement is prohibited [BG-UNVERIFIED] | Risk to avoid |
| 14 | "A 'Most Popular' badge adds 20–30%" | SaaS vendor claim (ProfitWell), unverified, not Fiverr (S48, S50) | Unverified |
| 15 | "Discounts build loyalty" | Discount-acquired clients tend to be price-driven; coupon cost comes from your earnings (S26, S42) | [ANECDOTAL] |
| 16 | "Fake 'was $X' strikethrough anchors are fine" | Deceptive; FTC 16 CFR 233 (US) forbids fictitious former prices (S60); Fiverr has no strikethrough field anyway | Myth / risk |

---

## 11. Actionable playbooks

### 11.1 Package design worksheet (per Gig)
1. **Buyer and job:** who buys (B2B or individual), what result they want, and what their alternative is (hire, agency, DIY, nothing).
2. **Category check:** is the subcategory standardized? If so, write down the required minimum scope per tier (S14).
3. **Market scan:** run protocol 8.4. Record the median and quartiles per tier.
4. **Standard first:** define the complete core outcome. List its deliverables, delivery days and 2 revisions. Price it at the market median, adjusted for proof level. Check it against the cost floor: (hours × target net hourly + tools) ÷ 0.8.
5. **Basic:** remove fences from Standard (fewer items or platforms, 1 revision, no strategy call). Price at about 40–55% of Standard. Check that Basic doesn't dominate Standard (no accidental decoy).
6. **Premium:** add "peace of mind" items (strategy session, reporting, extra platform, priority or faster delivery). Price at about 1.8–2.5× Standard. Check that someone would really buy it.
7. **Extras (3–6):** fast delivery, additional revision, and 2–4 scope units that match past inquiries. Each costs less than Basic.
8. **Names:** outcome-based tier names. First line of each package description: "Best for: …".
9. **Risk reversal:** revision counts, milestone availability for custom work over $100, and a conditional redo promise.
10. **Recurring path:** enable subscriptions where eligible, with a 5–10% discount from order 2.
11. **Measure after 30 days:** package mix (target ≈ 30/50/20), extras attach rate, AOV, inquiry-to-order conversion.

### 11.2 Price-raise protocol
See section 6. Triggers, then a +10–20% step on one tier, then a 3–4 week window, then the revenue-neutral check p/(1+p), then roll back or keep. Keep existing clients on current rates via custom offers.

### 11.3 Upsell and cross-sell scripts
See section 8.3 (A–F). Rules:
- Every upsell must solve a problem the buyer actually has.
- Everything goes through the order page or custom offers.
- No pressure tied to reviews or tips.

### 11.4 Custom offer template
```
Title: [Outcome] – [Scope] for [Brand]
Hi [Name], based on our chat, here's what I'll deliver:
• Deliverable 1 (quantity/spec)
• Deliverable 2
• Deliverable 3
Timeline: [N] days  |  Revisions: [N] (changes within this brief)
Not included (available on request): [items]
Payment: [single payment] OR [milestones: M1 $__ (audit + plan), M2 $__ (production), M3 $__ (launch/report)]
Why this plan: [1 line tied to their goal]
Optional add-on: [one relevant upgrade, price]
If anything isn't clear, ask here before accepting. Happy to adjust.
```

Rules for using the template:
- Use milestones only if the total is over $100 and each milestone is at least $50 (S3).
- Keep delivery within Fiverr's limits.
- If Seller Plus is active, a custom-offer coupon can be attached for new leads (S24).

### 11.5 Offer-stack builder (value equation, step by step)
1. **Dream outcome sentence:** "[Buyer] gets [measurable, controllable deliverable] that helps [business result]."
2. **Proof:** 3 portfolio items plus 1 metric (real), process in 4 steps, FAQ addressing "what if it doesn't work".
3. **Speed:** first tangible deliverable within 24–72h; optional fast-delivery extra.
4. **Effort removal:** short requirements form, templates, "we schedule for you".
5. **Bonuses:** 2–3 low-cost, high-relevance items delivered in the order.
6. **Risk reversal:** fixed revisions, conditional redo, milestones.
7. **Honest urgency or scarcity:** a real capacity cap or real seasonal timing (for example Ramadan or Black Friday campaigns).
8. **Name the package.**
9. **Price:** check against the median, the cost floor and the 1 : 2 : 4 ladder.
10. **Test one change at a time** for about 3–4 weeks (S49, S56).

---

## 12. Templates and formulas
- Net per order = P × 0.8. List price for target net N: P = N / 0.8.
- Buyer total = P × 1.055 + 3.50 if P < 200 (S23).
- Hourly custom offer: rate R, hours H ≥ 8 → seller net = 0.8 × R × H (S11).
- Revenue-neutral order drop after a price increase p: Δorders = p / (1 + p).
- Extras attach rate = orders with at least one extra ÷ total orders. AOV = revenue ÷ orders.
- Package mix health: Basic > 50% means Basic is too generous or Standard is unclear. Premium < 10% means Premium lacks differentiation (heuristic, S52).
- Guarantee ROI (Hormozi, S58): net sales with guarantee ÷ net sales without = (sales′ × (1 − refund′)) ÷ (sales × (1 − refund)). On Fiverr, subtract the reputation cost of cancellations too.
- Subscription LTV (simple) = monthly net × expected months. The discount from month 2 lowers per-month net but raises expected months.

---

## 13. Free tools and resources discovered

| Name | URL | Purpose | Free? |
|---|---|---|---|
| Fiverr Help Center: packages, custom offers, milestones, subscriptions, hourly, extras, tipping, fees | help.fiverr.com (see S1–S14, S23–S28) | Authoritative rules | Free |
| Fiverr Analytics (built-in) / Seller Plus Advanced Analytics | In-app | Impressions, clicks, conversion, repeat business; advanced keyword and revenue data | Basic free; advanced is paid Seller Plus |
| Fiverr fee calculators | feecalculator.co/fiverr ; upwork.com/tools/fiverr-fee-calculator ; weareindy.com/fiverr-fee-calculator ; nicetoolkit.com/fiverr-calculator | Seller net and buyer total | Free (third-party; check they use 5.5% + $3.50 under $200) |
| Van Westendorp Price Sensitivity Meter (method) | Described in S43 | Survey past clients or prospects for acceptable price ranges | Free method (Google Forms plus Sheets) |
| Good-Better-Best wiki (Sarah Zou) | sarahzou.com/wiki/pricing/packaging-and-bundling/good-better-best (via S52) | Tier design, fences, 1-2-4 ratio | Free |
| Evidence-based pricing references | github.com/seedprod/evidence-based-marketing (S48–S50) | Citation list; contains errors, e.g. misattributes Anderson & Simester's $39 test | Free |
| Psychology replication list (Gavin Leech) | github.com/g-leech/argmin-gravitas (S44) | Check which effects replicate | Free |

---

## 14. Open questions and things that could not be verified
1. **Maximum package price per tier** (is there a current cap, and does it depend on level?). Not found.
2. **Price increments:** whether package prices must be $5 multiples. This affects charm pricing.
3. **Milestones:** maximum 5 or 6? Does the "Basic ≥ $100" rule apply to Gig-level milestones?
4. **Custom-offer coupon validity:** 24 hours or 30 days (conflicting snippets).
5. **Subscription eligibility criteria and categories.** Are 3- and 6-month periods still the options?
6. **Seller Plus plan prices** ($25/$49 per the snippet) and the Kickstart tier.
7. **Clearance days by level** after the 2023–2025 level changes.
8. **Search ranking:** does Fiverr use price, AOV or revenue in ranking, or only conversion and performance?
9. **Tip rules:** whether soliciting tips is restricted, and the exact seller cut (20% assumed).
10. **Buyer-initiated extras mid-order:** whether buyers can add extras themselves from the order page ("request to add extras") or only accept seller-offered extras.
11. **Market price ranges** for marketing subcategories in 2026: run protocol 8.4.
12. **Withdrawal options and fees for Morocco** (Payoneer, bank transfer, PayPal receiving restrictions). Coordinate with the payments cluster.
13. **Current Fiverr policy text** on outcome guarantees in marketing categories (SEO rankings, social growth).
14. **Price-increase field reports** from 2024–2026 (Reddit r/Fiverr, Fiverr forum). Not readable this session.
15. **Current ToS** (post-2020) wording on extras by level, review windows and off-platform rules.

---

## 15. Primary literature referenced (via secondary sources; originals not re-fetched)
- Huber, Payne & Puto (1982), JCR 9(1) — decoy. Frederick, Lee & Baskin (2014), JMR 51(4) — decoy limits. Yang & Lynn (2014), JMR. Trendl et al. (2021), *Decision*. [S51, S61]
- Simonson (1989), JCR; Simonson & Tversky (1992), JMR 29(3) — compromise and extremeness aversion. [S48, S43]
- Valenzuela & Raghubir (2009), JCP 19(2) — center stage. [S48]
- Tversky & Kahneman (1974), *Science*; Schley & Weingarten (2026), *Management Science* — anchoring. [S61]
- Iyengar & Lepper (2000), JPSP; Scheibehenne, Greifeneder & Todd (2010), JCR 37(3); Chernev, Böckenholt & Goodman (2015), JCP 25(2) — choice overload. [S44, S46, S51, S61]
- Anderson & Simester (2003), QME; Thomas & Morwitz (2005), JCR 32(1); Troll et al. (2024), JCP — price endings. Wadhwa & Zhang (2015), JCR — round vs precise prices. [S57, S59, S60]
- Rao & Monroe (1989), JMR; Völckner & Hofmann (2007) — price-quality. [S59]
- Kahneman & Tversky (1979), *Econometrica*; Brown et al. (2024), JEL — loss aversion. [S61]
- Jachimowicz et al. (2019), BPP — defaults. [S61]
- Nagle & Holden, *The Strategy and Tactics of Pricing* — nine price-sensitivity effects. [S53]
- Mohammed (2018), HBR — Good-Better-Best. [S52]
- Hormozi (2021), *$100M Offers* — value equation and guarantees. [S42, S58]
- Mertens et al. (2022), PNAS, with Collins's and Gelman's critique — nudge effect sizes. [S45]
