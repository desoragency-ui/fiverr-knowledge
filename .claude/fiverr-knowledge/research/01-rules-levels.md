# Cluster 01: Fiverr official rules, seller levels and account health

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - PayPal: this file says Moroccan PayPal can't receive. PayPal now lists Morocco for receiving via a licensed local partner; whether Fiverr offers PayPal withdrawal to Moroccan sellers is unverified (master §3 #7).
> - Seller Plus prices here are outdated. Current reported prices: Kickstart ~$15, Standard ~$25, Premium ~$49 (master §2.4).
> - Buyer fee: current Help Center snippet says 5.5% + $3.50 under $200 (master §2.1).

Knowledge base for the DESORA Fiverr advisor subagent. Compiled 2026-09-26.

---

## 0. Read this first: how this document was built and what its tags mean

**Research conditions (be aware before trusting any number):**
- The sandbox's network egress policy **blocked WebFetch on every useful domain**: help.fiverr.com, www.fiverr.com, pro.fiverr.com, community.fiverr.com, investors.fiverr.com, blog.fiverr.com (not attempted after the others failed), medium.com, forbes.com, wikipedia.org, payoneer.com, and every third-party Fiverr blog I tried. Reddit refused fetches. Only github.com could be fetched.
- The **shared WebSearch budget for the session (200 calls across all 12 agents) ran out** after this agent's 19th query. The tool refused further searches.
- As a result, almost every source below is a **search snippet**: text that the search engine extracted from the page. No article was read end to end. Snippets from help.fiverr.com are still first-party text, but they are fragments.
- To keep the document useful, I added facts from the model's prior knowledge (training data up to about early 2026). Each one is tagged **[BACKGROUND]** and must be checked against the live Help Center or the seller dashboard before anyone treats it as a rule.

**Tags used:**
| Tag | Meaning |
|---|---|
| [OFFICIAL] | Stated in a Fiverr-owned source (help.fiverr.com, Fiverr blog, Fiverr community blog, pro.fiverr.com). Here that almost always means a snippet of it. |
| [CONSENSUS] | Three or more independent non-official sources agree |
| [ANECDOTAL] | A single field report or a few of them, or my own reasoning from how the marketplace works |
| [DISPUTED] | Sources conflict. Both claims are given, followed by a verdict. |
| [BACKGROUND] | Model prior knowledge, not re-verified in this session. Treat as a lead, not a fact. |
| [OUTDATED] | Was true under an earlier system but has been replaced |

Source IDs such as (S01) refer to `01-sources.tsv`.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Levels are now based on six metrics, not on the pre-2023 checklist.** The six are Success Score, rating, response rate, completed orders, unique clients and earnings [OFFICIAL] (S01, S02). Order completion rate and on-time delivery were removed as direct level criteria and now feed the Success Score [CONSENSUS] (S06, S09, S10, S11).
2. **Current thresholds** [OFFICIAL snippet + CONSENSUS] (S04, S08, S11, S06, S09, S45):
   - **Level 1:** Success Score 5+, rating 4.4+, response rate 80%+, 5+ orders, 3+ unique clients, $400+ earnings.
   - **Level 2:** Success Score 7+, rating 4.6+, response rate 90%+, 20+ orders, 10+ unique clients, $2,000+ earnings.
   - **Top Rated:** Success Score 9+, rating 4.7+, response rate 90%+, 40+ orders, 20+ unique clients, $10,000+ earnings, **plus a manual review**.
3. **Promotions are not monthly any more.** Once you meet all six metrics for Level 1 or Level 2, you can move up **by the next day** [OFFICIAL] (S01). The old evaluation on the 15th of each month (in place since 2018-01-15) is [OUTDATED] (S12).
4. **Demotion has a 30-day grace period.** If any metric falls below your level's requirement, you get 30 days to recover. If you don't, Level 1 and Level 2 sellers move to whatever level their metrics support. Top Rated sellers go to a manual review by the evaluation team instead of being demoted automatically [OFFICIAL] (S01, S04).
5. **Top Rated is hand-approved.** A seller who is rejected can be re-evaluated after **180 days** if they still meet the criteria [OFFICIAL] (S04). Meeting the numbers is necessary but not sufficient.
6. **The Success Score (1 to 10) is computed per gig first.** The overall score is a weighted blend of the gig scores, not a simple average: popular gigs weigh more, and higher-value and more recent orders weigh more [OFFICIAL] (S02). It moves slowly because it analyses patterns over time rather than single events [OFFICIAL] (S02).
7. **The Success Score is driven heavily by private feedback you never see.** Clients can leave an anonymous private rating starting 24 hours after completion and for up to 60 days after it [OFFICIAL] (S15, S16). A gig can carry a 4.9 public rating and still have a Success Score of 6 [CONSENSUS] (S26, S25, S10; consistent with S03 and S22).
8. **The six Success Score areas, as best reconstructed:** Client satisfaction, Effective communication, Conflict-free orders, Order cancellations, Delivered on time (on-time delivery), and Value for money.
   - Four areas are confirmed in official snippets: client satisfaction, cancellations, on-time delivery and communication (S02).
   - "Conflict-free orders" and "Value for money" come from official community blog snippets and forum threads (S21, S22, S41).
   - Overall tag [OFFICIAL partial + CONSENSUS].
9. **The score is relative.** It is benchmarked against other freelancers, not measured on an absolute scale [OFFICIAL snippet] (S02 via search summary). You can therefore lose points without doing anything worse, if your category peers improve [ANECDOTAL, reasoned].
10. **Cancellations count differently depending on who starts them and when:**
    - No impact on the order completion rate (OCR): a client cancels **before submitting requirements**.
    - Hurts the OCR: **you** submit the cancellation request, or a client force-cancels a **very late** order.
    - Seller-initiated cancellations in high numbers hurt the Success Score [OFFICIAL] (S17, S02).
11. **Unresponsive clients do not lower your Success Score.** The recommended route is a **mutual cancellation** through the Resolution Center [OFFICIAL] (S02, S17).
12. **Deadlines and consent in cancellations** [OFFICIAL] (S18):
    - When a client requests a cancellation, you have 48 hours to accept or decline. If you don't respond, the order is **cancelled automatically**.
    - If you haven't delivered and no extension was agreed, the client can cancel without your approval 24 hours after the expected delivery date.
