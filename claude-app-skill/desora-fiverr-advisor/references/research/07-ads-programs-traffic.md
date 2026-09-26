# Cluster 07: Fiverr Ads (Promoted Gigs), Seller Plus, Premium Programs and External Traffic

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - Fiverr Go Personal Assistant: closed to new subscribers on 1 Sep 2026 and shuts down on 1 Oct 2026 (Help Center snippet via clusters 06/11). Don't plan around it.


Knowledge base for DESORA's Fiverr advisor subagent. Compiled 2026-09-26.

---

## 0. Research integrity note (read first)

**How this file was built, stated plainly:**

- **WebFetch returned nothing.** The environment's egress network policy blocked every content host. The blocked hosts were help.fiverr.com, www.fiverr.com, investors.fiverr.com, community.fiverr.com, blog.fiverr.com, techcrunch.com, wikipedia.org, reddit.com and medium.com. Only developer hosts (github, pypi, npm) were reachable. **Fully fetched pages: 0.**
- **WebSearch worked only briefly.** I ran 28 successful searches, with 1 domain error (reddit.com cannot be used as a search domain filter). After that, the session-wide cap of 200 searches, shared by all 12 parallel agents, ran out. **No further searching was possible.**
- **What the evidence actually is.** Every sourced claim below comes from search-engine summaries of specific pages. These are "snippet" sources, and the source IDs map to `07-sources.tsv`.
  - About 48 sources contributed real text.
  - About 32 contributed only a title or date, which proves the page exists and what it is about, not what it says.
- **Background knowledge is labelled.** Where I add context from my own prior knowledge (training data up to mid-2026) that I could not re-verify this session, it is tagged **[BACKGROUND, unverified]**. The advisor should treat those claims as hypotheses to check inside the Fiverr seller dashboard or Help Center before relying on them.
- **Before production use, re-verify these high-value facts in-app:**
  - current Fiverr Ads eligibility, minimum bid and CPC cap
  - Seller Plus prices
  - Fiverr Go prices
  - affiliate rules for sellers

**Tag legend**
- **[OFFICIAL]**: the claim comes from a Fiverr-owned source (Help Center, Fiverr blog, staff-written community blog, investor release), seen via snippet.
- **[CONSENSUS]**: at least 3 independent non-official sources agree.
- **[ANECDOTAL]**: 1–2 field reports.
- **[DISPUTED]**: sources conflict. The verdict is given.
- **[BACKGROUND, unverified]**: my prior knowledge, not re-verified this session.

---

## 1. Executive summary: the most important insights, ranked

1. **Fiverr Ads amplifies what already works. It does not fix what doesn't.** Fiverr's own staff blog says this, and so do experienced sellers. Where an ad appears depends on a **Match Score** multiplied by your **Bid**. The Match Score is built from how good the gig looks and how well you deliver. So a gig with weak organic performance gets few ad impressions even with a big budget. [OFFICIAL + CONSENSUS] (S11, S19, S15, S22, S26)

2. **The ad price ceiling doubled in October 2025.** From 15 Oct 2025 the minimum bid rose to **$0.05** and the maximum CPC cap rose from **$3 to $6**. The Help Center now says the recommended "No CPC cap" option can bid **up to $6 per click**. Two independent sources agree. Sellers widely criticised the change. [OFFICIAL + ANECDOTAL] (S1, S27, S28)

3. **Always run the break-even math before spending.** Fiverr keeps 20% of every order, so only 80% of what an ad "earns" reaches you.
   - Break-even CPC = AOV × 0.80 × (1 − delivery-cost share) × ad conversion rate.
   - Example: a $120 gig with 40% delivery cost and a 2% conversion rate breaks even at **$1.15 per click**. At the $6 cap, a "No cap" setting could lose about $4.85 per click.
   - Rule: **never use "No CPC cap" unless AOV × conversion rate is high** (roughly a gross value per click of $12 or more).

4. **The ROAS on the dashboard is flattering.** Orders are credited to ads if they happen within a **30-day window after the last ad click**, and repeat clicks by one user count once. Some of those orders would have come organically anyway. Judge ads on *incremental* profit: compare total orders before, during and after the test, not only the orders the dashboard attributes to ads. [OFFICIAL mechanics + analytic inference] (S2)

5. **You pay per click only, and the bill is monthly.** Impressions and video hovers are free. Charges come from your **Fiverr balance first**, then your saved card or PayPal, or future earnings. Paying from balance is convenient for a Morocco-based seller whose card may struggle with international charges. Fiverr's staff blog notes that **in some countries ads are taxed monthly**. [OFFICIAL] (S1, S19)

6. **Automatic bidding is optimised for Fiverr's metrics, not your profit.** It weighs your conversion rate, revenue per click, category competition and ROAS. Fiverr's own example: 10 clicks producing one $50 order means each click is "worth" $5. That is revenue per click, not profit per click, and it ignores the 20% commission and your costs. Put a manual CPC cap at or below your break-even CPC. [OFFICIAL + inference] (S1, S10)

7. **Eligibility has changed over time, and the rules on the page differ from what sellers report.**
   - In 2020 the program launched for "talented and experienced" freelancers.
   - Community and third-party sources describe Level 1+ status, a gig rating of at least 4.7 and at least 20 reviews.
   - Today the Help Center only states "only active Gigs are eligible", while many Level 1 sellers report the option is missing.
   - Verdict: eligibility is decided by Fiverr's quality signals, at gig level and account level, and is not fully published. [DISPUTED] (S1, S12, S16, S37, S38, S68, S14)

8. **Field results are mostly mixed to negative, with some wins, and the complaints grew after the 2025 price change.** Reported examples:
   - $12.88 spent for $20 in sales
   - $50/day for 4 months with no orders
   - $100+ spent for zero orders
   - CPC in one category rose from $1–2 to much higher
   - a Level 2 seller whose ads "stopped working for 6–8 months"
   - a seller whose ad spend was about 10% of order revenue (which is profitable)
   [CONSENSUS on high variance] (S20, S23, S24, S25, S26, S29, S31, S32)

9. **Start small and judge on click volume, not days.** Community starting budgets are $5–7 per day, and Fiverr's "recommended" budget has pushed some sellers to $11 per day or more. Raising the budget does not reliably raise results when the Match Score is the limit. Evaluate after about 3 ÷ (target conversion rate) clicks: 150 clicks for a 2% target. [ANECDOTAL + statistics] (S20, S21, S15)

10. **Seller Plus has three tiers.** All figures are reported by third-party sites; verify in-app.
   - **Kickstart** is about $15/month, for new (unleveled) sellers.
   - **Standard** is about $25/month, for Level 1–2.
   - **Premium** is about $49/month, or about $38/month billed annually, and adds a dedicated **Success Manager**.
   - Standard and Premium include a **$5 monthly Fiverr Ads credit that does not roll over**. [T4 + OFFICIAL for the credit] (S3, S4, S46, S47, S48)

