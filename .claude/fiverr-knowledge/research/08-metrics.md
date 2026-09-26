# Cluster 08: Fiverr metrics (definitions, benchmarks, diagnosis, recovery)

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.


Prepared for: DESORA (marketing agency, Morocco) Fiverr advisor subagent
Research date: 2026-09-26
Source list: `08-sources.tsv` (source ids S1–S87 below)

---

## 0. How reliable this is (read this first)

**This session had tight technical limits, and they shape how far you can trust this document.**

- The network egress proxy blocked **every Fiverr domain** for direct fetch: help.fiverr.com, community.fiverr.com, fiverr.com/resources, pro.fiverr.com and investors.fiverr.com. It also blocked almost all third-party blogs (Medium, Reddit, LinkedIn, Quora, Wikipedia and every Fiverr-tips blog I tried). WebFetch only worked on GitHub and gist.github.com.
- The shared WebSearch budget for the whole session (200 calls across all 12 agents) ran out after this agent had completed 21 searches. Three more were refused.
- As a result, **official (T1) facts in this document come from search-engine snippets of Fiverr Help Center and Fiverr Community pages**, marked `snippet` in the TSV. I did not read them end to end. Snippets are short and are sometimes blended with other pages by the search tool. Where two snippets disagreed, I say so.
- Fetched pages (27 by WebFetch, plus 5 repositories read via `git clone`) are almost all GitHub content (T3/T4). They were mainly useful for **spotting myths and outdated claims**. Few of them are authoritative.
- I added some knowledge I held before this session where it fills gaps. Every such statement is tagged **[BACKGROUND]**, meaning "believed accurate as of 2024–2025 but not re-verified in this session". **The subagent should treat [BACKGROUND] items as hypotheses and confirm them against the live Help Center or the seller's own dashboard before stating them as fact.**

Evidence tags used below:
- **[OFFICIAL]**: stated by Fiverr (Help Center, Fiverr Community staff blog, official launch page). Seen via snippet unless noted.
- **[CONSENSUS]**: at least 3 independent non-official sources agree, and nothing credible contradicts them.
- **[ANECDOTAL]**: seller field reports or a single non-official source.
- **[DISPUTED]**: sources conflict. The verdict is given.
- **[BACKGROUND]**: analyst prior knowledge, not re-verified this session.

---

## 1. Executive summary: the 22 most important insights (ranked)

1. **The level system changed in February 2024, and much online advice is out of date.** Since then, levels depend on six metrics: **Success Score, rating, response rate, completed orders, unique clients and earnings**. Order Completion Rate (OCR), on-time delivery rate, days active ("seniority") and "days without warnings" are **no longer direct level criteria** [OFFICIAL] (S2, S31, S35). Any guide that says "Level 1 = 60 days + 10 orders + 4.7 rating, evaluated on the 15th" describes the pre-2024 system (S71, S77).
2. **Current thresholds** [OFFICIAL/CONSENSUS] (S2, S31, S33, S34, S37, S46):
   - Level 1: Success Score ≥5, rating ≥4.4, response rate ≥80%, ≥5 orders, ≥3 unique clients, ≥$400 earned.
   - Level 2: Success Score ≥7, rating ≥4.6, response rate ≥90%, ≥20 orders, ≥10 unique clients, ≥$2,000.
   - Top Rated (June 2025 staff blog): Success Score ≥9, rating ≥4.7, response rate ≥90%, ≥40 orders, ≥20 unique clients, ≥$10,000, **plus a manual holistic review**. That review can take 45–90 days, applies only to "high-demand" subcategories and may include skills tests (S37).
3. **Levels move daily, and demotion is slow.** You move up to Level 1 or Level 2 the day after you meet all six criteria at once. If a metric drops below its threshold, you get a **30-day grace period** before demotion. Top Rated sellers who drop get a manual review instead of an automatic demotion [OFFICIAL] (S2, S31, S32).
4. **The Success Score (1–10) is the most important and least visible metric.** Only the seller sees it (clients see the level). It is calculated **per gig**, then combined into an overall score **weighted by each gig's order count**. Higher-value and more recent orders may count more [OFFICIAL] (S1).
5. **The Success Score is relative, not absolute.** It compares you with **other freelancers in your price range** [OFFICIAL] (S1, S31). Changing your price band changes the group you are compared against. That is a strategic lever, and also a risk.
6. **Private feedback feeds the Success Score.** Clients give an anonymous private rating that the seller never sees, and it is used for internal quality measurement [OFFICIAL] (S1, S12). This is why sellers report Success Score drops **despite 5-star public reviews** [ANECDOTAL, many] (S30, S44, S45, S47).
7. **The six Success Score areas** (reconstructed from the official list of what lowers the score) [OFFICIAL, names partly reconstructed] (S1, S25, S26):
   - client satisfaction (public reviews and private feedback)
   - on-time delivery, including how often orders are late
   - order cancellations, especially seller-initiated ones
   - communication
   - conflict-free orders (disputes and Resolution Center friction)
   - value for money: "whether clients feel they received the value they paid for"
8. **Response rate** is the share of *first* replies to *new* inquiries sent **within 24 hours, over the last 90 days**. Later messages in the thread don't count. **Buyers see response time, not response rate** [OFFICIAL] (S7).
9. **Cancellations are not all equal** [OFFICIAL] (S8):
   - A client cancelling **before submitting requirements does not hurt** your completion stats.
   - A cancellation **you request** does hurt.
   - A **very late order that the client force-cancels** does hurt.
   - In milestone orders, once one milestone is complete, cancelling the remaining milestones doesn't affect your statistics.
10. **Fiverr's own diagnostic framework** (Fiverr Community blog, July 2025) [OFFICIAL] (S6):
    - impressions down → check demand and keywords;
    - clicks low → fix the gig card (thumbnail, title, price, rating shown);
    - conversions low → fix the gig page and trust signals.
11. **Definitions matter for benchmarking.**
    - Impression: the gig appeared as a thumbnail on the homepage, a category or subcategory page, search results or a user page.
    - CTR = clicks ÷ impressions.
    - Fiverr describes conversion rate as the share of buyers who order **after viewing the gig page**, i.e. orders ÷ clicks [OFFICIAL] (S6).
    - Some third-party guides use orders ÷ impressions, which gives much smaller numbers [DISPUTED] (see §5).
12. **Fiverr publishes no CTR or conversion benchmarks.** Every number circulating online is anecdotal. The only coded benchmark found in this session is a GitHub tool that treats CTR under 1.5% as low and 3% or more as healthy (S76). Label it **low reliability** and judge each gig against its own history and its category.
13. **Ratings are inflated at the top.** In a 50-seller cohort of the most-trusted SEO sellers (August 2026), the average rating was **4.9 across 306,056 reviews**, and 9 of the top 10 showed an average response time of "1 hr" (S58). A 4.7 rating clears the Top Rated bar but **may lose clicks next to 4.9–5.0 competitors** [ANECDOTAL/inference].
14. **Unique clients is the metric that blocks agencies with one big client.** Repeat orders from the same buyer help with orders and earnings but **not with unique clients** (Level 2 needs 10; Top Rated needs 20) [OFFICIAL/CONSENSUS] (S2, S15, S37).
15. **Low Success Score has consequences beyond levels.** If it becomes "critically low", the account can be labelled low-performing, with reduced visibility [OFFICIAL-snippet, wording via T4 relay] (S2, S32). Fiverr also describes the score as shaping "performance evaluation and visibility in the marketplace" (S31).
16. **Revisions are a Success Score risk area.** Fiverr's own April 2026 blog links revision handling to **On-Time Delivery, Conflict-Free Orders and Client Satisfaction** (S25). Unlimited revisions, and late re-deliveries after a revision request, are hidden score killers.
17. **Standard analytics for all sellers** cover an Overview and a Repeat Business tab. **Seller Plus** adds Advanced Analytics, including a **funnel for organic vs Fiverr Ads traffic** (impressions → clicks → orders by source) [OFFICIAL] (S5, S23).
18. **Different metrics serve different goals** (see §7):
    - *level*: the six metrics;
    - *search ranking*: relevance, then performance signals (CTR, conversion, satisfaction, delivery, response). Fiverr has never published weights;
    - *buyer trust*: what buyers can see, which is rating, review count and content, level badge, response time, "orders in queue", portfolio and Pro badge.