13. **Revisions, delivery extensions and partial refunds are not penalised in themselves.** They are judged by their effect on client satisfaction [OFFICIAL] (S03, S22). However, many small, scattered revision requests can hurt the "Conflict-free" metric (Fiverr community blog, 2026-04-09) (S22). Fix scope and revision limits in the packages.
14. **Response rate** means replying to new messages within 24 hours, measured over the last 90 days [OFFICIAL] (S01). Rating is the average over a long window (the snippet says two years; verify) [OFFICIAL snippet] (S01).
15. **Unique clients is a hard gate.** Five orders from one repeat client do **not** qualify you for Level 1 [OFFICIAL metric definition + CONSENSUS] (S01, S08, S11). For an agency that relies on a few retainer clients, this is the binding constraint.
16. **Most blog numbers are stale.** Figures like "$20,000 / 100 orders / 180 days for Top Rated", "90% order completion rate" and "no warnings in 30 days" come from the pre-October-2023 system [CONSENSUS on the outdatedness] (S11 explicitly, S14, S43). Always check the dashboard's level-progress panel.
17. **Days-active requirement: [DISPUTED].** The official six-metric list has no days requirement (S01, S11). Several 2026 blogs still claim 60 days for Level 1 and 120 days for Level 2 (S08, S13, S45). Verdict in section 2.4.
18. **Off-platform contact or payment is the fastest way to lose the account.** Fiverr's automated message scanning flags contact details and payment words. Repeated violations escalate from warnings to restriction to permanent ban [BACKGROUND; consistent with S31 "Policy Violations Explained" existing as a 2025-26 article].
19. **Seller fees** [BACKGROUND, long-standing]:
    - Fiverr keeps **20% of every transaction**, including tips and extras. The seller nets 80%.
    - Buyers pay a separate service fee: about 5.5%, plus a small-order fee under a threshold. Verify the current figure.
20. **Clearance periods** [BACKGROUND]: completed-order revenue usually clears after **14 days**, or **7 days for Top Rated and Pro**. Security holds can extend this.
21. **Morocco payouts** [BACKGROUND, high confidence]: PayPal accounts in Morocco cannot **receive** funds, so the practical payout route is **Payoneer**, then a Moroccan bank in MAD. Plan cash flow around the 14-day clearance plus 1–3 days for payout.
22. **Fiverr's AI direction** [BACKGROUND]:
    - Fiverr Go (February 2025) gives freelancers a personal AI "creation model" trained on their own work, which clients can use to generate output on demand, plus an AI assistant. The freelancer controls the offer and pricing.
    - In September 2025 Fiverr cut about 30% of its staff to become "AI-first".
    - Expect more automated matching (Briefs and dynamic matching) and more automated enforcement.

---

## 2. Seller levels in detail

### 2.1 Timeline of the level system
| Period | System | Key facts | Tag |
|---|---|---|---|
| 2018-01-15 to ~Oct 2023 | Legacy level system | Evaluated monthly on the 15th. Criteria included order completion rate (60-day window, stay above 90%), on-time delivery, rating, response rate, days active, orders, earnings, and no warnings in 30 days. Existing sellers were not demoted for earnings alone. Seniority counted from the first published gig. | [OFFICIAL] (S12), [OUTDATED] |
| Legacy thresholds | — | Level 1: 60 days, 10 orders, $400. Level 2: 120 days, 50 orders, $2,000. Top Rated: 180 days, 100 orders, $20,000, manual review. All levels: 4.7 rating, 90% response, 90% completion, 90% on-time. | [BACKGROUND], matches outdated blogs (S14, S43), [OUTDATED] |
| Oct 2023 to early 2024 (rollout) | "New pathways for success" level system | Six metrics including the new Success Score and unique clients. Evaluated daily, with a 30-day grace period. Strong backlash from sellers at launch. | [OFFICIAL] (S01, S05), [ANECDOTAL] sentiment (S27, S28) |
| 2024 to 2026 | Same framework with refinements | Official community blog posts on the Success Score components (May–June 2025, April 2026). New Help Center articles on cancellations and policy violations (IDs 477xxxxx / 479xxxxx, i.e. 2025–26). | [OFFICIAL] (S03, S17, S21, S22, S31) |

### 2.2 The six level metrics: official definitions
From the snippets of the Help Center "Understanding Fiverr's freelancer levels" article (S01):
- **Success Score:** the overall score, determined by the individual scores of each gig. Section 3 covers it.
- **Rating:** the average of all ratings from clients you have worked with, over a long lookback. The snippet says the past two years; confirm on the dashboard.
- **Response rate:** how often you replied to new messages within 24 hours, over the last 90 days.
- **Orders:** the total number of completed orders.
- **Unique clients:** the number of different clients. Each client counts once, however many orders they place.
- **Earnings:** your total earnings on Fiverr. The snippet does not say whether this is gross (order value) or net (after the 20% fee). Plan on the conservative net interpretation.

### 2.3 Threshold table (current system)
| Metric | Level 1 | Level 2 | Top Rated |
|---|---|---|---|
| Success Score | 5+ | 7+ | 9+ |
| Rating | 4.4+ | 4.6+ | 4.7+ |
| Response rate (24h, 90 days) | 80%+ | 90%+ | 90%+ |
| Completed orders | 5+ | 20+ | 40+ |
| Unique clients | 3+ | 10+ | 20+ |
| Earnings | $400+ | $2,000+ | $10,000+ |
| Extra | — | — | Manual review by the evaluation team |
| Promotion timing | Next day once all met | Next day once all met | After review |