11. **Seller Plus pays for itself with less than one extra order a month.** The real question is whether you will *use* the insights, such as search terms and competitor or profile data. For a $120 gig, Standard needs about 0.35 extra orders per month and Premium about 0.85. [Analytic]

12. **Fiverr Go launched on 18 Feb 2025.** It is Fiverr's AI suite:
    - a **Personal AI Assistant** that answers and filters leads and learns your style (reported at about $29/month standalone, and reportedly included in Seller Plus Premium)
    - a **Personal AI Creation Model** (reported at about $25/month for up to 3 models)
    - Dynamic Matching
    - a client-side AI assistant

    Fiverr's pitch rests on its data that the **first 3 minutes** of response matter for closing a sale. [OFFICIAL + T2/T4 for prices] (S5, S39, S40, S41, S42, S43, S44, S45)

13. **Fiverr officially encourages promoting gigs outside Fiverr,** including paid social ads, Google Ads, guest posts, podcasts and collaborations, **as long as every call to action points back to Fiverr** and you **never share personal contact information**. [OFFICIAL] (S7)

14. **Spam is the main external-traffic risk.** Fiverr prohibits unwanted or repeated promotional messaging, bots, scripts, automated mass messages, and contacting users about anything unrelated to their gigs, requests or orders. Obey the rules of every community you post in. [OFFICIAL] (S7, S8, S55, S56)

15. **Fiverr's own staff recommend bringing your off-platform clients to order through Fiverr.** Their reviews and ratings help the algorithm. This is the safest and highest-converting form of external traffic. [OFFICIAL] (S17)

16. **The belief that "external traffic kills your conversion rate" is overstated.** Fiverr's analytics funnel separates Organic and Fiverr Ads traffic, and ranking is driven by relevance, performance, satisfaction and responsiveness. Targeted traffic that converts adds orders and reviews, which is a net positive. What can hurt you is junk traffic: link-dumping in groups, "gig promotion" bot services and traffic exchanges. It brings no sales, carries ToS risk, and may drag down click-to-order signals. [DISPUTED; verdict given] (S9, S60, S7)

17. **Relevance comes first in organic ranking.** Fiverr reads the title first, then positive keywords, then the description. It then weighs historical client interest, satisfaction and reviews, price, availability and responsiveness. Fiverr's Choice and Pro status can influence ranking. Give keyword changes about 30 days before judging them. [OFFICIAL] (S9)

18. **The marketplace is moving up-market.**
    - Fiverr's 2024 product release reframed the company as a "hiring platform".
    - In mid-2026, Fiverr's CFO remarks were read by sellers as confirming higher AOVs, fewer cheap one-off orders and more expert-led projects.
    - The staff blog of 10 June 2026 is titled "The Fiverr strategies that worked in the past won't work today".
    - For DESORA this means positioning as an expert agency with higher-AOV packages. Higher AOV also makes ads math far easier. [OFFICIAL titles + T3] (S30, S61, S62)

19. **Fiverr Pro, vetted categories and Fiverr agencies are distinct programs,** each with its own Help Center article. For a marketing agency like DESORA, the **Fiverr agencies** program and Pro vetting are the premium channels to reach business buyers. Their criteria could not be read this session. [OFFICIAL existence; details unverified] (S51, S52, S53, S54)

20. **Fiverr Affiliates is a separate program with its own commission structure,** updated in 2024. Whether and how sellers may use it without self-referral problems could not be verified. **Never use an affiliate link to buy or push your own gigs.** [OFFICIAL existence; rules unverified] (S63, S64, S65)

21. **Pause ads when any of these is true:**
    - the gig has had no order in 3 ÷ CR clicks (e.g. 150 clicks at a 2% target)
    - rolling-30-day profit is negative after commission
    - you are near capacity (late deliveries hurt the Match Score and the Success Score)
    - the gig is being substantially edited (wait for organic signals to settle)

    [Analytic + ANECDOTAL] (S15, S22)

---

## 2. Fiverr Ads (formerly "Promoted Gigs")

### 2.1 Timeline and naming

| Date | Event | Tag / Source |
|---|---|---|
| 30 Jul 2020 | "Promoted Gigs" launched. The blog pitch: even top-rated sellers need help getting in front of new buyers. You pay only for valid clicks, and your gig shows in prime locations at the top of the page once your bid is accepted. Aimed at "talented and experienced freelancers". | [OFFICIAL] S12, S13 |
| c.2021–2024 | Community threads describe expansion from higher levels to Level 1 sellers, often with a missing-option complaint. | [ANECDOTAL] S16, S37, S38 |
| c.2023 (est.) | Renamed **"Fiverr Ads"**. Evidence: the same Help Center article resolves under both the "Promoted-Gigs-webinar" and "Fiverr-Ads-webinar" slugs. The marketing page still uses "Promoted Gigs". | [OFFICIAL URL evidence] S2, S10 |
| 15 May 2025 | Staff blog "Everything you need to know to run smart Fiverr Ads" (by Kesha). | [OFFICIAL] S19 |
| Late Sep 2025 (announced), 15 Oct 2025 (effective) | Minimum bid raised to **$0.05**. CPC cap raised from **$3 to $6**. | [OFFICIAL via community + HC] S27, S28, S1 |
| Nov 2025 | "The Math Just Isn't Mathing" thread: a heavy advertiser reports falling profitability and CPC climbing from about $1–2. | [ANECDOTAL] S24 |
| May 2026 | YouTube: a Top Rated Pro seller reports spending $22,787 on Fiverr Ads. Only the title and date are known; results unread. | [ANECDOTAL] S33 |

### 2.2 Eligibility, then and now [DISPUTED]

- **Help Center today:** "Only active Gigs are eligible for Fiverr Ads." You reach it via **Growth & Marketing → Fiverr Ads**. [OFFICIAL] (S1)
- **Staff blog, 2025:** ads let "eligible sellers" bid. It does not say who is eligible. [OFFICIAL] (S19)
- **Community and third-party claims:** Level 1+, a gig rating of at least 4.7, and at least 20 reviews; one variant says "5 if you're a Top seller". Another says "20 completed orders (in some categories) or Fiverr's minimum quality threshold". These are T4/T3, and no Fiverr page seen confirms the numbers. (S68, S16, S14)
- **Level 1 sellers without the option:** many threads, recurring from 2022 to 2025. (S16, S38, S36 "not promotable / unqualified", S79)
- **Verdict:** the practical gate is an internal quality threshold, at gig level and seller level, that Fiverr does not publish. The "4.7 rating / 20 reviews" rule is plausible as a *historical* rule but is **not confirmed as current**. Advisor guidance: "If Growth & Marketing → Fiverr Ads is visible and a gig shows as promotable, you are eligible. If not, improve the gig's reviews, Success Score and conversion. Don't pay anyone who promises to 'unlock' ads."