19. **Windows** (details in §8):
    - response rate: 90 days [OFFICIAL];
    - Success Score: "a longer time period", length not disclosed, with extra weight on recent orders [OFFICIAL];
    - earnings, orders and unique clients for levels: cumulative [CONSENSUS];
    - the old 60-day rolling window and monthly evaluation on the 15th: **retired** [OFFICIAL].
20. **Never game metrics.** The following risk account restrictions or bans:
    - fake deliveries to stop the late clock;
    - asking for, buying or incentivising reviews, or trading refunds for review removal;
    - "keep me online" auto-refresh bots (S59);
    - moving buyers off-platform;
    - self-purchases.
    Fiverr also looks for patterns such as identical messages at volume and near-instant replies every time [ANECDOTAL] (S77).
21. **Small samples are noisy.** At 2% CTR, 1,000 impressions gives about 20 clicks, with a ±0.9-point 95% interval. Don't judge a thumbnail or title test on less than about 1,000–2,000 impressions per variant, or 2–4 weeks. Change one variable at a time (analyst reasoning).
22. **For DESORA (agency, Morocco, UTC+0 since 20 Sep 2026):** the main risks are response-rate slips at night for US inquiries, and unique-client growth stalling if a few retainer clients dominate. Mitigate with:
    - the mobile app and quick-response templates;
    - an on-call rotation for first replies;
    - small entry-level packages that bring in *new* unique clients;
    - milestone orders for large projects, so a cancelled phase doesn't hit statistics.

---

## 2. The system at a glance

| Metric | Buyer sees? | Level criterion? | Feeds Success Score? | Likely ranking signal? | Window |
|---|---|---|---|---|---|
| Success Score (1–10) | No [OFFICIAL] | Yes: ≥5 / ≥7 / ≥9 | n/a | Probably (Fiverr says it shapes "visibility") [OFFICIAL, vague] | Long period, length undisclosed; recency-weighted [OFFICIAL] |
| Rating (public stars) | Yes | Yes: ≥4.4 / ≥4.6 / ≥4.7 | Yes (client satisfaction) | Yes, widely believed [CONSENSUS]; weight unknown | Public: lifetime per gig and profile [BACKGROUND]. Level window: unconfirmed |
| Private feedback | No (not even the seller) | Indirectly | Yes [OFFICIAL] | Indirectly | n/a |
| Response rate | No | Yes: ≥80% / ≥90% / ≥90% | Possibly (communication) | Unknown | 90 days [OFFICIAL] |
| Response time (avg) | Yes | No | Possibly | Widely believed [ANECDOTAL] | Undisclosed [BACKGROUND] |
| Completed orders | Partly (review count is a proxy) | Yes: 5 / 20 / 40 | n/a | Order velocity is believed to matter [ANECDOTAL] | Cumulative |
| Unique clients | No | Yes: 3 / 10 / 20 | n/a | Unknown | Cumulative |
| Earnings | No | Yes: $400 / $2,000 / $10,000 | Higher-value orders weigh more in the score [OFFICIAL] | Unknown | Cumulative ("lifetime" for Top Rated) |
| Cancellations / OCR | Partly (buyers may see "orders in queue", not OCR) | No (removed in 2024) | Yes [OFFICIAL] | Believed yes [ANECDOTAL] | Undisclosed |
| On-time delivery | No | No (removed in 2024) | Yes [OFFICIAL] | Believed yes | Undisclosed |
| Repeat business | No | No | "Repeat business" is listed by some T4 sources as a factor [DISPUTED] | Unknown | Repeat Business tab; window unconfirmed |
| Impressions / clicks / CTR / conversions | No | No | No (these are outcomes) | CTR and conversion are believed ranking inputs [CONSENSUS among sellers, unconfirmed by Fiverr] | Selectable ranges in Analytics [BACKGROUND] |

---

## 3. Metric dictionary

### 3.1 Success Score (1–10)

- **Official definition** [OFFICIAL] (S1, S27, S31):
  - The Success Score "evaluates each of your Gigs in key areas related to the order process and your relationship with clients".
  - Each gig gets a score from 1 to 10.
  - The overall score is built from the gig scores, and "Gigs with a higher number of orders carry more weight".
  - "Higher-value and more recent orders may have a greater impact on the Gig score."
  - Gig scores come from order history in **six key areas**. Each area mixes quantitative data (statistics, scores) and qualitative data (feedback, reviews).
  - The score is "based on your performance relative to other freelancers in your price range".