Sources: S04 (official snippet: Top Rated needs a Success Score of 9, a 4.7 rating, 90% response, 40 orders, 20 unique clients, $10,000 and manual evaluation), S11 (the full table, claimed to come from Fiverr's level table), S08, S06, S09, S45. Tag: **[OFFICIAL snippet + CONSENSUS]**.

**Note on the Top Rated Success Score:** at least one early 2024 source and my prior memory suggested 8. Every 2026 source and the official snippet say 9. Verdict: **9**.

**Warnings:** some sources state that Level 1 needs "zero active Terms of Service warnings" (S08). This is not among the six official metrics, but an active warning very plausibly blocks promotion or affects the Top Rated review [ANECDOTAL]. Treat any warning as a level risk.

### 2.4 [DISPUTED] Is there still a days-active requirement?
- **Claim A:** no days requirement. The official six-metric list names only Success Score, rating, response rate, orders, unique clients and earnings, and says promotion happens "by the next day" (S01). S11 reproduces a table with no days column.
- **Claim B:** Level 1 still needs 60 active days and Level 2 needs 120 days (S08, S13), with 180 days for Top Rated (S45, an unsourced T4 file).
- **Verdict:** trust the official six-metric definition. The days figures look carried over from the legacy system.
- **In practice:** for a brand-new account, reaching 5 orders, 3 clients, $400 and a computed Success Score takes weeks anyway, because the Success Score needs completed orders and private ratings accrue over up to 60 days. The practical floor is therefore about 30–60 days regardless of which claim is right.
- **Action:** check the level-progress widget on the dashboard. It lists exactly what Fiverr measures.

### 2.5 Grace periods and demotion
- **Level 1 and Level 2:** a 30-day grace period starts when any metric drops below the requirement. If the metrics haven't recovered at the end of it, the seller moves to the level that matches the current metrics [OFFICIAL] (S01).
- **Top Rated:** the same 30-day grace period applies. If the seller doesn't recover, the evaluation team reviews the account and decides whether they stay Top Rated [OFFICIAL] (S04).
- **Warning banner:** sellers report a "level downgrade warning" banner when the grace period starts (S39) [ANECDOTAL]. Treat it as an emergency.
- **What to do during a grace period:**
  - Don't let the response rate slip. Answer every new inquiry within 24 hours, even with a short holding reply.
  - Avoid seller-initiated cancellations.
  - Deliver early.
  - Don't raise prices sharply, because the value-for-money perception drops.

### 2.6 Level benefits
Official snippets did not return the benefits table, so these entries are [BACKGROUND] and need verification:
- **Active gig limits** (legacy numbers, probably similar today): New Seller about 7, Level 1 about 10, Level 2 about 20, Top Rated about 30.
- **Clearance:** 14 days for New, Level 1 and Level 2. 7 days for Top Rated and Pro.
- **Support and extras:** higher levels get priority support, more gig extras, larger custom-offer limits, and earlier access to features and programmes (Promoted Gigs, Fiverr Go pilots and similar).
- **Search:** levels are **not** a declared search-ranking factor. Fiverr's search article (S34, title only) describes relevance plus quality and performance signals. Because levels are built from the same signals (Success Score, rating, response), level and visibility tend to move together [ANECDOTAL, reasoned].
- **Trust:** the level badge acts as a buyer trust signal. Many buyers filter by "Seller level" in search filters [BACKGROUND].

---

## 3. The Success Score: mechanism and levers

### 3.1 What it is [OFFICIAL] (S02)
- It evaluates each gig in **six key areas** related to the order process and your relationship with clients.
- Each area combines **quantitative** data points (statistics and scores) and **qualitative** ones (feedback and reviews).
- It is shown on a scale of 1 to 10, per gig and overall.
- **Overall score weighting:**
  - Gigs with more orders weigh more.
  - Higher-value orders and more recent orders weigh more.
  - Recent data weighs more than old data.
- It is deliberately stable. It reflects patterns, not single events.
- It is assessed **relative to other freelancers**.

### 3.2 The six areas and how to move each one
| Area | What Fiverr says it measures | Main levers | Source / tag |
|---|---|---|---|
| **Client satisfaction** | Reviews and other statistics that reflect client happiness with the overall order experience, including private ratings | Clear gig scope, visible progress, over-deliver on small things, fix problems before delivery | S02 [OFFICIAL], S03 |
| **Effective communication** | Responsiveness, helpfulness, and the ability to set clear expectations | Reply within hours, confirm the requirements summary, send milestone updates | S02 [OFFICIAL] |
| **Conflict-free orders** | "Pleasant transactions"; looks for any sign the buyer had a negative experience or was dissatisfied with the delivery | Align before starting, decline bad-fit orders early, honour the scope, handle revisions professionally, use the Resolution Center tools constructively | S21 [OFFICIAL community blog 2025-05-28] |
| **Order cancellations** | How cancellations affect the overall order process; seller-initiated ones weigh most | Don't accept orders you can't fulfil; use requirements to pre-qualify; cancel before the client submits requirements where possible | S02, S17 [OFFICIAL] |
| **Delivered on time** | How often you deliver on time or early, factoring in how often you are late | Pad delivery days; ask for extensions **before** the deadline via the Resolution Center | S02 [OFFICIAL] |
| **Value for money** | Whether the client feels they paid a fair price for the delivery | Transparent package tiers, no surprise upsells mid-order, deliver slightly more than the package promised | S21 search summary [OFFICIAL-adjacent], [CONSENSUS] via forum titles |

**About the dashboard labels:** the dashboard labels each area qualitatively (for example as something like "great" or "needs improvement"). Sellers say the labels update slowly and sometimes look inconsistent with 5-star public reviews (S42, S41, S27) [ANECDOTAL].

### 3.3 Key mechanics and implications
1. **Private reviews** [OFFICIAL] (S15, S16):
   - The private rating is anonymous and used for internal quality measurement.
   - The client can submit it from **24 hours after completion** for up to **60 days**.
   - Implication: the score for an order can change up to two months after you were paid. The last touchpoint matters, so check in after delivery.
2. **Public rating versus Success Score:** a 4.9 public rating can sit alongside a Success Score of 6 (S26, S25) [CONSENSUS]. Clients are often polite in public and honest in private. Never assume that 5 stars means a happy client.
3. **Unresponsive clients don't hurt you** [OFFICIAL] (S02). Use a mutual cancellation (S17).
4. **Revisions, extensions and partial refunds are neutral tools** in themselves. They are judged by their effect on satisfaction [OFFICIAL] (S03, S22).
   - A partial refund that turns an angry client into a satisfied one can protect the score.
   - "Small, scattered revision requests" can hurt the Conflict-free area (S22). Batch the feedback: ask clients to send all their changes in one list.
5. **Order requirements shape the score.** Fiverr's own blog title "Small detail, big impact: how order requirements can shape your Success Score" (S23, 2025-05-28) signals that good requirement questionnaires reduce conflict and misalignment. Contents not read: this is an open item.
6. **Gig-level weighting creates a portfolio strategy** [ANECDOTAL, reasoned from S02]:
   - A bad experience on your **most popular** gig costs the most.
   - A risky experimental gig with few orders barely moves the overall score, but its own gig score may suppress that gig's visibility.
   - Deleting a gig to "reset" the score is **not** recommended. You lose reviews and history, and nothing official says the history is forgotten.
7. **Relative scoring means benchmarking matters.** In crowded categories such as logo design, social media marketing or SEO, "average" service may earn a middling score even with no complaints [ANECDOTAL, reasoned].

### 3.4 [DISPUTED] The exact list of six areas
- **Official snippets name:** client satisfaction, cancellations, on-time delivery and communication (S02).
- **The official community blog adds:** conflict-free orders, and value for money appears in the same search summary (S21, S22).
- **T4 blogs give different lists:** "order quality, revision handling, dispute resolution, delivery experience" (S25, S06, S26).
- **Verdict:** the labels on the Fiverr dashboard are Client satisfaction, Effective communication, Conflict-free orders, Order cancellations, Delivered on time and Value for money. The T4 lists are paraphrases. Revision handling and dispute resolution are **inputs** into Conflict-free orders and satisfaction, not separate areas.

---

## 4. Badges and programmes: Top Rated, Pro, Fiverr's Choice, Rising Talent, Seller Plus

### 4.1 Top Rated
- **Requirements:** section 2.3. Manual review by the evaluation team, re-evaluation 180 days after a rejection, and a 30-day grace period followed by review [OFFICIAL] (S04).
- **Benefits** [BACKGROUND]: 7-day clearance, priority or VIP support, more gigs and extras, eligibility for early programmes, and strong buyer trust.

### 4.2 Fiverr Pro (vetted) [BACKGROUND unless noted]
- Pro is an **application-based, human-vetted** programme for experienced professionals. Proof is portfolio, credentials, client list and real-world experience; it is separate from the level system.
- A Pro freelancer carries a Pro badge, can appear in the Pro and business catalogues, and usually sets higher prices.
- There is an official "Being a Pro freelancer: Guidelines and responsibilities" article, which implies Pro status carries extra obligations and can be revoked (S35 title) [OFFICIAL existence].
- For DESORA, Pro is worth applying for once the portfolio shows brand-name or measurable-result work in marketing, social or ads. A rejection has no effect on levels.

### 4.3 Fiverr's Choice [BACKGROUND + ANECDOTAL]
- An **algorithmic, query-specific** badge ("recommended for this search"). It goes to gigs with strong ratings, order volume, repeat clients and on-time delivery for that search term.
- You cannot apply for it. It changes dynamically, and Level 1 sellers can receive it (S38 title).
- It is a result of good metrics, not a lever.

### 4.4 Rising Talent [BACKGROUND, low confidence]
- A badge introduced around 2021 for promising **new** sellers who have a complete, high-quality profile and gigs plus early positive performance. It is curated or algorithmic, and time-limited.
- Its status after the 2023 level overhaul could not be verified. See Open questions.

### 4.5 Seller Plus [OFFICIAL existence: two paid tiers, "Standard" and "Premium" (S30)]
- **Features** [BACKGROUND]: advanced analytics and market insights, profile and gig-optimisation tools, the Seller Plus Academy (courses), and, on Premium, a dedicated Success Manager plus perks such as priority support.
- **Price** [BACKGROUND]: roughly $29–$39 a month range. Verify.
- **Advice:** subscribing does **not** change level criteria or the Success Score. Treat it as an analytics and education purchase. For a new account it is rarely worth it before Level 1.

---

## 5. Orders, cancellations, the Resolution Center, disputes, chargebacks

### 5.1 Cancellation rules [OFFICIAL] (S17, S18, S19, S20)
| Scenario | Who can cancel / how | Effect |
|---|---|---|
| Client ordered but hasn't submitted requirements | The client can cancel immediately via the Resolution Center | No impact on the order completion rate (OCR) (S17) |
| Active order; the client requests cancellation | The seller has **48 hours** to accept or decline. **No response means automatic cancellation.** | Counts according to the cause |
| Order late; no delivery; no agreed extension | The client can cancel **without approval** from **24 hours after** the expected delivery date | "Very late orders force-cancelled by the client" **hurt the OCR** |
| Seller submits the cancellation request (including mutual cancellations the seller started) | Via the Resolution Center | **Hurts the OCR** (S17) |
| Client unresponsive from the start | The seller initiates a **mutual cancellation** (recommended) | Unresponsive clients don't lower the Success Score (S02) |

Note that "OCR" still exists as an internal statistic. It is no longer a level criterion but feeds the Order cancellations area of the Success Score.

### 5.2 Resolution Center toolbox
- **Official** (S20, S19): cancel the order; mutual cancellation; partial refund (mentioned in S21 as a constructive resolution tool).
- **[BACKGROUND]:** extend the delivery time (both parties agree) and change order details.
- **Best practice:** always use the Resolution Center rather than informal chat agreements, so the action is logged and the protections apply.

### 5.3 Order lifecycle [BACKGROUND, high confidence]
1. Order placed.
2. Requirements submitted. The delivery clock starts when the requirements are submitted, if the gig requires them.
3. In progress.
4. Delivered.
5. The client accepts the delivery or requests a revision.
6. **Auto-completion 3 days after delivery** if the client takes no action.
7. Revenue enters the pending clearance period, then becomes available for withdrawal.

The official "Complete guide to your Fiverr order: Statuses and process" exists (S37).

### 5.4 Disputes and chargebacks [BACKGROUND]
- **Buyer chargebacks:** if a buyer files a chargeback with their card or payment provider, Fiverr can reverse the seller's revenue, even after clearance, and can create a negative balance. The buyer's account is typically blocked.
- **Protection:** keep all communication and delivery files on-platform, and deliver through the order page. Off-platform deliveries or "delivered outside" claims leave you without protection.
- **Escalation:** Customer Support tickets are the escalation path after the Resolution Center. Support can issue a cancellation even without seller consent in documented non-delivery or TOS cases.

---

## 6. Reviews: rules, removal and negative-review handling

- **Two review channels** [OFFICIAL] (S15, S16):
  - The **public** review: star ratings on sub-criteria plus text.
  - The **private** review: anonymous, internal only, available from 24 hours to 60 days after completion.
- **Public review window and seller reply** [BACKGROUND]: public reviews are left within a limited window after completion, historically 10 to 30 days; verify. Sellers can publicly respond once, and can rate the buyer.
- **Removal policy** [BACKGROUND, consistent across years]: Fiverr removes a review only if it violates the Terms of Service. Examples:
  - abusive or hateful language, or personal information;
  - extortion ("5 stars only if you give me extra work free");
  - a review placed on the wrong order;
  - reviews produced by manipulation.
  
  "Unfair" or "the client misunderstood" is **not** grounds for removal.
- **Prohibited (review manipulation)** [BACKGROUND, high confidence]:
  - buying reviews, review swaps or exchanges, self-orders, or orders from friends or relatives made to produce reviews;
  - offering discounts or refunds in exchange for a 5-star rating;
  - pressuring clients to change a review.
  
  Consequences run from review removal to account suspension.
- **Allowed** [BACKGROUND]: politely inviting the client to leave honest feedback, with no incentive and no star request.
- **Negative-review handling** [ANECDOTAL, reasoned]:
  - Write a calm, factual public reply of one or two sentences, aimed at **future** buyers.
  - Never argue, and never reveal private details.
  - Put the fix into the gig: clarify the scope in the description and FAQ.
- **Old trick, status unknown:** the historic practice of refunding or cancelling to erase a bad review. Fiverr has changed this behaviour over the years. Cancelling hurts the order completion rate and Success Score, and asking a client to cancel so a review disappears can count as review manipulation. **Do not use it as a tactic.** See Open questions.

---

## 7. Terms of Service and Community Standards

### 7.1 Off-platform communication and payment [BACKGROUND, high confidence; a live 2025–26 "Policy Violations Explained" article exists (S31)]
- **Prohibited:**
  - asking for or sharing email addresses, phone numbers, WhatsApp, Telegram, Skype, social handles or external links **for the purpose of contact or payment**;
  - asking for or accepting payment outside Fiverr;
  - moving an existing Fiverr client off-platform.
- **Enforcement:**
  - Messages are scanned automatically. Flagged messages can be held for review and trigger warnings.
  - Repeated or severe violations lead to account restriction and then permanent suspension.
  - Withheld revenue may be forfeited on a ban.
- **Allowed:**
  - calls through Fiverr's built-in call and Zoom integration during an order;
  - sharing information strictly necessary to perform the work (for example access to the client's ad account, CMS or brand assets), using secure methods and only after the order is placed;
  - portfolio links on permitted surfaces (gig portfolio items, the Fiverr portfolio).
- **Myth of "forbidden words" lists:**
  - T4 blogs publish lists (email, PayPal, WhatsApp, "pay", "@", "outside", and so on). The actual rule is **intent and context**: contact or payment off-platform.
  - Because the filter is automated, even an innocent "I'll email you the file" can trigger a review.
  - Practical rule: **avoid these words entirely in inquiry-stage messages**. Use "I'll deliver via the order page" and "we can hop on a Fiverr call".

### 7.2 Accounts and identity [BACKGROUND]
- **One account per person.** Multiple seller accounts are prohibited. Account sharing or selling is prohibited, and the verified owner must operate the account.
- **Identity verification:** Fiverr requires ID verification, a government ID plus a selfie or liveness check, done by a third-party provider. It is typically triggered at onboarding or before withdrawals and level-ups.
  - A **failed verification can restrict the account** (S36 title: "account restricted due to verification failure") [ANECDOTAL existence].
  - Use the owner's real ID, with the same name as the payout account. That means the Payoneer account's name must match.
- **Agency implication (DESORA):**
  - The seller account belongs to one verified individual.
  - Team members can work on orders, but the account holder is responsible, and the holder's credentials must never be shared in ways that look like account takeovers (for example constant logins from many countries).
  - Fiverr has had team and agency features in some periods. Whether they currently exist is an open question. Verify before structuring DESORA's setup.

### 7.3 Intellectual property [BACKGROUND]
- **Rights and delivery:** sellers must hold rights to everything they deliver: fonts, stock, music, templates. Delivering unlicensed assets can mean a warning, refund or ban. The TOS assigns rights in the delivered work to the buyer upon completion and payment, unless the gig says otherwise. Some categories use a paid "commercial use" extra.
- **Portfolio use:** showing client work in the portfolio needs care. Respect confidentiality, and ask the client, especially for B2B marketing work.
- **Reporting infringement:** Fiverr has an IP-infringement reporting process for rights holders. A gig that uses someone else's images can be removed.

### 7.4 AI-generated work [BACKGROUND; exact current wording unverified]
- Fiverr's Terms and gig guidelines require that gigs **accurately describe** what the client gets.
- Where AI tools are used to produce deliverables, disclose it clearly in the gig, for example "AI-assisted, human-edited", particularly in categories where buyers expect human work.
- There are dedicated AI-service categories (AI art, chatbots, AI content editing, AI video). Misrepresenting AI output as fully manual is a misrepresentation risk.
- Since Fiverr Go, AI output generated **through Fiverr's tools** is licensed under Fiverr's terms for that feature.
- **DESORA rule of thumb:** disclose AI assistance in the gig description and FAQ, keep human review in every deliverable, and never deliver raw AI text as "copywriting by an expert" without editing.

### 7.5 Gig content rules [OFFICIAL existence: "Requirements and guidelines for your Gig" (S39 in search listing); details BACKGROUND]
- No misleading titles or images.
- No stolen images.
- No duplicate gigs offering the same service to spam search.
- No prohibited services, such as fake reviews or engagement, academic cheating and similar.
- The gig must be in the correct category.
- Selling fake followers or likes, or engagement manipulation on social platforms, is prohibited. This matters directly for a marketing agency: never list "buy followers", "guaranteed 10k likes" and similar.

### 7.6 Warnings, restrictions, bans, appeals [BACKGROUND; S31 is the current official explainer, not read]
- **Escalation path:** automated or manual flag, then warning, then temporary restriction (for example limited messaging, gigs hidden, withdrawal hold), then permanent disable.
- **Effect on levels:** warnings can block level promotions and hurt the Top Rated review.
- **Appeals:** open a Customer Support ticket from the account email and give facts and evidence. Keep it short and professional. Permanent bans for off-platform payment or fraud are rarely reversed.
- **Prevention beats appeal.**

---

## 8. Money: fees, clearance, withdrawals (with a Morocco focus)

### 8.1 Fees [BACKGROUND; verify current buyer fee at checkout]
| Fee | Who pays | Amount | Confidence |
|---|---|---|---|
| Seller commission | Seller | **20% of each order**, including extras, custom offers and **tips** | High, stable for 10+ years |
| Buyer service fee | Buyer | About **5.5% of the order**, plus a small-order flat fee (about $2.50–$3) below a threshold (about $50–$100) | Medium; changed several times and may differ by region and currency |
| Withdrawal fee | Seller | Depends on method. Historically a small fixed fee for Payoneer or bank transfer, and about 2% (capped) for PayPal | Low; verify in the Earnings page |

**Formulas:**
- Seller net = gig price × 0.80. For example, a $100 order nets $80.
- To net a target amount, set the price to target ÷ 0.80. Netting $400 needs $500 in orders.
- The buyer pays roughly price × 1.055 + small-order fee.
- **Pricing psychology:** on small orders the flat fee is a large percentage of the price. Very cheap gigs ($5–$15) look expensive at checkout. Bundling into $30+ packages reduces fee friction [ANECDOTAL, reasoned].

### 8.2 Clearance [BACKGROUND]
- **Standard** (New, Level 1, Level 2): revenue becomes available **14 days** after the order is completed.
- **Top Rated and Pro:** 7 days.
- **Delays:** Fiverr may hold funds longer for security reviews, disputes or account restrictions.
- **Cash-flow rule:** assume about 17–21 days from delivery to money in a Moroccan bank. That is 3 days to auto-completion, 14 days clearance, then 1–3 days for payout processing. Longer if the client completes the order late.

### 8.3 Withdrawal methods [BACKGROUND; availability is country-specific]
- **Methods Fiverr has offered:**
  - PayPal;
  - Payoneer (withdraw to a Payoneer balance);
  - local bank transfer via Payoneer or Fiverr's partner;
  - direct deposit (US only).
  
  The Fiverr Revenue Card was discontinued earlier.
- **Morocco specifics:**
  - PayPal Morocco accounts can send but **cannot receive** payments. PayPal is therefore not a viable Fiverr withdrawal method for a Moroccan seller.
  - Use **Payoneer**. Fiverr pays out to Payoneer (fee applies), then Payoneer withdraws to a Moroccan bank account in MAD. Payoneer charges an FX margin and fee of up to about 2%.
  - The Payoneer account holder's name must match the Fiverr ID-verified name.
- **Compliance note (not Fiverr rules, but relevant; verify with a Moroccan accountant):**
  - Under the Moroccan auto-entrepreneur regime, services income is taxed at about 1% of turnover within a ceiling (about 200k MAD for services).
  - Finance Law 2023 introduced a 30% withholding on auto-entrepreneur income above 80k MAD a year from the **same client**. Fiverr is technically the paying platform, so how this applies is unclear. Get professional advice.
  - Office des Changes rules apply to foreign-currency service export receipts.

---

## 9. Fiverr Go and 2024–2026 platform changes

| Date | Change | Relevance to DESORA | Tag |
|---|---|---|---|
| 2022 | **Buyer Requests removed** and replaced by **Briefs**: the buyer posts a brief and Fiverr matches it to relevant sellers, who can send offers | Don't look for Buyer Requests. Optimise gig relevance so matching surfaces you. | [BACKGROUND, high confidence] |
| 2023 | Fiverr Neo, an AI matching assistant for buyers | Matching favours gigs with clear, structured descriptions | [BACKGROUND] |
| Oct 2023 onward | New level system: Success Score, six metrics, daily evaluation, 30-day grace | Section 2 | [OFFICIAL] (S01, S05) |
| 2024–2025 | **Hourly orders** introduced, with an official client-side article | Retainer-style marketing work can be sold hourly where eligible | [OFFICIAL existence] (S32) |
| Feb 2025 | **Fiverr Go** | See below | [BACKGROUND] |
| Feb 2025 | Fiverr Equity Program announced, granting shares to selected top freelancers | Signals where Fiverr invests: top talent | [BACKGROUND, medium] |
| May–Jun 2025 | Official community blog series explaining Success Score components (conflict-free orders, order requirements, "two things you should know") | Fiverr is actively educating on the Success Score, which suggests it is central to ranking and levels | [OFFICIAL] (S03, S21, S23) |
| Sep 2025 | Fiverr restructuring: about 30% workforce reduction to become an "AI-first" company | Expect more automation in support, enforcement and matching; fewer human touchpoints; appeals may be slower | [BACKGROUND, medium-high] |
| 2025–2026 | New Help Center articles: "How cancellations work for freelancers" and "Policy Violations Explained" | Cancellation and violation rules were rewritten recently. Re-read both periodically. | [OFFICIAL existence] (S17, S31) |
| Apr 2026 | Official blog on revisions and Success Score | Batch revisions; set revision limits in packages | [OFFICIAL] (S22) |

**Fiverr Go details [BACKGROUND]:**
- **Personal AI Creation Model:** a freelancer trains a model on their own portfolio or style. Clients can then generate instant output (for example design variations or voice), and the freelancer is paid. The freelancer opts in, sets terms and keeps ownership of the model.
- **Personal AI Assistant:** helps freelancers answer routine client messages and manage workflow.
- **Dynamic matching or "Go" for buyers:** AI-assisted, faster matching of briefs to offers.
- **Eligibility:** launched first in selected categories and for eligible, often higher-level, sellers.
- **DESORA angle:**
  - A marketing agency can use the AI assistant for faster first responses, which protects the response rate.
  - Every AI-drafted message still needs human review, because communication quality feeds the Success Score.

---

## 10. Myths vs reality

| # | Myth / outdated claim | Reality (current) | Tag / sources |
|---|---|---|---|
| 1 | "Top Rated needs $20,000, 100 orders and 180 days" | Now $10,000, 40 orders, 20 unique clients, Success Score 9, 4.7 rating, 90% response rate, plus manual review | [OFFICIAL snippet] (S04), [CONSENSUS] (S11, S45); old numbers [OUTDATED] |
| 2 | "Levels are evaluated on the 15th of each month" | Promotion happens the next day once metrics are met. Drops get a 30-day grace period. | [OFFICIAL] (S01); monthly = [OUTDATED] (S12) |
| 3 | "You need a 90% order completion rate and 90% on-time delivery to level up" | Not direct criteria any more. Both feed the Success Score (cancellations and delivered on time). | [CONSENSUS] (S06, S09, S10) |
| 4 | "Five-star reviews mean a high Success Score" | Private ratings and five other areas also count. A 4.9 rating with a Success Score of 6 is possible. | [CONSENSUS] (S25, S26), consistent with [OFFICIAL] (S03) |
| 5 | "Five orders from one loyal client gets you Level 1" | You also need 3 unique clients | [OFFICIAL definition] (S01), [CONSENSUS] (S08, S11) |
| 6 | "An unresponsive client ruins my score, so I must deliver something" | Unresponsive clients don't affect the Success Score. Use a mutual cancellation. | [OFFICIAL] (S02, S17) |
| 7 | "Mutual cancellations are free" | If **you** initiate, it hurts the order completion rate. Only client cancellations before requirements are fully neutral. | [OFFICIAL] (S17) |
| 8 | "Any revision request hurts my score" | Revisions and extensions are judged by their effect on satisfaction. It is **scattered, repeated** small revision rounds that hurt conflict-free orders. | [OFFICIAL] (S03, S22) |
| 9 | "Level 2 unlocks Buyer Requests" | Buyer Requests no longer exist (replaced by Briefs, 2022) | [BACKGROUND]; S14 is an example of stale content |
| 10 | "Staying online 24/7 (keep-online bots) boosts ranking" | The response rate measures replies to new messages within 24 hours, not online presence. Automation bots risk a TOS violation. | [ANECDOTAL, reasoned]; bots exist on GitHub (S44) |
| 11 | "Avoid these 50 forbidden words and you're safe" | The rule is about off-platform contact and payment intent. Automated filters flag keywords, so avoid them, but compliance is about behaviour. | [BACKGROUND] |
| 12 | "Meeting the numbers makes you Top Rated automatically" | A manual review is always required. After a rejection you wait 180 days. | [OFFICIAL] (S04) |
| 13 | "Delete and republish a gig to reset a bad score" | No official support for this. You lose reviews and history. The overall score weights popular gigs, and history isn't known to be purged. | [ANECDOTAL, reasoned] |
| 14 | "Level badges directly rank you higher" | Not declared as a ranking factor. Level and rank correlate because they share inputs. | [ANECDOTAL, reasoned] (S34 title) |
| 15 | "New sellers must wait 60 days before Level 1" | [DISPUTED]: not in the official six metrics | S01 vs S08 |
| 16 | "Refunding erases a bad review, so it's a free fix" | It hurts cancellations and the order completion rate. Soliciting cancellation to remove a review risks being treated as manipulation. | [BACKGROUND] |

---

## 11. Playbooks and checklists

### 11.1 New Seller to Level 1 (target: first 45–75 days)
1. **Complete ID verification first,** with the name matching Payoneer. **Set up Payoneer** before the first order.
2. **Publish 3–5 tightly scoped gigs** (not 7 thin ones). Each needs a clear deliverable list, a revision count, a delivery time with 30–50% buffer, and a requirements questionnaire (S21, S22, S23).
3. **Price for the $400 gate:** 5 orders averaging at least $100, or at least $80 if earnings are counted gross. With 3 unique clients, a realistic path is 2–3 starter-tier orders ($40–$80) and 2–3 standard-tier orders ($120–$200). Section 12.2 has the arithmetic.
4. **Response rate at or above 80%, and aim for 100%:**
   - Enable mobile notifications.
   - Reply within 1–4 hours during business hours (Morocco is UTC+0 since 20 Sep 2026; US clients message in your afternoon/evening).
   - A short "Thanks, reviewing your brief, full reply in 2h" still counts as a reply within 24h [ANECDOTAL on counting; the definition is "replied within 24 hours" (S01)].
5. **For every order:**
   - Confirm the scope in writing on the order page.
   - Give a mid-point update.
   - Deliver 12–24h early.
   - Include a short delivery summary.
   - Check in once after delivery.
6. **Zero seller-initiated cancellations.** Pre-qualify through inquiry messages. Decline bad fits **before** the order (S21).
7. **Never use** friends' orders, review exchanges, or off-platform payment.

### 11.2 Level 1 to Level 2
- Gates: 20 orders, 10 unique clients, $2,000, 4.6 rating, 90% response rate, Success Score 7.
- The **90% response rate** (up from 80%) is where many sellers stall. Set a team rota so inquiries are answered 7 days a week.
- **Unique clients:** diversify acquisition. Use multiple gigs across related keywords, and don't rely on one retainer client.
- **Success Score 7:** audit each gig's score monthly. If a popular gig's score is weak, tighten its scope and FAQ first. Don't change prices during a grace period.

### 11.3 Level 2 to Top Rated
- Gates: 40 orders, 20 unique clients, $10,000, 4.7 rating, 90% response rate, Success Score 9, and a manual review.
- **Prepare for the manual review** [ANECDOTAL, reasoned]:
  - no warnings;
  - a professional gig portfolio;
  - consistent, polite message history;
  - no disputes in which you acted unprofessionally;
  - clean IP (licensed assets);
  - accurate AI disclosure.
- If rejected, keep the metrics up and wait 180 days (S04).

### 11.4 Weekly account-health audit (15 minutes)
- [ ] Response rate (90-day) at or above 90%. Unanswered inquiries: 0.
- [ ] Any gig whose Success Score fell since last week? Which area?
- [ ] Late orders at risk this week? Ask for an extension **before** the deadline via the Resolution Center.
- [ ] Open Resolution Center requests: respond within 48h, or the order auto-cancels (S18).
- [ ] Any warnings or notices in the Inbox or Notifications?
- [ ] Clients delivered 1–60 days ago: did everyone get a post-delivery check-in? (Private ratings arrive up to day 60.)
- [ ] Level widget: any metric in grace?
- [ ] Revenue pending clearance versus available: plan withdrawals.

### 11.5 Cancellation decision tree
1. Client hasn't submitted requirements and wants out: let **them** cancel (no impact on the order completion rate) (S17).
2. Client unresponsive: send two polite reminders over 48–72h, then **initiate a mutual cancellation** (S02, S17).
3. Scope creep dispute: offer a clear choice. Either deliver the in-scope work, or a custom offer or extra for the added scope, or a **partial refund** (S21).
4. You can't deliver (illness, emergency): ask for an **extension** first. Cancel only as a last resort, and communicate early.
5. Client requests cancellation on a strong delivery: respond within 48h. Decline with evidence and offer one revision. Silence means auto-cancellation (S18).

### 11.6 Off-platform compliance checklist (share with every DESORA team member)
- [ ] No email, phone, WhatsApp, Instagram or website links for contact in any Fiverr message.
- [ ] No "pay", "payment", "PayPal", "bank" and similar words discussing payment outside Fiverr.
- [ ] Calls only through Fiverr's call feature, during an order.
- [ ] Access credentials (for example Meta Business Manager partner access) requested only **inside an active order**, and preferably via partner or role access, not passwords.
- [ ] Repeat clients rebook through Fiverr (custom offers). Never move them to direct invoicing.
- [ ] No review requests tied to incentives.

---

## 12. Templates, examples, formulas

### 12.1 Message templates (compliant wording)
**Client asks for WhatsApp or email:**
> Thanks for reaching out! To keep your payment and files protected, I handle all communication and delivery through Fiverr. We can also do a quick call through Fiverr's built-in call feature once the order starts. Could you share your goals for the campaign here so I can suggest the right package?

**Holding reply (protects response rate):**
> Hi [Name], thanks for the details! I'm reviewing your brief and will send a full proposal within [2] hours.

**Scope confirmation at order start (conflict-free and communication):**
> Order confirmed. Here's what you'll receive: [deliverables]. Delivery: [date]. Revisions included: [n]. To make revisions efficient, please send all change requests together in one message. Anything I missed before I start?

**Extension request (before the deadline, via the Resolution Center):**
> To give you the quality this deserves after the added [X], I'd like to extend delivery by [n] day(s). I've sent a request through the Resolution Center. Please accept if that works for you.

**Mutual cancellation for an unresponsive client:**
> Hi [Name], I haven't received the requirements needed to start. To avoid holding your funds, I've opened a mutual cancellation. You're welcome to reorder anytime when you're ready.

**Post-delivery check-in (no incentive, no star request):**
> Hope the delivery is helping! If anything needs adjusting within the included revisions, just let me know. Your feedback helps me improve.

**Public reply to a negative review:**
> Thank you for the feedback. We delivered [scope] as agreed and offered [revision/partial refund]. We've since clarified [X] in our packages so expectations are clear from the start.

### 12.2 Formulas
- **Net earnings** = Σ order value × 0.80. **Gross needed for a net target** = target ÷ 0.80.
- **Level 1 earnings path:** a $400 gate over at least 5 orders means an average order of ≥ $80 if gross is counted, or ≥ $100 if net is counted.
- **Level 2:** $2,000 over at least 20 orders, an average of ≥ $100 gross or ≥ $125 net.
- **Top Rated:** $10,000 over at least 40 orders, an average of ≥ $250 gross or ≥ $312.5 net.
- **Response rate** = new-message threads replied to within 24h ÷ all new-message threads, over 90 days (S01).
- **Unique-client ratio** = unique clients ÷ orders. The Top Rated gate needs about 0.5 (20/40). An agency with high repeat business will hit the order gate before the client gate, so plan acquisition accordingly.
- **Cash cycle** ≈ days to delivery + 3 (auto-complete, if the client is silent) + 14 (clearance) + 1–3 (payout).

---

## 13. Free tools and resources discovered
| Name | URL | Purpose | Free? |
|---|---|---|---|
| Fiverr seller dashboard: level progress and Success Score breakdown | fiverr.com (logged in) | The only authoritative view of your metrics, grace status and per-gig score areas | Free |
| Fiverr Help Center: Levels, Success Score, Cancellations, Policy Violations | help.fiverr.com (S01, S02, S17, S31) | Official rules; re-check quarterly | Free |
| Fiverr Community blog ("Education content") | community.fiverr.com/public/blogs | Official explainers on Success Score areas (2025–2026) | Free |
| Fiverr Learn | learn.fiverr.com | Courses (some free, many paid) | Mixed |
| Seller Plus (Standard and Premium) | Dashboard | Analytics, education, Success Manager (Premium) | Paid |
| Payoneer | payoneer.com | Payout route for Morocco | Free account; per-transaction fees |
| Fiverr Resolution Center | Order page | Extensions, cancellations, partial refunds | Free |

---

## 14. Open questions: things that could not be verified in this session
1. **Days-active requirement** for Level 1 and Level 2: does it still exist (see 2.4)?
2. **Earnings metric:** gross or net? Lifetime or windowed?
3. **Rating window:** the snippet says two years; confirm.
4. **Current buyer service fee and small-order threshold** (2025–2026), and whether Fiverr changed the seller 20% for any tier or programme.
5. **Withdrawal fees and minimums per method.** Is "Bank transfer" available directly for Moroccan sellers, or only through Payoneer?
6. **Clearance periods** under the current system for Level 2. Is it still 14 days? Does any Seller Plus tier shorten it?
7. **Level benefits table** under the current system: gig limits, extras, custom-offer caps.
8. **Rising Talent:** still active after 2023? What are the criteria?
9. **Seller Plus:** current tiers, prices and features, and whether a free "Kickstart" tier exists.
10. **Content of "Policy Violations Explained"** (S31): is there a formal strike count or violation ladder?
11. **Content of "How cancellations work for freelancers"** (S17) beyond the snippets: for example, whether mutual cancellations initiated by the client count.
12. **Review window length** and whether reviews on later-cancelled orders are removed.
13. **Current AI-disclosure wording** in the TOS and gig guidelines.
14. **Agency and team accounts:** can DESORA legitimately run one seller identity with multiple team members, and what does Fiverr say about team logins?
15. **Fiverr Go:** current (2026) availability by category and level, pricing mechanics, and its impact on the Success Score.
16. **Fiverr Pro:** current application criteria and whether Pro still gets 7-day clearance.
17. **Morocco tax treatment** of Fiverr income (auto-entrepreneur, the 80k MAD single-client rule) needs a local accountant.

**How to close these:** give the research environment network access to help.fiverr.com, fiverr.com, community.fiverr.com, blog.fiverr.com and investors.fiverr.com, and raise the session's WebSearch budget. Then re-run this cluster with full-page reads. Every [BACKGROUND] item above should then be confirmed or corrected.