### 2.3 How the auction works

- **Placement formula:** Ad placement = **Match Score × Bid**. [OFFICIAL] (S11)
  - Match Score is how well your service matches a particular client's needs, which drives how likely they are to click.
  - The first part of the Match Score is **gig appearance quality**: an appealing title and high-resolution images or video.
  - The second part is **gig delivery quality**: performance within orders, communication, client satisfaction, and "client potential to return to your Gig".
- **Auction type [DISPUTED wording]:**
  - The Ad-ranking article calls it a "first-price auction" (S11).
  - The main Help Center article says "your actual cost per click may be lower than your bid as you will only pay the minimum amount needed to win over other freelancer's bids" (S1, S10). That behaviour is closer to a second-price auction or automated bid-shading.
  - Verdict: treat your CPC cap as a *ceiling*. Your average CPC will usually be below it, and clicks cost varying amounts.
- **Bidding options** [OFFICIAL] (S1):
  - **Automatic ("No CPC cap").** Fiverr sets the bid "to keep your Ad competitive" using your conversion rate, revenue per click, category competition and ROAS. It can go **up to $6 per click** after Oct 2025. Fiverr recommends this option.
  - **Manual CPC cap.** You set the maximum per click. Fiverr warns that a low cap "may make you less competitive in auctions for high-valued clients".
- **Factors that raise bids:** more freelancers competing in a domain means higher bids. Revenue per click is the other factor, and Fiverr's example is 10 clicks → one $50 order = $5 per click. [OFFICIAL] (S10, S1)
- **Implication for DESORA:** in crowded subcategories (logo design, social media marketing, SEO), CPCs will be highest. Ads profitability favours **niche, high-AOV, high-conversion gigs**, for example "Shopify store SEO audit for fashion brands" rather than "SEO services".

### 2.4 Budget and billing

- You control the **daily budget**, the total across all clicks, and the **CPC cap**, per click. [OFFICIAL] (S1, S10)
- Fiverr's page says a higher daily budget means more time at the top of the page. [OFFICIAL] (S10) But the real limit is often the Match Score, and experienced sellers say budget alone doesn't buy impressions for weak gigs. [CONSENSUS] (S15, S21, S31)
- Billing works like this [OFFICIAL] (S1):
  - You pay only for clicks.
  - Views and video hovers are not clicks.
  - You are billed **once a month**.
  - The charge comes from your **Fiverr balance first**, then your saved **credit card or PayPal**, or **future earnings**.
- **Seller Plus Standard and Premium:** $5 monthly Fiverr Ads credit, applied automatically, **no rollover**. [OFFICIAL via snippet] (S1/S3)
- **Tax:** "In some countries, Ads are taxed monthly." [OFFICIAL] (S19) Whether Moroccan VAT applies is an **open question**.
- **Starting budgets reported:** $5–7/day. One seller started at $5 and Fiverr then recommended $11. Others run $10/day and $50/day, some with no conversions. [ANECDOTAL] (S20, S25, S26, S31, S32)

### 2.5 Where ads appear and how they are labelled

- Ads appear in search results, category pages, "and more" (S1, S10), and also in **clients' inboxes** (S19). [OFFICIAL]
- Ads sit in "Ad" positions at the top of relevant search pages. [T4] (S14) The on-card "Ad" label is standard [BACKGROUND, unverified in detail]. Buyers can see it's an ad, which may lower trust slightly compared with an organic top spot. Gig visuals and social proof carry the click.

### 2.6 Metrics, attribution and the dashboard

These are the official definitions (S2, S1, S6):

| Metric | Definition | Diagnostic use |
|---|---|---|
| Impressions | Times your gig was seen *as an ad* | High impressions with low clicks means the gig card is weak: fix the thumbnail, title and price. |
| Clicks | Clicks on the ad. **Multiple clicks by the same user count once.** | Click-through rate (CTR) = clicks ÷ impressions |
| Orders | Orders placed within a **30-day attribution window from the last click** | Conversion rate (CR) = orders ÷ clicks |
| Spend | Clicks × average CPC | |
| Revenue / ROAS | Gross revenue attributed ÷ spend | Must be compared with break-even ROAS (§11) |

- The analytics area also shows a **funnel view for Organic vs Fiverr Ads**: impressions → clicks → orders for each source. [OFFICIAL via snippet] (S60/S6)
- **Critical caveat [analytic]:** last-click attribution over 30 days credits ads with orders from buyers who might have ordered anyway. For example, a buyer who clicked an ad once and later found you organically. Treat dashboard ROAS as an **upper bound**.

### 2.7 Profitability after Fiverr's 20% commission

- Fiverr takes **20%** of each order. Sellers resent stacking ad spend on top of that commission. [OFFICIAL fact via community; CONSENSUS] (S28, S67)
- Net per order = AOV × 0.80. Profit per order = net × (1 − delivery-cost share).
- **Break-even ROAS on Fiverr's gross revenue** = 1 ÷ (0.80 × (1 − d)), where d is delivery cost as a share of net:
  - d = 0 → 1.25×
  - d = 0.3 → 1.79×
  - d = 0.4 → 2.08×
  - d = 0.5 → 2.50×
  - d = 0.6 → 3.13×
- **Target ROAS** = break-even ROAS × 1.5, to cover the attribution haircut. For a typical DESORA gig (d ≈ 0.4) that means **3.1× or more on the dashboard**.
- The anecdote "$12.88 spend → $20 sales" (S23) is ROAS 1.55×. After commission, net is $16. With d = 0.4, profit is $9.60 − $12.88 = **−$3.28**, a loss even though the dashboard looks "positive".
- The anecdote "ad spend ≈ 10% of order revenue" (S18/S20) is ROAS 10×, which is clearly profitable. It shows ads can work for strong, converting gigs.

### 2.8 Field reports

| Report | Tier | Takeaway |
|---|---|---|
| Ran ads about 3 months; spend about 10% of order revenue in months 1–2 (S18/S20) | T3 | Works when the gig already converts |
| $12.88 spent → $20 sales, poor CTR (S23) | T3 | Positive-looking ROAS that is really a loss |
| Thousands spent over about 2 years; less profitable over time; CPC was $1–2 (S24, Nov 2025) | T3 | Auction inflation; margins compress |
| $50/day for 4 months, no results (S26/S31/S32 cluster) | T3 | Budget can't fix a weak Match Score or a mismatched offer |
| $10/day, no conversions (S31/S32) | T3 | Same |
| $100+ spent for 0 results; "Fiverr only uses a small fraction of the budget" (S34/S35/S18) | T3 | Low impressions come from a low Match Score |
| Level 1 enabled ads but got no impressions (S15) | T3 | "Ads scale organic reach; weak organic = little or no ad reach" |
| Level 2 seller, ads not working for 6–8 months (S29, title only) | T3 | Performance can decay; re-test regularly |
| TRS Pro seller spent $22,787 (S33, title only) | T3 | Heavy advertisers exist; results unverified |
| Pushback on the doubled CPC cap (S27, S28) | T3 | Automatic bidding can now cost up to $6 per click |