- **The six areas** [OFFICIAL, naming partly reconstructed from the Help Center's list of negative factors and Fiverr blog titles] (S1, S25, S26):
  1. **Client satisfaction**: "data points from reviews and other statistics that reflect client happiness with the overall order experience". This includes the private review.
  2. **On-time delivery**: "how often you deliver on time or ahead of time, factoring in the frequency of late deliveries".
  3. **Order cancellations**: especially cancellations you initiate.
  4. **Communication**: poor communication lowers the score.
  5. **Conflict-free orders**: disputes and Resolution Center conflicts.
  6. **Value**: "whether clients feel they received the value they paid for".
- **[DISPUTED] alternative lists.** Some third-party guides list the six areas as "client satisfaction, communication quality, order quality, revision handling, dispute resolution, delivery experience" (S28/S82 relays). Others say "cancellations, repeat business, buyer feedback, overall order experience" (S15/S16 relays).
  - *Verdict:* these are paraphrases. The official wording (the negative-factor list in S1 and the "On-Time Delivery / Conflict-Free Orders / Client Satisfaction" naming in S25/S26) supports the six-area list above.
  - "Repeat business" as a Success Score area is **not** supported by official snippets. Treat it as unconfirmed.
- **Window.** The calculation "considers a longer time period", which is described as more stable and giving "more time to learn from mistakes without immediate consequences" [OFFICIAL] (S1). The exact length is **not disclosed**.
  - T4 blogs say "last 60 days weigh more than 12 months" (S32). That is consistent with the official recency weighting, but the specific numbers are unverified.
- **Visibility.** Only the seller sees the score. Clients see the level [OFFICIAL] (S1).
- **Where to find it:** the seller dashboard / Level overview (a progress tracker showing each requirement) [OFFICIAL] (S2). Gig-level scores appear per gig [OFFICIAL] (S1).
- **Why it matters:**
  - It gates every level (≥5 for Level 1, ≥7 for Level 2, ≥9 for Top Rated review) [OFFICIAL/CONSENSUS].
  - A "critically low" score can lead to a low-performance label and reduced visibility [OFFICIAL-snippet] (S2/S32).
  - Fiverr ties it to "visibility in the marketplace" (S31).
- **How to improve it** (each tied to an official area):
  - Set realistic delivery times with buffer, and never deliver late (on-time delivery).
  - Qualify buyers before they order, using custom offers and requirement questionnaires (cancellations, value).
  - Define revisions tightly and deliver revisions on time (S25).
  - Send proactive progress updates (communication).
  - Resolve issues in chat before anyone opens the Resolution Center (conflict-free orders).
  - Deliver more perceived value than the price implies, for example a short Loom walkthrough or a summary report (value, client satisfaction).
- **Pitfalls:**
  - Because the score is relative to your price range, **raising prices can expose you to tougher value-for-money expectations**, and cutting prices puts you in a different comparison group [inference from OFFICIAL "relative to price range"].
  - Because of order-count weighting, **one high-volume gig with problems can drag the whole account down**.
  - A gig with few orders can swing sharply from a single bad order [ANECDOTAL] (S43, S45).
  - Sellers report the score falling with 5-star reviews and good communication (S30, S44). The likely explanations are private feedback, price-band comparison and recency weighting, but Fiverr doesn't show the breakdown, so the cause **cannot be verified from outside**.
- **Community sentiment:** strongly negative at launch in 2024 ("no-sense metric", "worst change") (S40, S41, S45, S47). That is useful context. It does not change how the score works.

### 3.2 Rating (public reviews) and rating breakdown

- **Definition:** the average of buyers' public star ratings (1–5), shown on gigs and the profile, together with the number of reviews [BACKGROUND/CONSENSUS].
- **Level thresholds:** ≥4.4 (Level 1), ≥4.6 (Level 2), ≥4.7 (Top Rated) [OFFICIAL/CONSENSUS] (S2, S33, S34, S37).
- **Breakdown:** gig pages have shown a rating breakdown with sub-ratings for **seller communication level, quality of delivery and value of delivery**, plus a histogram of star counts [BACKGROUND]. Fiverr announced a "Ratings & Reviews" revamp together with the February 2024 level launch ("Ratings & Reviews (testing changes)") (S38, S42). The current field names should be checked on a live gig page.
- **Public vs private:** "The public rating reflects what buyers chose to say publicly, while the Success Score reflects what buyers told Fiverr privately" [T4 relay consistent with OFFICIAL] (S29, S1).
- **Window:** the public average is lifetime [BACKGROUND]. The window used for the **level** rating check is **not confirmed** in this session (see §12).
- **Benchmarks:** top SEO cohort averages 4.9 (S58). Among the top 50, the lowest scores were 4.8. A rating of **4.8 or below is below the elite in competitive categories** [ANECDOTAL, one dataset].
- **Improve it:**
  - Qualify buyers.
  - Over-communicate.
  - Send a clear delivery message that explains what was delivered and how to use it.
  - Invite feedback before marking an order delivered, so problems are fixed before the review.
  - **Do not** ask for a specific rating or offer anything in exchange for a review (see §10).
- **Recovery:** new good reviews dilute a bad one mathematically. Example: 20 reviews averaging 4.9, plus one 1-star, gives (98 + 1) / 21 = 4.71; you need 9 more 5-star reviews to get back to 4.80 (solve (99 + 5k) / (21 + k) = 4.8).
  - Reply publicly and professionally to the negative review [BACKGROUND: sellers can publicly reply to reviews].

### 3.3 Private feedback / client satisfaction

- **Definition:** "a private review is an anonymous satisfaction rating that is used for internal quality measurement only, and it is not shared with the freelancer" [OFFICIAL] (S12, S1).
- **Effect:** it feeds the Success Score's client satisfaction area (S1, S29).
- **Implication:** a buyer can leave 5 stars publicly (politeness, fear of confrontation) and still report dissatisfaction privately. **Watch for "soft" dissatisfaction signals**: short, generic 5-star reviews, heavy revision rounds, slow approvals, a complaining tone before acceptance.
- **Improve it:** close the loop before delivery. Ask "Is there anything that would make this a 10/10 for you?" in the chat *before* delivering the final version. This is allowed because it asks for feedback on the work, not for a rating.

### 3.4 Response rate

- **Definition** [OFFICIAL] (S7): the percentage of **first responses to new inquiries sent within 24 hours**, over the **last 90 days**.
  - Example from Fiverr: 10 new requests in 90 days, 9 answered within 24 hours = 90%.
  - Only the first reply to a new inbox message from a new client is tracked. "After that first reply, the rest of the conversation isn't tracked."
- **Visibility:** seller only. Buyers see **response time** instead (S7).
- **Levels:** ≥80% (Level 1), ≥90% (Level 2 and Top Rated) (S2, S33, S34, S37).
- **Window/recovery:** the 90-day rolling window means "no long-term consequences for poor responsiveness" (S7). A miss ages out after 90 days.
- **How to protect it:**
  - Mobile app push notifications.
  - A daily "inbox zero for first replies" routine.
  - Quick responses / saved replies (S19).
  - The Availability feature for time off (S20).
  - Answer spam inquiries too, or report them. Whether reported spam is excluded from the calculation is **unverified** (§12).
- **Pitfall for DESORA:** US inquiries arrive between 15:00 and 03:00 Moroccan time. The window is 24 hours, so a disciplined morning sweep is enough for the *rate*. Buyers still see the *response time*, so faster replies still help conversion.

### 3.5 Response time (public)

- **Definition:** the average time you take to respond, shown on the gig and profile ("Avg. response time: 1 hour") [OFFICIAL that it is visible to clients] (S7).
- **Window/computation:** not confirmed in this session [BACKGROUND: a recent-period average].
- **Why it matters:** it is a trust and conversion signal that buyers see. In the elite SEO cohort, 9 of the top 10 showed "1 hr" (S58).
- **Myth check:** "Response time under 1 hour is a ranking factor from day one" appears in unsourced tool READMEs (S66, S77). **No official confirmation.** Treat it as a conversion factor for certain and a ranking factor as unknown.
- **Risk:** don't use auto-refresh or "stay online" bots (S59). Automation is against the ToS, and patterns such as identical messages at volume and replies that are always near-instant are reported to trigger scrutiny (S77) [ANECDOTAL].

### 3.6 Completed orders

- **Definition:** the count of completed orders.
- **Level thresholds:** 5 / 20 / 40 [OFFICIAL/CONSENSUS] (S2, S33, S34, S37).
- **Old-system thresholds (outdated):** 10 / 50 / 100 (S71, S77).
- **Window:** cumulative [CONSENSUS].
- **Pitfall:** only *completed* orders count. Cancelled orders don't. Milestone orders count once [BACKGROUND].

### 3.7 Unique clients

- **Definition:** the number of distinct buyers who completed orders with you.
- **Level thresholds:** 3 / 10 / 20 [OFFICIAL/CONSENSUS] (S2, S33, S34, S37). Added in 2024 [OFFICIAL] (S31, S35).
- **Why it matters:** it stops a single repeat client from carrying you up the levels (S15).
- **Tactic:** keep an entry-level package (for example a $40–$80 "social media audit" or "ad account audit") that brings in *new* buyers. Upsell them afterwards.

### 3.8 Earnings metrics

- **Earnings for level purposes:** cumulative earnings thresholds of $400 / $2,000 / $10,000 [OFFICIAL/CONSENSUS] (S2, S37). The Top Rated snippet calls it "total lifetime earnings" (S37 relay).
  - [DISPUTED] whether this is net of Fiverr's 20% fee. It is most likely net revenue credited to the seller [BACKGROUND], but this is unconfirmed.
- **Fiverr's cut:** 20% of order value, including tips [CONSENSUS] (S61, S71, S72, S75, S77).
- **Buyer-side fee:** 5.5% plus a small-order fee.
  - [DISPUTED]: S71 says $3 under $100; S75 says $2 under $50. Unimportant for seller metrics.
- **Dashboard earnings fields** (from a 2025 inventory of seller-dashboard fields) (S62) [ANECDOTAL but matches BACKGROUND]:
  - earnings this month
  - average selling price
  - available for withdrawal
  - pending clearance
  - total earned to date
  - withdrawn
  - "future revenues" / active orders value
- **Clearance:** funds clear after a holding period. About **14 days** is standard for most sellers (S72 relay). It is shorter or early for Top Rated sellers ("Early Payouts" is a Top Rated benefit per the staff blog S37). [BACKGROUND: 7 days for Top Rated/Pro.] Verify in the dashboard.
- **Average selling price (ASP):** earnings ÷ orders for the period. This is the best single indicator of whether upsells and packages are working.
  - Track ASP by gig.
  - Rising ASP with stable conversion means good pricing progress.
  - Rising ASP with falling conversion means you may have left your price band. Watch the Success Score too, because the score is price-range-relative.

### 3.9 Cancellations / Order Completion Rate (OCR)

- **Status:** OCR is **no longer a level criterion** (removed in 2024) [OFFICIAL] (S31, S35). Cancellations still **feed the Success Score** and "can affect your earnings, performance metrics, and search visibility" [OFFICIAL] (S8, S1).
- **What counts against you** [OFFICIAL] (S8, S22):
  - a cancellation request **you submit**: counts;
  - the client force-cancels a **very late** order: counts;
  - the client cancels **before submitting requirements**: does **not** count;
  - milestones: after at least one milestone is completed, cancelled remaining milestones **do not affect** statistics.
- **Mutual cancellation:** a cancellation that *you* initiate and the buyer accepts still counts as seller-initiated for OCR purposes [OFFICIAL-snippet interpretation: "Orders in which you submit the cancellation request affect your OCR"].
  - Whether a *buyer-initiated* mutual cancellation after requirements were submitted counts is **not explicit** in the snippets (see §12).
- **Prevent:**
  - Pre-order chat and custom offers.
  - Clear "what's NOT included" sections.
  - A requirements checklist.
  - Refuse orders you can't deliver.
  - Use milestones for large, multi-phase agency projects.
- **Never** pressure a buyer to cancel "from their side" to protect your stats. That can be reported as manipulation, and it erodes trust. Use the Resolution Center honestly (S21).

### 3.10 On-time delivery / late orders

- **Status:** no longer a level criterion. It **is** an official Success Score area [OFFICIAL] (S1, S31).
- **Mechanics:**
  - Late orders can be cancelled by the buyer. "Very late" force-cancellations count against you (S8).
  - [BACKGROUND] When the buyer accepts an extension requested through the Resolution Center, the due date moves, so delivering by the new date isn't late.
  - [BACKGROUND] Orders auto-complete 3 days after delivery if the buyer takes no action.
- **Revisions:** Fiverr's April 2026 blog flags revision management as a key risk to On-Time Delivery, Conflict-Free Orders and Client Satisfaction (S25).
- **Never** deliver placeholder or incomplete files to "stop the clock". That is a ToS violation [BACKGROUND, widely reported], and it leads to cancellations and private dissatisfaction anyway.

### 3.11 Repeat business

- **Official artefacts:**
  - a **Repeat business score** Help Center article (S3);
  - a **Repeat Business tab** in Analytics, available to all sellers [OFFICIAL] (S5, S23).
  - The exact formula (for example, the share of revenue from repeat buyers vs subcategory peers) **was not retrievable** (§12).
- **Relation to levels:** repeat orders count toward orders and earnings but not unique clients (S15).
- **Why it matters:** repeat business is the cheapest revenue there is. It is also the clearest signal that the delivery experience works, because an unhappy client doesn't reorder. For an agency, retainers and monthly packages (SMM, SEO, ads management) naturally produce high repeat rates.
- **Improve it:**
  - Offer subscription or monthly options where the category allows.
  - Send a follow-up offer 7–14 days after delivery (a report, an A/B idea, next steps).
  - Save buyer preferences.
  - Use Fiverr's own tools to keep the relationship **on-platform**.

### 3.12 Gig analytics: impressions, clicks, CTR, orders, conversion rate, cancellations

- **Definitions** [OFFICIAL] (S6, S49):
  - **Impressions**: "the number of times your Gig appeared in Fiverr's thumbnails, either on the homepage, category/subcategory page, search, and user page".
  - **Clicks**: clicks through to the gig page.
  - **CTR** = clicks ÷ impressions. "A high CTR means your Gig card is compelling."
  - **Conversion rate**: "the percentage of buyers who choose to order your Gig, after having reviewed your Gig page", i.e. orders ÷ clicks.
- **[DISPUTED] conversion formula.** Some guides define conversion as orders ÷ impressions (S6 search relay). *Verdict:* Fiverr's wording ("after having reviewed your Gig page") means orders ÷ clicks. Always state the denominator when you quote a rate.
- **Per-gig fields:** Manage Gigs and Analytics show impressions, clicks, orders and cancellations per gig for a selected period (S62, S76 scrape these fields) [ANECDOTAL/BACKGROUND]. Default views typically cover the last 30 days, with other ranges selectable [BACKGROUND].
- **Official first-response playbook** (S6):
  - impressions down → revisit demand and keyword strategy;
  - clicks low → the gig card and visuals;
  - conversions low → strengthen the gig page and build trust.
- **Gig "health":** no official single "gig health" score was found in this session. Treat as **unverified** any third-party "gig health" or "gig score" (for example S76's 0–100 score starting at 50). Fiverr's official per-gig health indicator is the **per-gig Success Score** (S1).

### 3.13 Fiverr Ads (formerly Promoted Gigs)

- **Official name:** "Promoting your Gigs with Fiverr Ads" (S24) [OFFICIAL title].
- **Metrics** [BACKGROUND, verify in the Ads dashboard]:
  - impressions, clicks, orders and sales generated by ads;
  - spend;
  - average cost per click;
  - a daily budget or bid, set by the seller.
- Seller Plus Advanced Analytics splits the funnel by **Organic vs Fiverr Ads** traffic (S5) [OFFICIAL]. This is the cleanest way to see whether ads cannibalise organic orders.
- **Eligibility:** historically limited to sellers with a level and good performance. The current rules were **not verified** (§12). The outdated claim "Level 2 needed for Promoted Gigs" appears in S77.
- **Core economics** (analyst framework):
  - Break-even CPC = ASP × net margin × conversion rate (orders ÷ clicks).
  - Example: $150 ASP × 80% after Fiverr's cut × 3% CVR = $3.60 maximum CPC before profit goes negative (ignoring labour cost).
  - Account for labour: if the order costs $60 of team time, the ceiling becomes (150 × 0.8 − 60) × 0.03 = $1.80.

### 3.14 Seller Plus analytics and extras

- All sellers get Analytics **Overview** and **Repeat Business** tabs. Seller Plus adds **Advanced Analytics** [OFFICIAL] (S5, S23):
  - an impressions → clicks → orders funnel by traffic source (organic vs Fiverr Ads);
  - [BACKGROUND] competitor/benchmark comparisons and buyer search-term insights, depending on tier.
- **Success Manager:** a personal Success Manager exists as a Seller Plus perk (S81) [OFFICIAL title].
- **Profile or visitor analytics:** a "who viewed your profile" style report was listed in the brief but **not confirmed** in this session (§12).

### 3.15 Level as a meta-metric: evaluation mechanics

- **Evaluation:**
  - Daily evaluation, with promotion "by the next day" once all criteria are met simultaneously (Level 1/Level 2) [OFFICIAL] (S31, S35).
  - T4 sources add that promotion typically happens within 24 hours (S82).
- **Demotion:** a **30-day grace period** starts when any metric falls below its threshold. Recover within 30 days and nothing happens. Otherwise you move to the level your metrics support. Top Rated sellers get a manual review instead [OFFICIAL] (S2, S32).
- **Top Rated:**
  - Criteria are mandatory but not sufficient. A holistic review by the evaluation team takes a **45–90 day** wait depending on subcategory.
  - It is limited to high-demand subcategories, and some subcategories need skills tests [OFFICIAL] (S37).
  - Benefits include **Early Payouts**, higher gig allotments "and more" (S37).
- **[DISPUTED] time-at-level requirements.** Several 2026 T4 blogs say New Seller 60 days → Level 1; Level 1 120 days → Level 2; Level 2 180 days → Top Rated (S32, S35, S83).
  - *Verdict:* the official 2024 launch copy says "seniority" is no longer directly related to level (S31). The June 2025 Top Rated blog lists no day requirement (S37). The day requirements are most likely **carried over from the pre-2024 system**.
  - Treat "180 days at Level 2" for Top Rated as **unconfirmed**, and check it against the seller's own Level overview tracker.
- **[DISPUTED] Top Rated numbers.** Some blogs and memory give 100 orders and $20,000 (pre-2024 system) (S71 context). A few relays mention a Success Score of 8.
  - *Verdict:* the most recent official source (June 2025 staff blog, S37) says **40 orders / 20 unique clients / $10,000 / Success Score 9 / 90% / 4.7**. Use those.

### 3.16 Buyer-side signals (what buyers actually see)

**Visible:**
- level badge (New / Level 1 / Level 2 / Top Rated)
- Pro badge, where vetted. Pro vetting reportedly admits about 1% of sellers [ANECDOTAL] (S71)
- star rating and review count
- review text, and details such as buyer country [BACKGROUND]
- average response time
- "orders in queue" (S60 lists it as a scraped field)
- member since, languages, certifications (S60)
- portfolio
- delivery times and package prices

**Not visible:** Success Score, response rate, OCR, on-time rate and private feedback (S1, S7).

**Implication:** buyer *trust* is driven by the visible set. *Level* and (probably) *ranking* are driven by the hidden set. You must manage both.

---

## 4. Level requirements: current vs outdated

| Criterion | Level 1 (current) | Level 2 (current) | Top Rated (current, June 2025) | Pre-2024 system (OUTDATED) |
|---|---|---|---|---|
| Success Score | ≥5 | ≥7 | ≥9 | did not exist |
| Rating | ≥4.4 | ≥4.6 | ≥4.7 | 4.7 on a 60-day window (all levels) |
| Response rate | ≥80% | ≥90% | ≥90% (90-day) | 90% |
| Completed orders | ≥5 | ≥20 | ≥40 | 10 / 50 / 100 |
| Unique clients | ≥3 | ≥10 | ≥20 | did not exist |
| Earnings | ≥$400 | ≥$2,000 | ≥$10,000 (lifetime) | $400 / $2,000 / $20,000 |
| Time on platform | not an official criterion since 2024 [DISPUTED] | same [DISPUTED] | 45–90-day review wait; "180 days at Level 2" is unconfirmed | 60 / 120 / 180 days |
| OCR / on-time rate | not a criterion (feeds Success Score) | same | same | 90% each |
| Evaluation | daily; promotion by the next day | daily | manual holistic review, high-demand subcategories only, possible skills test | monthly on the 15th |
| Demotion | 30-day grace period | 30-day grace period | grace period, then manual review | at the monthly evaluation |

Sources:
- Current: S2, S31, S33, S34, S35, S37, S46.
- Outdated column: S71 and S77 (still circulating in 2026 GitHub skills and reviews), plus [BACKGROUND].
- The 4.4 / 4.6 / 4.7 and 5 / 7 / 9 figures are [CONSENSUS] across more than 5 sources and match official snippets.

---

## 5. Benchmarks (with reliability ratings)

Fiverr publishes **no official CTR, conversion, inquiry-to-order or repeat-rate benchmarks** for sellers. Everything below is either official *thresholds* (high reliability) or field or tool-encoded numbers (low reliability). Benchmark each gig mainly against **its own trailing 90 days** and against **your other gigs in the same category**.

| Metric | Reported range / threshold | Source | Reliability | Notes |
|---|---|---|---|---|
| Level thresholds (all six metrics) | see §4 | S2, S37 + consensus | **High** (official) | Most stable numbers in this file |
| Response rate for levels | 80% / 90% | S7, S2 | **High** | 90-day window |
| Elite rating (competitive category) | cohort mean 4.9; top 50 all ≥4.8 | S58 (50 SEO sellers, 306,056 reviews, August 2026) | **Medium** (one category, survivor bias) | A "good" rating in practice is ≥4.9 |
| Elite response time | 9 of the top 10 show "1 hr" | S58 | **Medium** | Visible to buyers; conversion factor |
| CTR "low" | < 1.5% | S76 (coded threshold in a GitHub gig analyser) | **Low** (unsourced) | Use only as a first-pass flag |
| CTR "healthy" | ≥ 3% | S76 | **Low** | Varies heavily by category and search position |
| CTR typical (seller-reported) | about 1–3%; >5% is strong | [BACKGROUND]: recurring figures in forum threads such as S48 (numbers not captured this session) | **Low** | Depends on whether impressions include low-position search pages |
| Conversion (orders ÷ clicks) typical | about 1–5%; >5–10% is strong | [BACKGROUND] forum reports | **Low** | Varies by price point: high-ticket gigs convert lower |
| Inquiry-to-order rate | about 10–30% for a well-positioned seller | [BACKGROUND] field reports | **Low** | Track it yourself: orders from inquiries ÷ new inquiries |
| Repeat-client share | about 10–30% typical; higher for recurring services (SEO/SMM retainers) | [BACKGROUND] | **Low** | Use the Repeat Business tab (S23) |
| "Low impressions" | < 100 per period | S76 | **Low** | Only meaningful with a stated period (7 or 30 days) |
| "5 reviews unlocks visibility" | 5 reviews | S66, S77 | **Very low**: unsourced, likely myth | No official basis |
| "Face in thumbnail lifts CTR 25–40%" | +25–40% | S66, S77 | **Very low**: unsourced | Treat as a test hypothesis |
| Platform: annual spend per active buyer | ≈ $305 (2025) | S75 | **Very low** (gist of unclear provenance) | Verify in Fiverr's 20-F / investor results before use |

**Statistical guardrail (analyst):** a CTR measured on n impressions has a 95% margin of about ±1.96 × √(p(1−p)/n). At p = 2%:
- n = 500 → ±1.2 points
- n = 1,000 → ±0.9 points
- n = 5,000 → ±0.4 points

Conversion rates are measured on clicks, which are about 50× fewer than impressions, so they are even noisier. **Never conclude from fewer than about 100 clicks.**

---

## 6. Diagnostic decision tree

Work through the funnel **top-down**, per gig, over a 30-day window compared with the previous 30 days (and year-over-year where seasonality matters).

### Step 0: Account-level health check (do this first)
- Is any gig **paused, denied or "requires modification"**? Is the account under warning or restriction? Is it in a level grace period? (Check the Level overview tracker, S2.)
- Has the **Success Score** dropped, overall or on a key gig (S1)? A falling score can explain falling impressions across *all* gigs at once, because Fiverr says it shapes visibility (S31).
- Did Fiverr change the **category taxonomy or search UI** recently? Check Fiverr Community announcements.
- **Test:** if impressions fell on *all* gigs in *different* categories at the same time, suspect an account-level cause (score, level, restriction) or a platform change, not individual gig SEO.

### Symptom A: Low or falling impressions (a relevance or ranking problem)
Likely causes:
1. **Keyword mismatch.** The title, tags and description don't match what buyers type. Or the gig is in the wrong subcategory.
2. **Falling demand or seasonality.** Official advice is to "revisit demand and keyword strategy" (S6).
3. **Weak performance signals.** A low per-gig Success Score (cancellations, lateness, conflicts); low CTR or conversion over time (believed to feed ranking) [CONSENSUS, weights unknown].
4. **Competition.** New, cheaper or better-rated gigs have crowded the first pages.
5. **The gig is new or recently edited.** Sellers widely report ranking fluctuations after major edits [ANECDOTAL].

Tests:
- Search your main keywords logged out or in an incognito window, from a US location if possible. Note your position.
- Compare impressions across gigs.
- Check whether the per-gig Success Score fell.
- Compare with the same period last year.

Fixes:
- Rebuild the keyword set around specific buyer phrases, for example "facebook ads campaign setup" rather than "digital marketing".
- Match the subcategory exactly.
- Fix the delivery and cancellation problems that feed the score.
- Consider Fiverr Ads to buy impressions while organic signals recover. Measure with the organic vs ads funnel (S5).

### Symptom B: Good impressions, low CTR (a gig card problem: thumbnail, title, price, rating)
The gig card shows the thumbnail, title, price "from $X", rating and review count, and the level badge [BACKGROUND].

Likely causes:
1. The **thumbnail** is not readable at small size, or looks like everyone else's.
2. The **title** doesn't state the outcome or deliverable.
3. The **starting price** is out of line with neighbouring gigs, either too high for the audience or suspiciously low.
4. **Rating or review count** is weaker than competitors (4.7 next to 4.9–5.0; 3 reviews next to 300).
5. **Impressions come from poorly matching queries**, so the clicks don't come.

Tests:
- Screenshot the search results page where you appear and compare cards side by side.
- Change **one** element at a time: thumbnail first, then title, then starting price.
- Hold each version for at least 1,000–2,000 impressions or 2–4 weeks.

Fixes:
- A high-contrast thumbnail with 3–5 words of benefit text and a clear subject.
- The title leads with the main keyword and a concrete deliverable.
- The Basic package priced as a "foot in the door".
- Build reviews via the unique-client entry package.

### Symptom C: Good CTR, low conversion (a gig page, reviews, pricing or trust problem)
Official advice: "strengthen your Gig page and build trust" (S6).

Likely causes:
1. Unclear package scope. Buyers can't tell what they get.
2. The price jumps between packages with no clear logic.
3. Few or weak reviews; negative reviews near the top; no seller replies to criticism.
4. No proof: portfolio, case results, video.
5. Slow response time shown on the page.
6. The FAQ doesn't answer the obvious objections (turnaround, revisions, what you need from the buyer).
7. **Buyers message but don't order.** This is an inquiry-to-order problem (Symptom D), not a gig-page problem.

Tests:
- Look at conversion per package if visible.
- Read the gig page on mobile.
- Ask 3 people outside the agency to explain what they'd get for the Basic price.
- Count inquiries vs direct orders.

Fixes:
- Rewrite packages as outcome-based tiers.
- Add 3–6 portfolio images or case results (anonymised).
- Add a 30–60 second video.
- Answer the top objections in the FAQ.
- Improve response time.
- Publicly reply to critical reviews professionally.

### Symptom D: Lots of inquiries, few orders (a sales process problem)
Causes: slow first reply; no custom offer sent; custom offer too vague or too expensive; asking too many questions before giving a price; buyers who were never qualified.

Test: track the inquiry-to-order rate weekly, and time-to-first-reply vs orders won.

Fixes:
- Reply within 1 hour in working hours.
- Send a specific custom offer in the first or second message.
- Use milestones for large scopes.
- Offer a small paid audit as a low-risk first step.

### Symptom E: Orders are fine but the Success Score or rating is falling (a delivery experience problem)
Causes, mapped to the six areas (S1):
- late deliveries, including late revisions (S25);
- seller-initiated cancellations;
- Resolution Center conflicts;
- poor communication during the order;
- a perceived value gap. This is common after a price increase, because the score is relative to your price range;
- private dissatisfaction behind polite 5-star reviews.

Test:
- Find which gig's score dropped. Because of order-weighting, it is usually the busiest gig.
- List the last 30–60 days of orders on that gig: late? revised 2+ times? cancelled? disputed? short generic review? Look for the pattern.

Fixes: see the recovery playbooks in §9.

### Symptom F: Low repeat business (a delivery experience and after-sales problem)
Causes:
- one-off service design;
- no follow-up;
- the client was unhappy but polite (a private-feedback risk);
- no recurring offer.

Fixes:
- Create monthly or recurring packages.
- Send a post-delivery follow-up with next-step recommendations.
- Save client preferences.
- Measure the repeat share in the Repeat Business tab (S23).

### Symptom G: Response rate slipping
Cause: first replies to new inquiries more than 24 hours late, including spam and off-topic messages.

Fixes:
- Set up mobile notifications.
- Do a twice-daily inbox sweep, and assign a named on-call person per shift.
- Use quick responses (S19).
- Set Availability for holidays (S20).
- Remember the 90-day recovery horizon (S7).

---

## 7. What matters for ranking vs level vs buyer trust

| Goal | Metrics that matter most | Confidence |
|---|---|---|
| **Level** | Exactly six: Success Score, rating, response rate, orders, unique clients, earnings. All must be above threshold **at the same time** | **High** [OFFICIAL] (S2, S31) |
| **Search ranking** | 1) Relevance (keywords, category). 2) Performance and quality signals: Success Score / satisfaction, conversion and CTR, delivery reliability, cancellations, responsiveness, recent order activity. Fiverr publishes **no weights** | **Medium** for "these matter", **none** for weights. Official: the Success Score shapes "visibility" (S31); a low score can reduce visibility (S2/S32); cancellations "can affect … search visibility" (S8) |
| **Buyer trust / conversion** | Visible signals: rating and review count, review content and recency, level/Pro badge, response time, portfolio/video, clear packages, orders in queue | **High** that these are visible; **Medium** that they drive conversion (the logic is sound, and elite cohorts max them out, S58) |