**Pattern [CONSENSUS]:** ads win for gigs that already have reviews, strong conversion, competitive packages and a meaningful AOV. They lose for new, weak or generic gigs, and in very crowded subcategories.

### 2.9 Best practices

1. **Promote the right gig.** Choose the gig with the highest organic CR and AOV, solid reviews and spare delivery capacity. Never promote a gig with a weak card or fewer than about 5 reviews. [CONSENSUS + OFFICIAL spirit] (S19, S22, S15)
2. **Fix the card before paying for clicks.** Use an appealing title, a high-resolution thumbnail and a video. The Match Score explicitly includes "gig appearance quality". [OFFICIAL] (S11)
3. **Set a manual CPC cap at or below the break-even CPC.** Start at about 60–80% of break-even and raise it only if impressions are starved and CR is proven. [Analytic]
4. **Start with a daily budget of $5–7.** Scale by about 20–30% per week only while rolling-30-day profit is positive. [ANECDOTAL + analytic] (S20)
5. **Run long enough to decide.** Give it 2–4 weeks or 3 ÷ target-CR clicks, whichever is longer, before judging. [ANECDOTAL] (S15)
6. **Pause if any of these is true:**
   - no order after 3 ÷ target-CR clicks
   - rolling profit is negative
   - you are near capacity
   - you are mid-way through major gig edits
   - a seasonal lull in demand
7. **Keep the Match Score healthy.** Fast replies, on-time delivery and satisfied clients raise the Match Score, which lowers the bid needed for the same placement. Operational excellence cuts ad costs. [OFFICIAL] (S11)
8. **Relation to organic ranking.** No source seen says ads directly raise organic rank. Orders and reviews won via ads do feed the organic performance signals that Fiverr uses. [OFFICIAL] (S9) So ads can speed up the review flywheel for a gig that converts. Claims that "ads boost your organic ranking" should be treated as **unproven**, and "ads hurt organic" as a **myth** with no evidence.
9. **Keep a log.** Record date, spend, clicks, CPC, orders and gross revenue, then compute net profit. The dashboard's revenue is gross, before the 20% commission. Template in §12.

---

## 3. Seller Plus

### 3.1 Plans and prices

Prices come from T4 sites via snippets. Verify in-app.

| Plan | Price (reported) | Who can buy | Headline features |
|---|---|---|---|
| **Kickstart** | ~$15/month, auto-renews | New / unleveled sellers | Launch-stage tools: insights, education, early guidance. Exact list unverified. (S4, S48, S49) |
| **Standard** | ~$25/month, auto-renews | Level 1 and Level 2 (reported) | Advanced analytics and growth tools, **$5/month Ads credit** (S3, S6, S46, S47) |
| **Premium** | ~$49/month (~$38/month on annual billing) | Levels vary | Everything in Standard plus a **dedicated Success Manager**. Reportedly includes the Fiverr Go Personal Assistant, otherwise ~$29/month. (S3, S46, S47, S5) |

- **Official pages exist** (S3, S4, S6, plus "Growth Tools for Seller Plus"), but their text could not be read this session.
- **Feature descriptions [BACKGROUND, unverified]:** Seller Plus has historically offered:
  - search-term or keyword insights (which searches led to your impressions)
  - competitor or market benchmarks such as pricing in your subcategory
  - profile and gig insights
  - buyer insights
  - exclusive webinars and workshops
  - early access to beta features
  - a dedicated Success Manager for 1:1 consultations (Premium)

  Earlier prices differed; the program has been repriced over the years.
- **Are the insights useful?** The "Advanced Analytics for Seller Plus" article (S6) shows the *analytics* component is real. Nothing seen shows the insights cause ranking gains. Seller Plus does **not** buy ranking; no source claims it does.

### 3.2 Is it worth it? Evidence and framework

- **Evidence quality is poor.** The T4 "is it worth it" articles (S46, S47, S48) repeat the prices without outcome data. Community threads exist (S50, plus a Facebook group) but their content is unread. No independent data shows a Seller Plus effect on sales.
- **The analytic payback is easy:** Required extra orders per month = Price ÷ (AOV × 0.8 × (1 − d)).
  - AOV $120, d = 0.4: Kickstart 0.26, Standard 0.36, Premium 0.85 (0.66 on annual billing).
  - If you would run ads anyway, subtract the $5 credit: Standard's effective cost becomes $20 and Premium's $44.
- **Verdict:** worth it **only if** someone at DESORA commits to a monthly routine:
  1. export the search terms
  2. update titles and tags
  3. benchmark packages
  4. hold a monthly session with the Success Manager (Premium)

  Otherwise it is a recurring cost with no mechanism of return. The decision tree is in §11.2.

---

## 4. Fiverr Go (the 2025 AI suite)

- **Launch:** Fiverr unveiled "Fiverr Go" on **18 Feb 2025**, framed as an AI platform that "puts creators front and center". [OFFICIAL + T2] (S39, S40)
- **Components** (S5, S39–S45):
  - **Personal AI Assistant for freelancers.** It learns from your past interactions and settings, answers potential clients, handles routine tasks and gives business insights. Its product page says it is built to "filter low-fit leads, reply instantly, and bring qualified client opportunities". Fiverr's data says the **first three minutes** are critical for closing sales, and the assistant keeps you responsive while offline. [OFFICIAL] (S5, S41)
    - Price reported at **~$29/month**, reportedly included in Seller Plus Premium. [T4/T2 snippet] (S42, S43)
  - **Personal AI Creation Model.** Freelancers train models on their own style (illustration, writing, voice-over, etc.). Clients generate assets that the freelancer can monetise.
    - Reported **$25/month for up to 3 models**. [T4] (S44)
  - **AI Personal Assistant for clients:** a buyer-side assistant. [OFFICIAL title] (S45)
  - **Dynamic Matching:** AI matching of client briefs to freelancers. [BACKGROUND, unverified; widely reported at launch]
- **Relevance to DESORA:**
  - **The Personal Assistant is the most relevant component.** Response speed and qualification matter most for agency sales. Test it on low-risk gigs first, and keep a human reviewing custom offers. AI replies must never promise off-platform contact or anything that breaks Fiverr's ToS. [Analytic]
  - **Creation Models suit repeatable, style-based assets** (e.g. social templates). Evaluate them only if DESORA has a distinctive visual style it wants to productise. Otherwise they are low priority.
- **Open question:** availability and pricing for sellers in Morocco, and whether the features changed after Fiverr's 2025 restructuring.

---

## 5. Fiverr Pro, vetted categories and Fiverr's Choice

- **Fiverr Pro** is a vetted status. The Help Center has "How to become a Fiverr Pro freelancer" (S51) and "Promoting yourself as a Fiverr Pro freelancer" (S54). The search system article says **Pro status can influence search ranking**. [OFFICIAL] (S9)
  - **[BACKGROUND, unverified]:** Pro is application-based, and Fiverr's team reviews portfolio, credentials and track record. Benefits include:
    - a Pro badge and placement in Pro-filtered results
    - access to business buyers
    - higher price acceptance
  - Criteria change and are stricter in some categories; re-verify the current requirements.
- **Vetted-only categories.** Some categories accept only vetted freelancers (S53, title only). Check whether any of DESORA's target categories are vetted-only.
- **Fiverr's Choice** is awarded to "select services in recognition of outstanding quality and client satisfaction". It appears in search results and is a ranking-related badge. [OFFICIAL] (S9)
  - **[BACKGROUND, unverified]:** it is algorithmic and query-specific, and it cannot be bought or applied for. It rotates as performance changes.
  - Neither ads spend nor Seller Plus earns it.

---

## 6. Business buyer channels (Fiverr Business, Pro and Enterprise)

- Fiverr's **2024 Summer Product Release** was titled "Fiverr Shows Its Transformation From a Services Marketplace to a Hiring Platform". [OFFICIAL title] (S62)
- In mid-2026 (Q2 2026 results, CFO Esti Levy Dadon), sellers read the remarks as: higher AOVs, fewer low-cost one-off transactions, more comprehensive high-value projects, and freelancers succeeding as "trusted experts and strategic partners". [T3 summarising official remarks] (S30)
- **[BACKGROUND, unverified]:**
  - **Fiverr Business** launched in 2020 as a team-buying product and was later folded into Fiverr's "Pro" business offering.
  - **Fiverr Enterprise** (from the 2021 acquisition of Stoke Talent) is a freelancer-management system for large companies.
  - Sellers can't opt into these channels directly. Business buyers tend to reach Pro, vetted and agency sellers, and sellers with strong B2B signals.
- **Implication for DESORA:** build B2B signals now:
  - clear agency positioning
  - case studies
  - business-grade packages (retainers, monthly plans)
  - reliable communication hours overlapping EU and US
  - a push toward Pro or agency status

---

## 7. Other programs: Workspace, Agencies and Affiliates

- **Fiverr agencies.** There is a dedicated Help Center article, "Fiverr agencies" (S52, title only). [OFFICIAL existence]
  - **[BACKGROUND, unverified]:** an agency profile type lets a team sell under one brand, with team members and agency-level presentation.
  - DESORA is an agency, so this is its most natural profile type. **Top priority to verify:** requirements, application steps, and fee or commission differences.
- **Fiverr Workspace.** **[BACKGROUND, unverified]:** formerly AND.CO, acquired in 2018 and rebranded Fiverr Workspace. It offered freelancer invoicing, proposals, contracts and time tracking, with a free tier. Its **status in 2025–2026 is unverified** (possibly sunset). Don't build processes on it without checking.
- **Fiverr Affiliates** (affiliates.fiverr.com) has published "Affiliates New Commission Structure 2024" and "We've updated our CPA commissions" (S63, S64, S65). [OFFICIAL titles]
  - **[BACKGROUND, unverified]:** plans have included CPA per first-time buyer (varying by category, higher for Pro), hybrid CPA plus revenue share, and revenue share. Commissions are tied to **new** buyers.
  - **Can sellers use it?** Joining is generally open to anyone with an audience. Earning commission on **your own purchases** or on buyers you steer to **your own gigs** is a classic self-referral pattern that affiliate terms usually prohibit. **Treat it as risky until the current Fiverr Affiliates terms are read.**
  - A safe use for DESORA's content and blog: recommend *complementary* Fiverr categories you don't sell (e.g. voice-over). Disclose affiliate links.

---

## 8. External traffic: rules, strategy and the ranking debate

### 8.1 Official rules [OFFICIAL] (S7, S8, S55–S57)

- **Allowed and encouraged:**
  - Facebook, Instagram and Google ads and web banners that drive targeted traffic to your gigs, with accurate, high-quality visuals, always sending traffic to your **Fiverr profile or gig page**
  - guest posts, podcasts, and collaborations with freelancers in complementary fields, with your Fiverr profile link in every contribution
- **Required:**
  - Point every call to action to Fiverr.
  - Keep all client conversations on the platform.
  - **Never share personal contact information.**
  - Read each community's rules before posting anything promotional.
- **Prohibited (spam):**
  - unwanted, repeated, disruptive messaging
  - commercially motivated solicitations that drive attention *outside* Fiverr
  - **artificial tools or automation** (software, scripts, bots) for mass messaging
  - contacting Fiverr users with offers unrelated to their gigs, requests or orders
- Fiverr's policy set in 2025–2026 includes "Community Standards", "Integrity and Authenticity" and "Policy Violations Explained". These are the documents behind review-manipulation and fake-activity enforcement. (S55, S56, S57; titles only)

### 8.2 The ranking debate: does external traffic hurt? [DISPUTED]

- **Claim A (common forum and YouTube belief):** external visitors who don't buy lower your gig's conversion rate, and the algorithm then demotes the gig.
- **Claim B (official stance plus reasoning):**
  - Fiverr officially encourages external promotion (S7).
  - The ranking inputs are relevance, historical client interest, satisfaction and reviews, price, availability and responsiveness (S9).
  - Its staff blog tells sellers to bring off-platform clients in (S17).
  - The ads funnel segments traffic by source (S60).
- **Reasoned verdict:**
  1. External clicks don't create *search impressions*, so they can't lower search click-through rate.
  2. Whether Fiverr counts external visits in a gig-level conversion metric is **not publicly documented**. That part of the risk is unknown.
  3. Targeted, high-intent traffic (your own leads, content readers who arrive already wanting the service) converts and creates orders and reviews. Those are the strongest ranking inputs, so the net effect is positive.
  4. Untargeted traffic (group link-dumps, "promotion" gigs that send clicks, traffic exchanges, bots) converts at close to zero. It is useless at best, possibly harmful to metrics, and bots are an **artificial manipulation / ToS risk**.
- **Rule for the advisor:** "Send only people who already want the service. Prefer sending them to a specific gig or your profile *after* they're warmed up by content. Never buy traffic."