**Practical priority order for a new or low-level DESORA gig:**
1. Avoid cancellations and lateness (protects the Success Score).
2. First reply within 24 hours at 100% (protects the response rate), and within 1 hour where possible (visible response time).
3. Win new unique clients with an entry package.
4. Optimise CTR and conversion once there are enough impressions to measure (more than about 1,000 per month).

---

## 8. How long bad metrics "stay"

| Metric | How long a bad event lingers | Evidence |
|---|---|---|
| Response rate | Ages out after **90 days** (rolling) | [OFFICIAL] S7 |
| Success Score | "A longer time period", undisclosed. **Recent orders weigh more**, and so do higher-value orders. A bad month fades faster than a bad order from a year ago would in an unweighted average | [OFFICIAL] S1; specific numbers (for example "60 days vs 12 months") [ANECDOTAL] S32 |
| Public rating | A public review stays on the gig/profile, effectively permanently, unless Fiverr removes it for a policy violation [BACKGROUND]. Its effect on the *average* shrinks as more reviews arrive | [BACKGROUND] |
| Level demotion trigger | A 30-day grace period after a metric drops. Recover within it and nothing happens | [OFFICIAL] S2 |
| Cancellations / OCR | Feed the Success Score (same undisclosed, recency-weighted window). OCR as a standalone level metric is gone | [OFFICIAL] S1, S8, S31 |
| Orders, unique clients, earnings | Cumulative; they only go up (cancelled orders don't add) | [CONSENSUS] |
| Old "60-day window, evaluated on the 15th" | **Retired** in February 2024 | [OFFICIAL] S31; outdated-content examples S71, S77 |

---

## 9. Actionable playbooks

### 9.1 Weekly metrics review (30–45 minutes, every Monday)

**Where:** Level overview, Success Score, Analytics (Overview and Repeat Business), Manage Gigs, Fiverr Ads, Inbox.

**Log** into one Google Sheet: one row per gig per week, plus one account row.

1. **Account row:**
   - Success Score, overall and per gig: note any change of 0.5 or more.
   - Rating.
   - Response rate: flag if <95%, to keep a buffer above 90%.
   - Visible response time.
   - Orders, unique clients and earnings versus the next level's thresholds.
   - Any "grace period" notice.
2. **Per-gig funnel (last 7 and last 30 days):**
   - impressions, clicks, CTR = clicks ÷ impressions;
   - orders, CR = orders ÷ clicks;
   - cancellations, ASP.
   - Colour-code against the gig's own trailing 90-day average, not against internet benchmarks.
3. **Sales row:**
   - new inquiries;
   - custom offers sent;
   - offers accepted (inquiry-to-order rate);
   - median first-reply time.
4. **Delivery row:** active orders at risk (due within 48 hours and not on track); revisions over 2 rounds; open Resolution Center requests; late orders this week (target: 0).
5. **Reviews row:** new reviews (read every word); any non-5-star or lukewarm text gets a root-cause note; replies posted.
6. **Ads row (if used):** spend, clicks, orders, cost per order compared with the break-even CPC (§3.13), and the organic vs ads funnel (S5).
7. **One experiment decision per week:** pick at most one gig and one change, and write down the hypothesis and the measurement date.

### 9.2 Recovery: after a bad public review
1. **Don't react in the moment.** Read the review and the order history. Classify the cause: scope misunderstanding, quality, communication, lateness, or an unreasonable buyer.
2. **Reply publicly** (sellers can respond to reviews [BACKGROUND]).
   - Keep it short, factual and courteous.
   - Acknowledge, and state what you do to prevent this in future.
   - Never argue, reveal private details or blame.
   - The audience is *future buyers*.
3. **Fix the root cause in the gig:** clarify package scope, add an FAQ entry, adjust delivery times.
4. **Don't** offer money, refunds or extras in exchange for changing or removing a review. Don't pressure the buyer. Review manipulation and feedback extortion are Community Standards violations [BACKGROUND].
   - Contact Customer Support only if the review itself breaks the rules: abusive language, personal data, extortion, a review of a different order.
5. **Rebuild the average with volume.** Push the entry package to generate new orders. The public average recovers mathematically (see §3.2). The Success Score's recency weighting helps the damage fade (S1).
6. **Check the private side.** One bad public review often comes with several quiet private ones. Audit the last 10 orders on that gig for the same pattern.

### 9.3 Recovery: after a cancellation
1. **Prevent the next one first.** Add a requirements checklist and an "is this a fit?" pre-order step (custom offers only for complex agency work).
2. **Understand which cancellations count** (S8):
   - Buyer cancels before submitting requirements: doesn't count.
   - Seller-requested cancellation: counts.
   - Force-cancel of a very late order: counts.
   - Milestones: once one milestone is done, cancelled later milestones don't count.
3. **Use milestones for large projects** (S22). Deliver phase 1 fast, so any later cancellation doesn't hit statistics.
4. **Be honest.** If the project can't be completed, discuss it with the buyer in the Resolution Center (S21). Don't coerce the buyer to cancel "from their side". Don't deliver empty work to force completion.
5. **Dilute and wait.** The Success Score is recency-weighted. Deliver the next 10–20 orders on the same gig perfectly: on time, no disputes, clear communication.

### 9.4 Recovery: after (or before) a late delivery
1. **Before the deadline:** if you'll miss it, request an **extension through the Resolution Center before the due time** and explain honestly. [BACKGROUND] An accepted extension moves the due date.
2. **Never** send a placeholder delivery to stop the clock. It invites cancellations, private dissatisfaction and ToS enforcement [BACKGROUND].
3. **If already late:** message immediately with a concrete ETA and a goodwill gesture that doesn't involve reviews (for example an extra deliverable). Deliver as fast as possible. Very late orders can be force-cancelled by the buyer, and that counts against you (S8).
4. **Systemic fix:**
   - Set package delivery times at about 1.5× your real production time.
   - Keep a buffer for revisions: late revisions hurt On-Time Delivery (S25).
   - Cap the number of concurrent active orders per team member.

### 9.5 Recovery: dropping Success Score
1. **Locate it.** Which gig moved? Because of order-count weighting (S1), start with your busiest gig.
2. **Audit the last 60–90 days** of that gig's orders against the six areas: lateness, cancellations, Resolution Center use, communication gaps, value complaints, lukewarm or short reviews.
3. **Check your price band.** Did you raise or lower prices recently? The comparison group is "freelancers in your price range" (S1). After a price increase, raise the visible value too: bonus deliverables, reporting, a walkthrough.
4. **Tighten revisions.** Define what a revision is, cap the rounds, and time revision deliveries (S25).
5. **Pre-delivery satisfaction check** in chat (§3.3). Resolve issues before delivery, not after the review.
6. **Level protection.** If the score falls below your level's threshold, you have **30 days** (S2). Prioritise the next orders on the affected gig, over-deliver, and avoid risky or ambiguous orders during that window.
7. **Don't** delete and re-create gigs, or open duplicate accounts, to "reset" the score. Duplicate accounts break the ToS. Whether deleting a gig removes its history from the account score is **unverified** (§12), and deleting loses reviews.

### 9.6 Recovery: impressions crash
1. Run the Step 0 account health check (§6).
2. Compare with the same weeks last year (seasonality) and with other gigs.
3. Re-audit keywords against current buyer search phrases. Check the category taxonomy hasn't changed.
4. Check whether the per-gig Success Score dropped (a visibility link, S31).
5. Short term: use Fiverr Ads with a strict CPC ceiling (§3.13). Medium term: fix the underlying signals.

### 9.7 DESORA-specific operating rules (analyst recommendations)
- **Response SLA:** first reply within 1 hour from 09:00 to 23:00 Morocco time. Night inquiries answered by 09:30. That gives 100% within 24 hours and a good visible response time.
- **Unique-client engine:** keep one low-ticket, fast "audit" gig per service line, so unique clients keep growing (Level 2 needs 10; Top Rated needs 20).
- **Delivery buffer:** delivery time on gig = production time × 1.5, with revisions included in the plan.
- **Milestones** for any order over about $500 or longer than 2 weeks.
- **Value visible at every delivery:** a short Loom video, a before/after comparison, a summary of results. This protects the "value" and "satisfaction" areas.

---

## 10. Risks to avoid (Terms of Service and account-safety)

| Practice | Why it's risky | Evidence |
|---|---|---|
| "Keep me online" / auto-refresh extensions, stealth refresh bots | Automation; no official ranking benefit; account-flag risk | S59 (extension openly advertises "stealth refresh, online status keeper"); S77 on automation patterns [ANECDOTAL]; ToS prohibits bots [BACKGROUND] |
| Identical templated messages at volume, always-instant replies | Reported to look automated | S77 [ANECDOTAL]. Use varied quick-response templates written by a person |
| Asking for 5 stars, or incentivising or trading reviews (refunds or extras for review changes) | Review manipulation, feedback extortion | [BACKGROUND] Community Standards |
| Placeholder or empty deliveries to avoid lateness | Misrepresentation; cancellations; enforcement | [BACKGROUND] |
| Pressuring buyers to cancel "from their side" | Manipulating statistics | Inference from S8 rules |
| Self-orders, friend orders, buying reviews | Fraud, and it breaks the unique-client/earnings integrity | [BACKGROUND] |
| Taking buyers off-platform (contact details, outside payment) | Among the most common ToS violations; account loss | [BACKGROUND] |
| Scraping Fiverr at scale with third-party tools (S60, S62, S76) | May breach the ToS; bot detection | S60 itself warns against mass harvesting |
| Duplicate accounts to reset metrics | Prohibited | [BACKGROUND] |

---

## 11. Myths vs reality

| Myth | Reality | Tag / sources |
|---|---|---|
| "Levels are evaluated monthly on the 15th with a 60-day window" | Since February 2024: daily evaluation, promotion by the next day, 30-day grace period before demotion | [OFFICIAL] S2, S31. The myth persists in S71, S77 |
| "Level 1 = 60 days + 10 orders + 4.7 rating; Level 2 = 50 orders" | Level 1 = SS 5, 4.4, 80%, 5 orders, 3 unique clients, $400. Level 2 = SS 7, 4.6, 90%, 20 orders, 10 unique clients, $2,000 | [OFFICIAL/CONSENSUS] S2, S33, S34 |
| "Top Rated = 100 orders + $20,000" | Current (June 2025): 40 orders, 20 unique clients, $10,000, SS 9, 90%, 4.7, plus a manual review | [OFFICIAL] S37 |
| "OCR and on-time rate must stay above 90% to keep your level" | Removed as level criteria in 2024. Both still feed the Success Score | [OFFICIAL] S31, S1 |
| "Success Score = your star rating" | It is a composite of six areas and includes **private** feedback. You can have 4.9 stars and a low score | [OFFICIAL] S1, S12; [ANECDOTAL] S30 |
| "Success Score is an absolute quality grade" | It is **relative to freelancers in your price range** | [OFFICIAL] S1, S31 |
| "Buyers see my Success Score / response rate" | Buyers see level and response time only | [OFFICIAL] S1, S7 |
| "Response rate counts every message" | Only the first reply to a new inquiry, within 24 hours, over 90 days | [OFFICIAL] S7 |
| "Any mutual cancellation is harmless" | Cancellations you request count. So do force-cancels of very late orders. Buyer cancellations before requirements don't | [OFFICIAL] S8 |
| "Conversion rate = orders ÷ impressions" | Fiverr frames conversion as ordering after viewing the gig page (orders ÷ clicks) | [OFFICIAL] S6; [DISPUTED] in the wild |
| "Stay online 24/7 (use an extension) to rank" | No official evidence. Automation risk | S59, S77; [BACKGROUND] |
| "5 reviews unlocks the algorithm" | Unsourced claim in tool READMEs; no official basis | S66, S77 (very low reliability) |
| "Thumbnail + title = 80% of gig success" / "a face lifts CTR 25–40%" | Unsourced. CTR matters, but these numbers are invented or anecdotal. Test them | S77, S66 |
| "Repeat orders from one big client will get me to Level 2" | Unique clients are required (10 for Level 2, 20 for Top Rated) | [OFFICIAL/CONSENSUS] S2, S15, S37 |
| "Meeting the numbers makes me Top Rated automatically" | A holistic manual review; 45–90-day wait; high-demand subcategories only; possible skills tests | [OFFICIAL] S37 |
| "A new 5-star review always raises my Success Score" | Not necessarily. Private feedback, value perception, price-band comparison and recency weighting can outweigh it | [OFFICIAL mechanism] S1; [ANECDOTAL] S30, S44 |

---

## 12. Free tools and resources found

| Name | URL | Purpose | Free? | Notes |
|---|---|---|---|---|
| Fiverr Level overview (progress tracker) | seller dashboard | Shows each level requirement and your status | Yes | [OFFICIAL] S2 |
| Success Score page (per gig + overall) | seller dashboard | Main quality diagnostic | Yes | [OFFICIAL] S1 |
| Analytics: Overview + Repeat Business tabs | seller dashboard | Earnings, orders, repeat clients | Yes | [OFFICIAL] S5, S23 |
| Manage Gigs statistics | seller dashboard | Per-gig impressions, clicks, orders, cancellations | Yes | S49, S62 |
| Seller Plus Advanced Analytics | seller dashboard | Organic vs Ads funnel and deeper analytics | **Paid** subscription | [OFFICIAL] S5 |
| Personal Success Manager | Seller Plus | Account coaching | **Paid** | S81 |
| Fiverr Ads dashboard | seller dashboard | Paid promotion metrics | Free to open; ads cost money | S24 |
| Quick responses & auto-replies | inbox | Protects response rate and time | Yes | S19 |
| Availability setting | profile | Planned time off | Yes | S20 |
| Resolution Center | order page | Extensions, cancellations, disputes | Yes | S21 |
| Fiverr Help Center: Analytics & levels section | https://help.fiverr.com/hc/en-us/sections/37327150025361-Analytics-levels | Official definitions | Yes | Primary source to re-verify [BACKGROUND] items |
| Fiverr Community staff blogs | https://community.fiverr.com/public/blogs/ | e.g. impressions/clicks/conversions (2025-07-18), Top Rated (2025-06-23), revisions and Success Score (2026-04-09) | Yes | S6, S37, S25 |
| Google Sheets weekly tracker | (build from §9.1) | Funnel and SLA tracking | Yes | Recommended |
| fiverr-gig-intel-crawler | https://github.com/ABDULLAHAZHERCH/fiverr-gig-intel-crawler | Chrome extension; reads your manage_gigs stats; computes CTR, flags <1.5% | Free, open source | T4; **ToS caution**: automated scraping |
| fiverr-mcp-server | https://github.com/KyuRish/fiverr-mcp-server | Pulls public gig/review data for competitor research | Free, open source | **ToS caution**; the author warns against mass harvesting |
| SellerCalc | https://github.com/sonydesu/SellerCalc | Fiverr fee / earnings calculator | Free | README not retrievable; untested |
| fiverr-pro-tools | https://github.com/NadirAliOfficial/fiverr-pro-tools | "Online status keeper / stealth refresh" | Free | **Do not use**: automation risk (listed so the advisor can warn against it) |

---

## 13. Open questions (could not be verified this session)

1. **Exact names and weights of the six Success Score areas,** and the length of the Success Score window. The official snippet only says "a longer time period".
2. **Numeric threshold for "low performance"** (the Success Score level that triggers a visibility penalty).
3. **Rating window for level evaluation:** lifetime average or a rolling window?
4. **Whether Top Rated still requires time at Level 2** (for example 180 days). Official 2025 copy doesn't mention it; several 2026 blogs do.
5. **Whether the level earnings threshold is gross or net** of Fiverr's 20% fee.
6. **Response-rate edge cases:**
   - Do auto-replies count as a first response?
   - Are messages reported as spam excluded?
   - Does setting Availability pause the count?
   - What window is used for the public "average response time"?
7. **Buyer-initiated mutual cancellation after requirements are submitted:** does it count against the seller?
8. **Review mechanics:** how many days a buyer has to leave a review; whether a review is removed when a completed order is later cancelled or refunded; the exact current rating sub-categories after the 2024 revamp.
9. **Repeat business score formula** (S3): share of revenue or of clients? Compared with whom? Over what window?
10. **Fiverr Ads eligibility and metric definitions** in 2026 (CPC model, attribution window for "orders from ads").
11. **Seller Plus features by tier** in 2026 (benchmarks vs competitors, search-term data, profile-visitor analytics) and current pricing.
12. **Whether deleting or pausing a gig removes its orders from the account-level Success Score,** and how pausing affects ranking on reactivation.
13. **Any official CTR or conversion benchmarks.** None found. Fiverr appears not to publish them.
14. **Platform metrics** (active buyers, spend per buyer, take rate) should be taken from Fiverr's investor releases and 20-F, not from S75.

**Next-step recommendation for the knowledge base owner:** when network access allows, re-fetch these Help Center articles in full and upgrade or correct every [BACKGROUND] and [DISPUTED] item:
- S1 (Success score)
- S2 (Freelancer levels)
- S3 (Repeat business score)
- S7 (Response time and rate)
- S8 (How cancellations work for freelancers)
- S10 (Reviews)
- S23/S5 (Analytics)
- S24 (Fiverr Ads)