### 8.3 Channel strategy for a Moroccan marketing agency

Channel choice below is analytic, grounded in the S7 guidance.

| Channel | Role | DESORA tactic | Link target |
|---|---|---|---|
| LinkedIn (founder + company page) | B2B trust, highest-AOV buyers | 2–3 posts/week: mini case studies, before/after metrics, teardown carousels. Featured section → Fiverr profile. | Fiverr profile or agency page |
| Instagram / TikTok | Proof of creative quality | Reels with 15–30s before/after edits, "3 hooks for X" | Link in bio → your own landing page listing gigs |
| YouTube | Search-driven evergreen demand | Tutorials on buyer problems ("How to fix low Instagram reach for restaurants") that end with an offer to do it for them | Specific gig in the description |
| Pinterest | Design portfolio discovery | Pins of brand kits and templates | Profile or gig |
| Blog / SEO (DESORA website) | Long-tail buyer intent, plus GEO/AI search visibility (Fiverr's Aug 2025 staff blog discussed "SEO to GEO", S78) | Articles targeting "[service] for [niche]" with a "Hire us on Fiverr" block | Gig |
| Behance / Dribbble | Portfolio credibility | Case studies | Profile |
| Email signature, proposals, invoices | Passive, zero-cost | "Hire DESORA on Fiverr: verified reviews, secure payment" | Profile |
| Existing off-platform clients | Reviews and ranking | Invite them to order through Fiverr when it makes sense (official tip, S17) | Specific gig |

**Measurement:** use your own-domain redirect links (e.g. desora.ma/fiverr-seo) or a link shortener to count clicks per channel, and compare with spikes in Fiverr analytics. Fiverr's internal analytics show Organic vs Ads (S60). External referrers are not documented as a separate bucket.

### 8.4 Risky practices to avoid (ToS or quality risks)

- Buying "Fiverr gig promotion" services or traffic that deliver clicks or bots. This is artificial activity with no buyers.
- Posting gig links in unrelated Facebook, WhatsApp or Telegram groups and "gig promotion" communities. This is spam, attracts other sellers rather than buyers, and gives zero conversions.
- Automated DMs or mass messaging, on or off Fiverr. Explicitly prohibited (S8), and it breaks LinkedIn and Instagram terms too.
- Friends, family or employees ordering to generate reviews, or any incentivised reviews. This violates integrity policies (S56) and risks a ban.
- Sharing email, phone or WhatsApp in Fiverr messages. Moving Fiverr-sourced clients off-platform to pay. (S7)
- Using affiliate links on your own purchases or gigs (self-referral).
- Promoting in the Fiverr Community forum outside rules-sanctioned spaces [BACKGROUND, unverified].

---

## 9. Investor and official context: why Fiverr pushes ads and subscriptions

- investors.fiverr.com was **not reachable** this session. I read no shareholder letters.
- **[BACKGROUND, unverified]:** in 2023–2025 earnings materials, Fiverr repeatedly credited **"services revenue"** as a key driver of take-rate expansion. That line covers Promoted Gigs/Fiverr Ads, Seller Plus and similar seller-paid products. Take rate was reported in the high-20s % range.
- **[BACKGROUND, unverified]:** in September 2025 Fiverr announced a restructuring (roughly 30% of staff) to become an "AI-first" company.
- **Implication (analytic):** Fiverr has a structural revenue incentive to expand seller ad spend. The October 2025 cap increase (S27) is consistent with that. The advisor should judge ads **only** on DESORA's own profit data, not on Fiverr's recommendations: the recommended budget and "No CPC cap".
- The 2026 marketplace signals (S30, S61) point one way: expert positioning and higher AOV. That direction also makes ads more viable, because break-even CPC rises in proportion to AOV.

---

## 10. Myths and reality

| Myth | Reality | Tag / Sources |
|---|---|---|
| "Ads will get a new gig its first orders." | Ad reach scales with Match Score (appearance plus delivery quality). New or weak gigs get few impressions, and clicks rarely convert without reviews. | [OFFICIAL + CONSENSUS] S11, S15, S19 |
| "A higher daily budget always means more sales." | Budget buys time at the top only if you win auctions. Sellers who drastically raised budgets report no proportional gains. | [ANECDOTAL] S21, S26, S31 |
| "The dashboard ROAS is my profit." | Dashboard revenue is gross, before the 20% commission, with 30-day last-click attribution. Break-even ROAS is about 1.8–3.1× for real delivery costs. | [OFFICIAL mechanics + analytic] S2 |
| "I pay my bid on every click." | You pay up to your cap, often less: "only the minimum needed to win". | [OFFICIAL] S1 |
| "The CPC cap max is $3." | **Outdated.** Since 15 Oct 2025 the max is $6 and the minimum bid is $0.05. | [OFFICIAL/community] S27, S1 |
| "You need Level 2 or TRS for Promoted Gigs." | **Outdated.** It launched for experienced sellers. Level 1 sellers have had access since at least about 2022, but eligibility isn't guaranteed. Current Help Center text only says "active Gigs". | [DISPUTED] S12, S16, S1 |
| "Ads boost organic ranking directly." | Unproven. Ad-driven orders and reviews feed organic signals indirectly. | [Analytic] S9 |
| "Running ads hurts organic ranking." | No evidence. | [Analytic] |
| "Seller Plus boosts your ranking." | No source claims this. It sells insights, education, a Success Manager and a $5 ads credit. | S3, S6 |
| "External traffic kills your gig." | Only junk traffic is a problem. Fiverr officially encourages targeted external promotion that points to Fiverr. | [DISPUTED → verdict] S7, S9, S17 |
| "Sharing gig links everywhere = free promotion." | Spam rules apply. Untargeted links attract no buyers. | [OFFICIAL] S7, S8 |
| "Buy a 'gig promotion' service to get impressions." | Bot or low-quality clicks are artificial activity with no buyer intent. ToS and account risk. | [OFFICIAL spirit] S8, S56 |
| "Fiverr's recommended budget and 'No cap' are optimal for me." | They optimise competitiveness and revenue per click, not your margin. They can bid up to $6. | [OFFICIAL + analytic] S1 |
| "Fiverr's Choice or Pro can be bought via ads or Seller Plus." | Fiverr's Choice is awarded for quality and satisfaction. Pro is vetted. | [OFFICIAL] S9, S51 |

---

## 11. Playbooks

### 11.1 Fiverr Ads launch and optimization protocol

**Phase 0: Pre-flight checklist** (all must be true)

1. The gig is eligible: it shows under Growth & Marketing → Fiverr Ads (S1).
2. The gig has at least 5 reviews at 4.8 or higher, or at least 3 recent strong reviews in a niche. [Analytic threshold]
3. Organic CR is known: at least 100 organic clicks of history. Organic CR ≥ 1.5% is a good sign. [Analytic]
4. The gig card is polished: a clear benefit title, a thumbnail readable at mobile size, a 30–60s video, and 3 packages with a strong middle tier.
5. Capacity is available for +30% orders without late deliveries. Late deliveries hurt the Match Score and Success Score (S11, S75).
6. Net contribution per order (C) is computed (§12).

**Phase 1: Set up (Day 0)**

- Choose **one** gig: the one with the highest C × CR.
- Bidding: **manual CPC cap** = 0.7 × break-even CPC, rounded. Use "No cap" only if break-even CPC is at least $6.
- Daily budget = the lesser of (a) $5–7 or (b) the test budget ÷ 21 days.
- Test budget = (3 ÷ target CR) × expected CPC. Example: 150 clicks × $0.80 = $120.
- Create the log sheet (§12.4).

**Phase 2: Learning window (Days 1–21)**

- Check daily for 5 minutes, but don't change settings more than once every 7 days.
- **Impressions are low, below about 300 a week:**
  - If the cap is under break-even, raise it by 15%.
  - If the cap is already at break-even, the gig's Match Score is the limit. Improve the card and delivery; don't raise the cap further.
- **Impressions are high but CTR is under about 0.8%:** fix the card (thumbnail, title, starting price). [Analytic threshold; S2 guidance]
- **CTR is fine but CR is low:** fix the gig page, FAQ, packages and response time. Consider the Fiverr Go assistant for speed (S5).

**Phase 3: Decision (Day 21, or 3 ÷ target CR clicks)**

- **Zero orders at 3 ÷ target-CR clicks:** stop. Your true CR is likely below target (rule of three).
- **Rolling ROAS below break-even ROAS:** stop, or cut the cap by 20% and re-test once.
- **ROAS between break-even and 1.5 × break-even:** keep, but don't scale. Improve CR.
- **ROAS at or above 1.5 × break-even:** scale the budget by 20–30% per week, and keep watching CPC drift and capacity.

**Phase 4: Incrementality check (monthly)**

- Compare **total** gig orders and revenue over the 4 weeks before ads, the ad weeks, and 2–4 weeks after a pause.
- Ads should add orders beyond what the dashboard attributes to organic displacement. If total orders don't rise much, ads are cannibalising organic sales.
- Remember the 30-day attribution tail: orders keep being credited for 30 days after the last click (S2).

**Phase 5: Maintenance**

- Re-test paused gigs every quarter, since competition and CPCs shift (S24, S27).
- Scale at most 2–3 gigs at once, each with its own break-even.
- Pause during capacity crunches, big gig rewrites and holidays with low buyer demand.

### 11.2 Seller Plus decision framework

1. **Which tier can you buy?** Unleveled sellers get Kickstart (~$15). Level 1–2 get Standard (~$25). Anyone who wants a Success Manager needs Premium (~$49, or ~$38 on annual billing). Verify eligibility and prices in-app (S3, S4).
2. **Compute payback:**
   - Payback in orders = price ÷ C.
   - If you run ads anyway, subtract the $5 ads credit (Standard and Premium).
3. **Commit to a usage routine.** Buy only if a named person will do this every month:
   - (a) export search-term and impression insights
   - (b) update titles, tags and descriptions
   - (c) benchmark competitors' packages
   - (d) hold a Success Manager call with a written agenda (Premium)
4. **Premium extras:** Premium is worth considering when **either** of these holds:
   - Fiverr Go's Personal Assistant (~$29 standalone) is wanted and confirmed to be included, so the net Premium premium drops sharply.
   - DESORA has 3 or more active gigs and monthly revenue of at least $1,500, where Success Manager escalations have value.
5. **Trial and review:** run a 90-day trial with KPIs (impressions, CTR, CR, orders). At day 90, keep it only if the KPIs improved after actions taken on Seller Plus insights. Otherwise cancel.
6. **Never** expect a ranking boost from the subscription itself.

### 11.3 External traffic plan for DESORA (90 days)

**Weeks 1–2: Foundation**

- Build a "Hire DESORA on Fiverr" page on the DESORA website. List the gigs with a short proof point each, and link to the Fiverr profile. Add Fiverr review screenshots only as they genuinely appear.
- Create tracked redirect links for each channel and gig (e.g. /go/fiverr-social, /go/fiverr-logo).
- Update email signatures, LinkedIn (featured section), Instagram and TikTok bios, and the Behance profile.

**Weeks 3–12: Content cadence**

- **LinkedIn:** 3 posts a week, mixing 1 case study, 1 educational carousel and 1 opinion or behind-the-scenes post.
- **Instagram and TikTok:** 3 reels a week showing before/after or "3 fixes for X" demos.
- **YouTube:** 2 long-form tutorials a month targeting buyer problems.
- **Pinterest:** 10 pins a week from portfolio assets.
- **Blog:** 2 SEO articles a month targeting "[service] for [niche]" keywords, each with a gig call to action.

**Always:** invite existing off-platform clients who fit a gig to order through Fiverr (S17).

**Guardrails**

- No link-dumping in groups.
- No automated DMs.
- No contact info in Fiverr messages.
- No incentivised reviews.
- Follow each platform's rules (S7, S8).

**Measure monthly**

- Redirect clicks per channel.
- Fiverr profile and gig impressions, clicks and orders.
- Share of new buyers citing an external channel (ask in the order requirements: "How did you find us?").
- Drop channels with fewer than about 1 order per 200 clicks after 60 days.

---

## 12. Templates, examples and formulas

### 12.1 Core formulas

- **Net per order:** N = AOV × 0.80, since Fiverr keeps 20%.
- **Contribution per order:** C = N × (1 − d), where d is delivery cost (labour, tools, subcontractors) as a share of N.
- **Ad conversion rate:** CR = orders ÷ clicks, from the Ads dashboard.
- **Break-even CPC:** CPC_BE = C × CR = AOV × 0.80 × (1 − d) × CR.
- **Break-even ROAS (on dashboard gross revenue):** ROAS_BE = 1 ÷ (0.80 × (1 − d)).
- **Target ROAS:** 1.5 × ROAS_BE, as a haircut for attribution and non-incremental orders.
- **Starting CPC cap:** 0.7 × CPC_BE.
- **Clicks needed to judge (rule of three):** n = 3 ÷ target CR.
  - 0 orders in n clicks puts the 95% upper bound of CR at about 3 ÷ n.
  - At 2%: 150 clicks. At 3%: 100. At 1%: 300.
- **Test budget:** n × expected CPC.
- **Optional lifetime-value (LTV) bidding:** C_LTV = C × (1 + r × k).
  - r is the share of ad-acquired buyers who reorder.
  - k is their average number of extra orders.
  - Use only with your own measured repeat data.
- **Seller Plus payback in orders:** price ÷ C.

### 12.2 Worked examples (d = 0.4)

| Gig | AOV | C | CR | CPC_BE | Cap start (0.7×) | Verdict on "No cap" (up to $6) |
|---|---|---|---|---|---|---|
| Logo design (crowded) | $60 | $28.80 | 1.5% | $0.43 | $0.30 | Never |
| Social media management (monthly) | $120 | $57.60 | 2% | $1.15 | $0.80 | Never |
| Paid ads setup and management | $300 | $144 | 2.5% | $3.60 | $2.52 | No |
| Full brand strategy package | $600 | $288 | 2.5% | $7.20 | $5.04 | Possible (CPC_BE > $6) |

### 12.3 Anecdote re-scored

A seller spent $12.88 and got $20 in sales (S23):

- Net after commission: $20 × 0.8 = $16.
- Contribution at d = 0.4: $16 × 0.6 = $9.60.
- Profit: $9.60 − $12.88 = **−$3.28**, a loss.

The dashboard ROAS of 1.55× is below the break-even ROAS of 2.08×.

### 12.4 Ads log template

Columns for Google Sheets:

`Week | Gig | Bidding mode | CPC cap | Daily budget | Impressions | Clicks | CTR | Avg CPC | Spend | Attributed orders | Attributed gross revenue | Net (×0.8) | Contribution (×(1−d)) | Profit (Contribution − Spend) | ROAS | ROAS_BE | Total gig orders (all sources) | Notes/changes`

### 12.5 Weekly ads review checklist

1. Spend vs plan
2. Impressions trend
3. CTR (card issue?)
4. CR (gig page or offer issue?)
5. Average CPC vs CPC_BE
6. Rolling profit
7. Capacity and on-time rate
8. At most one change, logged

### 12.6 Compliant external-promo snippets

**Email signature:**

> DESORA | Marketing & Brand Studio. Hire us on Fiverr, with verified reviews and secure payment: [fiverr.com/yourprofile]

**LinkedIn post call to action:**

> Want this for your brand? We deliver it as a fixed-price package on Fiverr (secure payment, reviewed work). Link in the Featured section.

**Order requirement question** (for attribution):

> How did you find DESORA? (Fiverr search / LinkedIn / Instagram / YouTube / Google / Referral / Other)

**Invite to an existing client** (S17-compliant):

> For this next project we'd like to run it through our Fiverr agency profile: you get Fiverr's payment protection and a clear package scope. Here's the gig link: [link]

Never include phone numbers or emails inside Fiverr messages.

---

## 13. Free tools and resources

| Name | URL | Purpose | Free tier? |
|---|---|---|---|
| Fiverr Ads dashboard | Seller dashboard → Growth & Marketing → Fiverr Ads | Impressions, clicks, CPC, spend, orders (30-day attribution) | Free to view; clicks cost money |
| Fiverr Analytics | Seller dashboard → Analytics | Organic vs Ads funnel, gig stats (S60) | Yes |
| Fiverr Help Center: Fiverr Ads section | help.fiverr.com/hc/en-us/sections/37329189210385-Fiverr-Ads | Official rules | Yes |
| Fiverr Ads webinar | help.fiverr.com/hc/en-us/articles/14981360009873 | Official training | Yes |
| Promoting your Gigs outside of Fiverr | help.fiverr.com/hc/en-us/articles/360010490438 | Official external-promo rules | Yes |
| Fiverr Community staff blogs (Platform guidance collection) | community.fiverr.com/public/collections/platform-guidance-2025-05-08 | Staff guidance on ranking, ads, keywords | Yes |
| Google Sheets | sheets.google.com | Ads log / break-even calculator | Yes |
| Google Search Console | search.google.com/search-console | Blog SEO for traffic that funnels to Fiverr | Yes |
| Google Analytics 4 | analytics.google.com | Track the "Hire us on Fiverr" page and outbound clicks | Yes |
| Bitly | bitly.com | Short, trackable links per channel | Limited free tier |
| Buffer | buffer.com | Scheduling LinkedIn, Instagram and TikTok posts | Free plan (limited channels) |
| Canva | canva.com | Gig thumbnails, carousels | Free tier |
| CapCut | capcut.com | Reels and TikTok editing | Free tier |
| Google Trends | trends.google.com | Demand seasonality for choosing when to run ads | Yes |
| Behance / Dribbble / Pinterest Business | behance.net / dribbble.com / business.pinterest.com | Portfolio discovery linking to the Fiverr profile | Yes |

[General tools are BACKGROUND knowledge. Their free-tier details can change.]

---

## 14. Open questions and unverified items (to verify in-app or when network access is restored)

1. **Current Fiverr Ads eligibility.** Is there still a rating or review threshold (4.7 rating, 20 reviews)? What makes a gig "not promotable"? (S36, S37)
2. **Minimum daily budget** for Fiverr Ads, and whether the recommended budget is category-based.
3. Whether the **$6 cap** applies only to "No CPC cap" automatic bidding or to manual caps too. Snippets say "CPC cap will double from $3 to $6".
4. Whether **Moroccan sellers pay VAT or tax** on Fiverr Ads ("in some countries Ads are taxed monthly", S19).
5. Exact **current Seller Plus prices** and feature lists per tier (Kickstart, Standard, Premium). Whether Premium includes the Fiverr Go Personal Assistant in 2026.
6. Seller Plus Success Manager quality. No outcome data found.
7. **Fiverr Go**: current prices, availability by country, and whether the Creation Model is still active after the 2025 restructuring.
8. **Fiverr agencies** program requirements and benefits, and any fee differences. **Top priority for DESORA.**
9. **Fiverr Pro** 2026 application criteria and turnaround.
10. **Fiverr Workspace** status (active or sunset).
11. **Fiverr Affiliates** current commission table, cookie length, and whether sellers may promote Fiverr via affiliate links without self-referral conflicts.
12. Whether Fiverr's ranking includes **external visits** in gig conversion metrics. Not documented anywhere seen.
13. Investor data: take rate, services revenue growth attributed to ads and Seller Plus, Fiverr Go adoption. investors.fiverr.com was unreachable.
14. Results of the "$22,787 on Fiverr Ads" video (S33) and the full content of the high-signal threads S24, S27 and S28.

---

## 15. Source index

See `07-sources.tsv`: 80 sources.

| | Count |
|---|---|
| Fetched | 0 (egress blocked) |
| Snippet sources with substantive text | 48 |
| Title- or date-only snippet sources (proving existence and topic) | 32 |
| Tier T1 (official) | 39 |
| Tier T2 | 2 |
| Tier T3 | 30 |
| Tier T4 | 9 |

Web searches run: 28 successful, plus 1 domain-filter error and 4 refused after the session cap of 200 searches was reached.
