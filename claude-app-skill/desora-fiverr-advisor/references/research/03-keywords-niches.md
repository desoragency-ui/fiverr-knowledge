# DESORA Fiverr Knowledge Base — Cluster 03

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.

# Keyword Research, Niche Selection, Demand Validation & Gap Finding

Compiled: 2026-09-26 · Research agent 03 of 12 · For: DESORA (marketing agency, Morocco) Fiverr advisor subagent

---

## 0. Read this first: what this document can and cannot claim

**Research conditions (be aware before you rely on anything here).**
- The research sandbox's network policy **blocked WebFetch for every Fiverr domain** (fiverr.com, help.fiverr.com, community.fiverr.com, investors.fiverr.com, blog.fiverr.com, pages.fiverr.com). It also blocked Reddit, Medium, Quora, Wikipedia, the Chrome Web Store, stocktitan, accio, arXiv, Kaggle and Hugging Face. Only developer hosts (github.com, raw.githubusercontent.com, sourceforge.net) could be fetched.
- WebSearch worked, but the **session-wide search budget (200 searches shared by all 12 agents) ran out after this agent's 11th search**. So the official Fiverr material below comes from **search-result snippets and search-engine summaries**, not from reading full pages. Where a snippet is the only evidence, the claim is marked (snippet).
- Full pages that were fetched (72, almost all on GitHub; about 38 substantive, the rest index, search or empty pages) were used for tool mechanics, ToS-risk evidence, open-source scoring models, and cross-marketplace (Upwork) demand data.
- Anything taken from the analyst's prior knowledge and **not re-verified in this session** is tagged **[BACKGROUND]**. Treat it as a hypothesis to check (the check method is given) until the owner or a later research run confirms it.

**Evidence tags used**
- **[OFFICIAL]**: published by Fiverr (Help Center, Fiverr Community blog by staff, Business Trends Index press releases, Fiverr SEO landing pages). All of these were read as snippets here.
- **[CONSENSUS]**: 3 or more independent non-official sources agree.
- **[ANECDOTAL]**: 1–2 non-official sources, or a single practitioner or tool author.
- **[DISPUTED]**: sources conflict. The verdict is given.
- **[BACKGROUND]**: prior knowledge, not re-verified this session.
- **[INFERENCE]**: the analyst's reasoning from cited evidence, labelled so it is never mistaken for a fact.
- Source IDs: **S##** = search snippet source, **F##** = fully fetched page (see 03-sources.tsv). **X-cluster** = a fact from another research cluster's source list in the shared research folder (snippet), cited only to cross-check.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **The title is the most important keyword lever you control.** Fiverr's own guidance says the algorithm **first scans Gig titles, then tags**, to match a query [OFFICIAL, S01]. Fiverr's Help Center describes relevance to the query as the most important ranking input (X-cluster 02: "Fiverr's search and recommendation system"). Put the primary buyer phrase in the first words after "I will".
2. **Fiverr autocomplete is the best free source of real buyer queries.** Fiverr itself recommends the suggestions that appear as you type, calling them "typically the most popular searches related to your query" [OFFICIAL, S01]. Practitioner guides agree [CONSENSUS, S20, S21, S22, S25]. Use a logged-out or incognito window to reduce personalization [ANECDOTAL, S20]. Suggestion ordering is not a volume ranking: Fiverr's URL parameters show several suggestion types, such as `recent-gigs-suggest` [F31].
3. **Seller Plus "Keyword Research" is the only first-party source of search volume and competition data.** You filter by category and subcategory, then sort by Search Volume (to find demand) or Competition (to find gaps). It covers the whole marketplace, not just your gigs, and complements the gig-specific "Top Keywords" report [OFFICIAL, S02]. For an agency planning 3–10 gigs, this is the most defensible paid research tool.
4. **"Services available" measures supply, not demand.** The count on a search results page (a notation also used by the open-source scorer in F21/F25) tells you how many gigs compete. Demand has to be estimated separately, from review velocity, Seller Plus search volume, trend reports and autocomplete presence [INFERENCE, supported by F21/F25 design and S02].
5. **Use review dates, not review totals, to estimate current demand.** Total reviews are a lagging, lower-bound proxy for orders: not every buyer reviews, and the ratio is unpublished. Count the reviews dated in the last 30 to 90 days across the top 10 organic gigs. That is your velocity signal [INFERENCE; ANECDOTAL support S41, S42, F06].
6. **Competition thresholds are heuristics, not laws** [DISPUTED]. Low-trust guides claim a "beginner-viable" band of 50–2,000 competing gigs (S16) or "low competition = under 10,000 sellers" (S15, S17). A 2026 open-source scorer uses a log scale: 200 gigs is low, 2,000 is moderate and 20,000+ is saturated (F21, F28). Verdict: use the log-scale bands, but only together with a demand check. A count of zero means "untested", not "opportunity" (F21).
7. **Long-tail and combination keywords cut competition by one to two orders of magnitude.** Combining platform, deliverable and industry works this way. One practitioner example is "vapi + n8n" at about 24 competing gigs versus 10,000+ for broad terms [ANECDOTAL, F04]. The mechanism is logically sound, but the specific numbers are unverified.
8. **Fiverr's official 2025–2026 demand signals favour AI implementation and AI-assisted content** [OFFICIAL, snippets]:
   - AI-agent freelancer searches rose 18,347%. GoHighLevel rose 1,489%, Make.com 1,083%, Substack 2,028% and Beehiiv 1,211% (Spring 2025 BTI) (S03).
   - AI video creators rose 66% over six months. Other rises: faceless YouTube creator +488%, AI automation +136%, prompt engineering +76%, faceless YouTube editor +59%, AI influencer +43% and AI music video +25% (Fall 2025 BTI) (S04).
   - Claude Code specialists rose 938% over six months (2026 BTI) (S05).
   - AI-related video and animation demand rose 278% year over year, against programming/tech implementation at +94% and marketing workflows at +62% (June 2026) (S06).
9. **Read the Business Trends Index growth figures as direction, not size.** Four-digit growth percentages come from tiny starting volumes, and the reports are Fiverr marketing [INFERENCE]. Before building, confirm absolute demand with review velocity or Seller Plus search volume.
10. **DESORA's best-evidenced niches sit where marketing meets AI content and automation.** These are AI video ads and UGC, short-form and faceless YouTube production, marketing workflow automation (GoHighLevel, Make, n8n), and newsletter setup and growth (Beehiiv, Substack) [INFERENCE from S03–S06 and F41].
11. **Commodity writing, translation and admin support are shrinking, and generic graphic design is crowded and low-paid.** Upwork data (Feb–Mar 2024) shows statistically significant declines in "Writing & Translation" and "Admin & Support", with no category significantly rising (F44). In a 2024 dataset of 53k postings, graphic design had the most postings but the lowest pay, averaging $109 (F43). Academic studies point the same way [BACKGROUND]. The move is to reposition toward judgment-heavy services: strategy, editing of AI output, brand systems and performance marketing.
12. **Run a competitor teardown when you start a gig and whenever orders fall.** Do it at least yearly, and quarterly while you are new. Analyse starting prices, how prices step up across the three packages, add-ons, and description formatting, CTA and tone, for both "direct and legacy competitors" [OFFICIAL, S45].
13. **Three- and four-star reviews are the cheapest gap-finding tool.** They name the exact failure points of incumbents: communication, speed, revisions, niche understanding and technical quality. Review wording is also buyer vocabulary for titles and FAQs [INFERENCE; practitioner consensus, S20, S21].
14. **Tag limits: 5 tags of up to 20 characters each** [CONSENSUS, S35, X-cluster 02, F22]. The title allows 80 characters, of which about 60–65 show on gig cards [ANECDOTAL, S35]. Tags are not displayed on gig pages (S46), so "tag extractor" extensions read them from page data (F10, F14, S47).
15. **Search results are personalized.** Language, perceived urgency (which favours fast delivery) and past behaviour all shape them (X-cluster 02, official). Never judge a keyword's page one from your logged-in seller account. Use a logged-out or incognito window and, where possible, a second device or location.
16. **Fiverr's `/gigs/<keyword>` SEO landing pages show demand Fiverr has already observed.** Examples include "24 Best Keyword Research SEO Services To Buy Online". Misspelled slugs such as `/gigs/keyword-resarch` suggest these pages are generated from real buyer queries, and each shows a services-available count, for example 207 for "niche analysis" [OFFICIAL pages as snippets S39, S40; the interpretation is INFERENCE].
17. **Scraping Fiverr at scale means defeating bot protection, which is a ToS and account risk.** Open-source scrapers document PerimeterX challenges (F08), Cloudflare and TLS-fingerprint impersonation (F14), IP blocking and JavaScript rendering (F13). Their own authors warn that "web scraping may violate Fiverr's Terms of Service" and advise against automated competitive monitoring at scale (F14). DESORA should do manual research or use first-party tools.
18. **Avoid browser extensions that automate or fake account signals.** Examples: an "auto online status keeper" (F56), and an AI autofill that fabricates work-experience entries with randomized dates and companies while simulating human typing (F57). These create misrepresentation and manipulation risk.
19. **Validate a niche with a minimum viable gig before building a whole catalogue.** Launch 3–4 gigs in the lowest-competition, demand-proven niches first. Add premium upsells after about 5 reviews and adjacent niches after that (F22, F04, both practitioner frameworks). Give each launch a 14–30-day read of impressions → clicks → orders.
20. **Batch your edits.** Editing a gig can temporarily remove it from search while it re-indexes (X-cluster 02, Help Center "Can't find your Gig"). Daily title tweaks therefore corrupt your own keyword tests.
21. **Cross-market check: automation buyers want intermediate or expert help, not beginners.** In 700 Upwork n8n postings (Feb 2026), only 2.9% were entry-level, 55.9% intermediate and 41.3% expert. The median fixed budget was $150 (mean $443) and the median hourly rate $25 (F41). That supports expert-positioned, outcome-based automation gigs over cheap entry gigs.
22. **Google Trends is free and good for seasonality and platform momentum** (F53). The popular Python wrapper `pytrends` was **archived on 17 April 2025** (F30), so use the web interface. An official Google Trends API alpha exists [BACKGROUND]. Autocomplete aggregators (AnswerThePublic, Soovle, Keyword Sheeter, Answer Socrates) show how buyers phrase needs on Google, which is upstream of Fiverr (F35, F53).

---

## 2. How Fiverr search uses keywords (the mechanism you are optimizing for)

### 2.1 What is officially known
- **Matching order: title first, then tags.** "When a buyer enters a search query, the algorithm first scans Gig titles to find relevant offerings. Then, it scans tags to gain a better understanding of each Gig" [OFFICIAL, S01, Fiverr Community blog, 2025-10-09].
- **Title and tag roles.** The title should carry "the strongest keywords that best explain your service and have strong marketplace demand". Tags should "complement your title and give the algorithm more context" [OFFICIAL, S01].
- **Ranking is more than keywords.** Help Center snippets gathered by cluster 02 say relevance is the most important factor. The other factors are historical client interest in similar listings, client satisfaction scores, review scores, pricing, availability and responsiveness. Late deliveries, cancellations and low response rates reduce how often a gig appears [OFFICIAL, X-cluster 02].
  - Implication [INFERENCE]: keyword research gets you into the candidate set. Conversion and fulfilment performance decide where you sit in it. A perfectly keyworded gig with poor click-through or conversion will sink.
- **Personalization.** Results are "best fit per individual search", not one fixed ranking. Fiverr uses the languages clients speak, and when it detects urgency it favours freelancers who can deliver quickly [OFFICIAL, X-cluster 02].
  - Implications [INFERENCE]: (a) always audit a search results page logged out or incognito; (b) delivery speed is itself a keyword-adjacent lever for urgent queries; (c) a language gap such as French can be a ranking advantage for buyers whose interface or language signals match.
- **Search filters come from gig metadata.** Budget, delivery time, seller language, seller location and service-specific options [OFFICIAL, X-cluster 02]. During gig creation you choose metadata attributes (the "service options" buyers filter on). Wrong or missing metadata can exclude a gig from filtered searches [BACKGROUND; verify in the gig editor].
- **Edits can temporarily remove a gig from search while it re-indexes** [OFFICIAL, X-cluster 02, Help Center "Can't find your Gig"].

### 2.2 What the page itself exposes (useful for research)
- A search results page shows, per gig: title, starting price, seller level, rating, number of reviews and delivery time. Some tools also capture queue status [ANECDOTAL, S41; F14; F15].
- The results page returns **up to 48 gigs** per page. Sort options include relevance, best-selling, newest and price [ANECDOTAL, F14 tool documentation; BACKGROUND agrees on 48].
- The page shows a total count, "X services available" [ANECDOTAL, F21/F25 describe users reading this number; S39 shows the same notation on /gigs/ landing pages]. Verify the exact wording and whether large numbers are rounded or capped [open question].
- Result cards can carry "Fiverr's Choice", Pro and ad badges [OFFICIAL, X-cluster 02]. Scraper outputs include "search position", "Fiverr's Choice", "Featured", "video intro", "consultation available" and "recurring options" (F15). This shows what a card displays.
- **Autocomplete telemetry.** A captured 2022 search URL contains `source=top-bar&acmpl=1&search-autocomplete-original-term=nft&search-autocomplete-available=true&search-autocomplete-type=recent-gigs-suggest&search-autocomplete-position=0` (F31). Fiverr therefore logs whether a buyer clicked a suggestion, which suggestion type it was, and its position [ANECDOTAL/primary artifact]. Autocomplete is plainly part of the buyer journey. Its ordering may mix popularity, recency and personalization, so do not read suggestion order as a volume ranking [INFERENCE].
- **Tags are hidden from buyers** on gig pages (S46 forum report). Tags still exist in the page's embedded data, which is how extractor extensions and scrapers read them (F10 "initial props" JSON; F14 "Perseus SSR data blob" includes tags). [ANECDOTAL, consistent across 3 technical sources, so effectively CONSENSUS on the mechanism.]

### 2.3 Hard limits for keyword placement
| Field | Limit | Evidence |
|---|---|---|
| Title | Starts with "I will"; max 80 characters; about 60–65 visible on cards (cluster 02 found 50–59 cited) | [CONSENSUS] S20, S35, F22, X-cluster 02; card visibility is [ANECDOTAL/DISPUTED] |
| Tags | 5 tags, up to 20 characters each | [CONSENSUS] S35, F22, X-cluster 02 |
| Description | 1,200 characters | [CONSENSUS] F04, F22, X-cluster 02 |
| Tag count advice | "3–4 accurate tags" (S35 summary) vs "exactly 5" (F22) | [DISPUTED]. Verdict: use all 5 if all 5 are genuinely relevant. Irrelevant tags gain nothing and misrepresent the service. |

---

## 3. Where to find the words buyers actually use (sources ranked by trust)

| Rank | Source | What it gives you | Trust / notes |
|---|---|---|---|
| 1 | **Seller Plus → Advanced Analytics → Keyword Research tab** | Marketplace-wide keywords by category/subcategory, sortable by Search Volume and Competition. Third-party descriptions also mention conversion rate (S27, S20). Use with **Top Keywords** (your own gig's keyword performance) | [OFFICIAL, S02]. Paid (Seller Plus). It may list keywords unrelated to your gig, so it is a discovery tool. Which plan tier includes it: verify (cluster 06/08 cite "Seller Plus Standard and Premium") |
| 2 | **Your own Gig analytics** (impressions, clicks, orders, and the search terms that brought traffic where shown) | Ground truth for *your* gig | [OFFICIAL, S02 and X-cluster 06]. Needs a live gig |
| 3 | **Fiverr search-bar autocomplete** | Real buyer phrasings; long-tail modifiers | [OFFICIAL endorsement S01; CONSENSUS S20–S25]. Use incognito; ordering is not volume (F31) |
| 4 | **Category and subcategory pages plus search filters** ("service options", metadata values) | Fiverr's own taxonomy: the attribute vocabulary buyers filter by | [BACKGROUND]. Very reliable because it *is* the index structure. A third-party 2026 taxonomy snapshot lists Automation sub-niches (Workflow, Zapier, n8n, Make) and Digital Marketing > Methods (Email, Strategy, Marketing Automation) (F70). This is not official, so verify on fiverr.com/categories |
| 5 | **Fiverr `/gigs/<keyword>` SEO landing pages** ("24 Best … Services To Buy Online") | Evidence that Fiverr has seen the query; a services count | [OFFICIAL pages S39, S40, S55]. Misspelled slugs (`keyword-resarch`) suggest they come from query logs [INFERENCE] |
| 6 | **Business Trends Index (BTI) and Fiverr news releases** | Rising search terms with growth percentages | [OFFICIAL, S03–S10]. Twice a year or more: Oct 2023, May 2025, Fall 2025, Dec 2025, 2026 AI edition, June 2026 editions exist (S07–S10, S05, S06). Percentages hide base size |
| 7 | **Competitor gig pages** (titles, packages, FAQs, reviews) | Vocabulary that already converts; buyer language in reviews | [OFFICIAL method S45]. Never copy text or images (originality/IP) |
| 8 | **Buyer Briefs** you receive (successor to Buyer Requests) | Verbatim buyer need statements | [X-cluster 06: official Help Center "Personalized offers (Briefs)"; forum threads ask whether Briefs are being discontinued, so status is DISPUTED/unclear in 2026] |
| 9 | **Google autocomplete, AnswerThePublic, AlsoAsked, Soovle, Keyword Sheeter, Answer Socrates** | How buyers describe the problem *before* reaching Fiverr; question-style long tails | [ANECDOTAL tool listings F53, F35]. Upstream intent, not Fiverr volume |
| 10 | **Google Trends** | Seasonality; platform or tool momentum (for example "gohighlevel" vs "clickfunnels") | [F53, F54]; free. pytrends archived (F30) |
| 11 | **Upwork job postings and public datasets** | Cross-market demand, budgets, skill co-occurrence | [ANECDOTAL/T3 data, F41–F44]. A different marketplace, so direction only |
| 12 | **Reddit (r/Fiverr, r/freelance, niche subs like r/shopify, r/PPC)** | Pain language; complaints about existing freelancers | [BACKGROUND]; could not be fetched this session |

**Autocomplete harvesting technique** [CONSENSUS for the basic method, S20–S25; the systematic expansion is BACKGROUND/INFERENCE]:
1. Open an incognito window, stay logged out, and use an English interface first. Repeat later for French if you are targeting francophone buyers.
2. Type a seed (for example "ugc"). Record every suggestion.
3. Expand alphabetically ("ugc a", "ugc b" …), with modifiers in front ("ai ugc", "tiktok ugc", "french ugc") and after ("ugc video for", "ugc ads for").
4. Add platform seeds (shopify, gohighlevel, n8n, make, klaviyo, meta ads, tiktok shop), industry seeds (real estate, dentist, restaurant, saas, skincare) and format seeds (9:16, vsl, reel, short).
5. Record each suggestion with the date, the interface language and whether you were logged out. Suggestions change over time.
6. Run each suggestion as a search and log its services-available count, then send it to demand checks (section 4).

---

## 4. Estimating demand (the hard part — Fiverr hides order volume)

Fiverr does not publish per-keyword order counts outside Seller Plus. Every other method is a proxy. Combine at least three.

| Proxy | How to read it | Strength | Weakness | Evidence |
|---|---|---|---|---|
| **Seller Plus Search Volume** | Relative or absolute search volume per keyword in a category | Best available; first-party | Paid; methodology not public | [OFFICIAL, S02] |
| **Review velocity on page 1** | Count reviews dated within the last 30 days (and 90 days) across the top 10 organic (non-ad) gigs | Measures *current* buying | Reviews under-count orders by an unknown ratio; one buyer can order many times | [INFERENCE]; UswaAbid framework uses ratings, Level-2 counts and pending orders (F06); the Ahad690 scorer uses median review count of the top 10, normalized at a ceiling of 500 (F21, F28) |
| **Total reviews on top gigs** | Long-run demand existed | Easy to read | Lagging; top gigs may be 5–10 years old | [ANECDOTAL, F21 uses the median of top 10] |
| **Orders in Queue (OIQ)** | Shown on gig pages; queued active orders | Real-time workload | Long delivery times inflate it; not shown for everyone; not a volume figure | [ANECDOTAL, S42, S43, F06; F14 captures "queue status"] |
| **Price range shown on reviews** | Reviews display the order's price band and duration | Shows what buyers *actually paid*, which often differs from the listed package | Needs verification | [BACKGROUND — verify on any gig page] |
| **Reviewer country flags** | Where buyers come from (for example FR, BE, CH, CA, AE, SA) | Language and market validation | Small samples | [BACKGROUND] |
| **BTI growth %** | Direction of search interest | Official, early signal | Base effects; PR selection | [OFFICIAL, S03–S06] |
| **Autocomplete presence** | The query is common enough to be suggested | Free, quick | Binary; personalization | [OFFICIAL/CONSENSUS] |
| **`/gigs/<slug>` landing page exists** | Fiverr has seen the query often enough to build a page | Free | Binary | [INFERENCE from S39, S40] |
| **Google search interest (Trends, Keyword Planner)** | Upstream awareness of the service or tool | Free; seasonality | Not Fiverr-specific | [F53, F54] |
| **Cross-market postings (Upwork)** | Buyers post jobs for this skill; budgets | Real budgets | Different buyer mix | [F41–F44] |

**Converting review velocity into an order estimate** [INFERENCE, with the assumptions stated]:
- `Orders_30d(gig) ≈ Reviews_30d(gig) / r`, where `r` is the unknown share of orders that leave a public review.
- Fiverr does not publish `r`. Seller anecdotes vary widely [BACKGROUND].
- Run sensitivity at `r = 0.3, 0.5, 0.7` and decide only if the conclusion survives all three.
- `Revenue_30d(gig) ≈ Orders_30d × median review price band` (or the Standard package price if price bands are not visible).
- Keyword demand index: `KDI = Σ Reviews_30d over the top 10 organic gigs` for the query, measured logged out. KDI is comparable across keywords when measured the same way on the same day.

**Rules of thumb (heuristics; calibrate on your own data)** [INFERENCE]:
- KDI of 0–4 → demand is unproven. Only enter with outside evidence, such as BTI, Seller Plus or existing clients.
- KDI of 5–40 → a healthy niche for a new seller if competition is low or medium.
- KDI above 40 → proven demand. Entry depends on incumbency (section 5), so go long-tail inside it.

---

## 5. Estimating competition

1. **Services available (supply).** Record the count for the exact phrase with no filters, then with the category filter. Map it on a log scale. The Ahad690 open-source scorer (MIT, 2026) uses piecewise-linear anchors on log10(count): 1→100, 200→70, 2,000→40, 20,000→0. Tiers are LOW ≤200, MEDIUM ≤2,000, HIGH above that. Its example: 24 gigs scores 82 (LOW) (F21, F28) [ANECDOTAL, but transparent and auditable].
2. **Incumbency on page 1.** What share of the top 10 or 20 organic gigs have 100+ reviews, Top Rated or Pro status, or Fiverr's Choice? [INFERENCE]
   - If most of page 1 is 500+-review Top Rated gigs, the head term is locked. Go long-tail.
   - If 25% or more of page 1 has fewer than 20 reviews, the algorithm is giving newer gigs exposure for this query, which is an entry window.
3. **Quality of incumbents.** Weak titles, generic thumbnails, no video, 4.6–4.8 ratings, no FAQ, or slow delivery all make the niche contestable even when counts are high [INFERENCE; the Fiverr staff teardown checklist S45 lists pricing, packages and description].
4. **Price floor.** If the page 1 median starting price is $5–$10, you are entering a price war. DESORA should not compete there [INFERENCE; supported by F43, where the most-posted category also had the lowest pay].
5. **Supply/demand ratio.** `SD = services_available / (KDI + 1)`. Lower is better. Compare only within one research session, because counts move daily [INFERENCE].

**Competition thresholds — conflict and verdict** [DISPUTED]:
- S16 (T4, 2026): "viable beginner niche: 50–2,000 existing gigs."
- S15/S17 (T4): "low competition = fewer than 10,000 sellers."
- F28 (open-source scorer): low ≤200, medium ≤2,000, high above 2,000, saturated at about 20,000.
- F04 (practitioner): combo niches with about 24 competitors versus 10,000+.
- **Verdict:** the 10,000 figure is too loose to be useful. For a new DESORA gig, aim for 200–2,000 services with KDI ≥5, or under 200 services if outside demand evidence exists. Above 2,000, enter only with a sharper long-tail title, a proven portfolio and premium positioning.

---

## 6. Competitor teardown framework

**Official baseline (Fiverr Community blog, "Performing a competitor analysis", 2025-05-20)** [OFFICIAL, S45]:
- When: on starting a new gig, or when orders decline. At least once a year, and at the end of each quarter while you are getting started.
- Pricing: starting prices, how basic, standard and premium prices step up, and which add-ons are offered.
- Description: formatting, calls to action, explanation and tone.
- Scope: "direct and legacy competitors".

**DESORA extended teardown (per competitor; do 8–10 per keyword)** [INFERENCE, built on S45, F06, F14, F15, F21]:

| Block | What to record | Why |
|---|---|---|
| Identity | Seller level, Pro or Top Rated, country, languages, member since, response time | Incumbency and trust barriers; language gaps |
| Search position | Rank for the query (logged out), ad or organic, Fiverr's Choice | Separates paid visibility from earned visibility |
| Title | Exact title; primary keyword position; modifiers (platform, industry, speed) | Keyword pattern that ranks |
| Tags | Only if visible through the related-tags area or a low-risk manual method; do not bulk-scrape | Context terms (section 11 covers risk) |
| Metadata | Service options chosen (visible through filters) | Filter coverage |
| Packages | Names; price B/S/P; ratio P÷B; delivery days; revisions; deliverables count; extras (fast delivery, source files, commercial use) | Pricing ladder and bundle gaps |
| Gallery | Thumbnail style (face, text, before/after); video present; PDF present | CTR differentiation |
| Description and FAQ | Hook, proof, process, FAQ topics, CTA | Objection handling you must match |
| Reviews | Total; count in last 30/90 days; rating; price bands and durations on reviews; reviewer countries; 3–4★ themes | Demand velocity, real price paid, gaps |
| OIQ | Orders in queue | Current load; possible delivery-speed gap |
| Weakness hypothesis | One sentence | Feeds the gap worksheet |

**Guardrails:** never copy a competitor's title verbatim, their description, their gallery images or their review screenshots. Fiverr's gig guidelines require original, accurate content (Help Center "Requirements and guidelines for your Gig", S33, snippet; X-cluster 04 notes modification reasons such as copied or misleading content). Record patterns, not text.

---

## 7. Review mining (buyer pains and buyer language)

**Procedure** [INFERENCE; the practice is a practitioner consensus in S20, S21 and the Fiverr staff teardown S45; no official "review mining" guide was found]:
1. For each of the top 10 organic gigs, sort reviews by most recent where the option exists [BACKGROUND], or read the latest 30.
2. Also pull every 3★ and 4★ review, and any 5★ review containing "but", "however", "only", "wish" or "next time".
3. Code each review into themes: Communication, Speed/Deadline, Revisions, Niche understanding, Technical quality, Creativity, Scope clarity, Value for price, Post-delivery support, Language/cultural fit.
4. Record verbatim buyer phrases for outcomes ("more sales", "looks premium", "converted") and for deliverables ("editable Canva files", "9:16", "subtitles").
5. Count theme frequency per niche. Recurring negatives across several incumbents are a **quality gap**. Recurring praise phrases are **table stakes** you must also promise.
6. Use buyer phrases (not your jargon) in the title modifiers, FAQs and package names.

**Why 3–4★ reviews matter** [INFERENCE]: 1★ reviews are often disputes. 3–4★ reviews come from buyers who received the work but saw a specific shortfall, which is the most actionable gap signal. Fiverr's 2024 private ratings also mean public stars flatter quality (X-cluster 06: private ratings are not shown publicly). Text themes are therefore more informative than the star average.

---

## 8. Gap-finding methods (where underserved demand hides)

| # | Gap type | Test on Fiverr | Evidence that the gap is real | DESORA-relevant example |
|---|---|---|---|---|
| 1 | **Industry/vertical** | Search "[service] for [industry]" and compare the count with the parent | Parent KDI high; vertical count far lower; reviews on generic gigs mention that industry | "meta ads for real estate agents", "social media for restaurants" |
| 2 | **Platform/tech stack** | "[service] + [tool]" (GoHighLevel, Make, n8n, Klaviyo, Beehiiv, TikTok Shop) | BTI growth for the tool (S03: GoHighLevel +1,489%, Make +1,083%, Beehiiv +1,211%); Upwork co-occurrence (F41: Zapier 12.7%, Make 12.4%, AI agent development 12.6% of n8n jobs) | "gohighlevel funnel and sms automation", "beehiiv newsletter setup" |
| 3 | **Language/locale** | Filter "seller speaks French/Arabic"; search French phrasings; check reviewer flags | Low French/Arabic supply; reviews from francophone or Gulf buyers on English gigs | French social media management, French voice/script for UGC, Arabic ad localization for Gulf brands |
| 4 | **B2B vs B2C** | Is page 1 aimed at hobbyists (cheap, fast) or businesses (strategy, reporting)? | Low B2B framing with high price bands on reviews | "LinkedIn content system for B2B SaaS founders" |
| 5 | **Delivery speed** | Filter 24h or 3-day delivery; compare the count with the total | Few express options; reviews praise speed; urgency favours fast delivery in personalization (X-cluster 02) | "24h UGC hook variations" as an extra or a separate gig |
| 6 | **Bundle** | Do incumbents sell only fragments (a video with no script, ads with no creatives)? | Reviews ask for "also did X"; extras widely bought | "Script + UGC + 3 hooks + captions" bundle; "ads + creatives + reporting" |
| 7 | **Quality** (3–4★ themes) | Section 7 coding | Two or more incumbents share the same complaint | Poor strategy; generic AI output; weak communication |
| 8 | **Format/spec** | "9:16", "vsl", "carousel", "faceless", "reel" | BTI format signals (faceless YouTube +488%, S04) | "faceless youtube automation channel editing" |
| 9 | **Price tier** | Map page 1 prices; is there a $150–$500 "done-for-you with strategy" tier? | Review price bands above listed starting prices | A premium tier with strategy call and reporting |
| 10 | **Trust/credential** | Few certified, Pro or agency sellers | Buyers in reviews mention "professional", "agency" | Fiverr Agency or Pro positioning (verify eligibility in cluster 01/08) |
| 11 | **Time zone/communication** | Seller locations on page 1 | Complaints about response times | Morocco (UTC+0 since 20 Sep 2026) overlaps Europe fully and part of the US East Coast day |
| 12 | **Recurring/retainer** | Do page-1 gigs offer subscriptions or monthly packages? | Repeat-buyer reviews; "monthly" in autocomplete | "monthly social media management" with subscription [BACKGROUND: gig subscriptions exist; verify availability per category] |

**Cross-market gap signal (Upwork)** [ANECDOTAL/T3 data]:
- Graphic design: 6,097 postings, the highest volume, but the "most overcrowded low-pay" category, with 2,803 jobs averaging $109 (F43).
- n8n automation: 700 postings in about 3 weeks, only 2.9% entry-level, a median fixed budget of $150 and 13.7% of fixed jobs at $1,000+ (F41).
- Conclusion [INFERENCE]: avoid commodity design as a lead gig. Automation and AI-implementation work supports expert pricing.

---

## 9. Long-tail strategy and keyword intent (for new sellers)

**Why long-tail first** [CONSENSUS on the practice: S20, S21, S25, F04, F22; mechanism is INFERENCE from the official ranking factors]:
- A new gig has no performance history (conversion, satisfaction, reviews), which the official ranking uses alongside relevance (X-cluster 02). On head terms the history-rich incumbents win.
- On long-tail queries the candidate set is small, so relevance dominates and a new gig can surface and collect its first conversions.
- Practitioner example: "minimalist logo for startups" reaches a smaller but more precisely matched audience than "logo design" (S20, T4).

**Fiverr-specific intent taxonomy** [INFERENCE; for DESORA use]:

| Intent | Pattern | Commercial value | Competition | Use in |
|---|---|---|---|---|
| Deliverable | "ugc video", "landing page" | High | Very high | Tag, title core |
| Platform/tool | "gohighlevel", "klaviyo flows", "n8n" | High (clear scope) | Medium | Title modifier, tags |
| Industry | "for real estate", "for dentists" | High (buyer self-identifies) | Low–medium | Title modifier |
| Problem/rescue | "fix", "recover", "migrate", "audit" | Very high (urgent) | Low | Separate gig or title |
| Format/spec | "9:16", "vsl", "30 sec", "faceless" | Medium–high | Medium | Tags, packages |
| Language/locale | "french", "arabic", "gulf" | Medium (smaller but underserved) | Low | Title modifier, tags, seller languages |
| Speed | "24 hours", "fast" | Medium | Low–medium | Extras; personalization favours speed |
| Outcome | "more leads", "increase sales" | Vague | High noise | Description, not title |
| Navigational | seller or agency names | None | n/a | Ignore |

**Title formula** [CONSENSUS on the "I will" front-load rule: S01, S20, F22]:
`I will [primary deliverable phrase from autocomplete] for [industry | platform] [one qualifier]` in 80 characters or fewer, keyword in the first 3–5 words, one offer per title, no pipes, all-caps, emojis or superlatives (F22).

**Tag formula (5 tags)** [ANECDOTAL F22 plus INFERENCE]:
- Tag 1 is the exact primary phrase. Tag 2 is the platform. Tag 3 is the industry or format. Tag 4 is a buyer synonym found in reviews or autocomplete. Tag 5 is a secondary long-tail.
- No duplicates. Don't repeat the category name (F22). Each tag 20 characters or fewer.

---

## 10. Niching down vs broad gigs

- **Case for niching** [CONSENSUS]: specific offers rank on long-tail queries and convert better. Examples: "Do one thing well"; "'I write texts' is insufficient, say 'precise Amazon electronics product descriptions in German'" (F38, T4). Combination niches cut competition sharply (F04). Practitioner playbooks launch several narrow gigs first (F22).
- **Case against over-niching** [ANECDOTAL + INFERENCE]: a query with zero services available and no autocomplete presence usually has no demand. The Ahad690 scorer explicitly labels gig_count = 0 as "UNTESTED" and never scores it as an opportunity (F21).
- **Verdict** [INFERENCE]: niche the title; keep demand coverage in the tags and metadata. Each gig should sit inside a parent category with proven KDI and win on a specific modifier (industry, platform, language or format). Build a portfolio rather than one broad gig:
  - Phase 1: 3–4 narrow gigs in the highest-opportunity niches.
  - Phase 2: premium upsell gigs after about 5 reviews.
  - Phase 3: 1–2 adjacent niches, with each gig cross-linking to 2–3 others (F22, F04; practitioner frameworks, unverified outcome data).
- Active-gig limits by seller level cap how many niches you can test [BACKGROUND: historically about 7 for new sellers, 10 at Level 1, 20 at Level 2 and 30 for Top Rated. Verify under the 2024 level system].

---

## 11. Validating a niche before (and right after) creating a gig

**Stage 0: desk validation (1–2 hours per niche)** [INFERENCE, using the official signals]
1. Autocomplete presence (logged out) — yes or no.
2. Services available (exact phrase, then with category filter).
3. KDI (reviews dated in the last 30 days across the top 10 organic gigs).
4. Incumbency (share of page 1 with 100+ reviews; share with fewer than 20).
5. Price: median Standard package price and median review price band.
6. Trend: BTI mention or Google Trends 12-month direction.
7. Seller Plus Keyword Research volume and competition, if subscribed [OFFICIAL, S02].
8. Gap evidence: at least one gap from section 8 confirmed.
- **Go** if (1) is yes (or there is strong outside evidence), (3) ≥5, the price median is at or above DESORA's floor, and there is at least one gap.

**Stage 1: external proof (optional, fast)**
- DESORA's existing clients who ask for this service. Inviting your own off-platform clients to order through Fiverr is allowed and encouraged by Fiverr staff (X-cluster 07: Fiverr Community blog 2025-07-23). Never ask anyone to leave fake or incentivized reviews.
- Cross-market check: are Upwork or LinkedIn postings asking for this exact service (F41–F44)?

**Stage 2: minimum viable gig (14–30 days)** [INFERENCE + OFFICIAL analytics features]
- Publish one gig with the long-tail title. Don't edit it for at least 14 days (edits trigger re-indexing, X-cluster 02).
- Read the funnel:
  - **Impressions low** → relevance or keyword problem, or the gig is not indexed. Check "Can't find your Gig" causes (X-cluster 02).
  - **Impressions fine, CTR low** → thumbnail, title wording or price display.
  - **Clicks fine, no orders** → offer, packages, proof or reviews. Consider a sharper niche.
- Kill or pivot if impressions stay near zero after 30 days despite a correct title and metadata. The query probably lacks demand.
- Fiverr Ads can buy impression data faster where eligible (X-cluster 07: Fiverr Ads facts). Treat ads as a paid test, not a fix for weak organic relevance.

---

## 12. Rising services 2025–2026 (official signals first)

| Signal | Figure | Period | Source |
|---|---|---|---|
| AI agents (freelancer searches) | +18,347% | Spring 2025 BTI; data "since Sept 2024", tens of millions of searches | [OFFICIAL, S03] |
| GoHighLevel / Make.com | +1,489% / +1,083% | Spring 2025 | [OFFICIAL, S03] |
| Substack / Beehiiv newsletters | +2,028% / +1,211% | Spring 2025 | [OFFICIAL, S03] |
| AI video creators | +66% | 6 months to Fall 2025 | [OFFICIAL, S04; S11 headline adds "as TikTok work grows"] |
| Faceless YouTube video creator / editor | +488% / +59% | Fall 2025 | [OFFICIAL, S04] |
| AI automation / prompt engineering | +136% / +76% | Fall 2025 | [OFFICIAL, S04] |
| AI influencer / AI music video | +43% / +25% | Fall 2025 | [OFFICIAL, S04] |
| Claude Code specialists | +938% | 6 months (2026 edition) | [OFFICIAL, S05; S12] |
| AI-related video & animation vs programming/tech implementation vs marketing workflows | +278% vs +94% vs +62% YoY | June 2026 BTI; "content creation is driving the fastest AI demand growth in 2026" | [OFFICIAL, S06] |
| Upwork n8n jobs: title words "automation" (381), "workflow" (98), "agent" (69), "voice" (49), "lead" (34) | 700 postings | ~3 weeks to Feb 2026 | [ANECDOTAL/T3, F41] |

**Reading these correctly** [INFERENCE]:
1. Growth percentages are relative to Fiverr's own earlier search volume. Four-digit growth means a near-zero base. Enter early only with a validation test.
2. These are PR releases, so they select the most impressive terms. Absent terms are not necessarily flat.
3. The June 2026 edition shows *content-side* AI (video, animation) growing fastest. That favours a marketing agency over pure developers.
4. **DESORA shortlist**, where the official trend meets agency skills:
   - AI UGC and video ads for e-commerce
   - short-form and faceless YouTube production
   - GoHighLevel, Make and n8n marketing automations (lead capture, CRM, follow-ups)
   - newsletter launch and growth (Beehiiv or Substack)
   - AI-assisted content systems with human editing and strategy

**Low-trust "trending lists" (T4) — use only as idea seeds.** These include AI art prompt editing, Notion templates, digital decluttering, brand books, UX writing ("~185 sellers"), and "AI content editing/humanizing (200–500 gigs, $20–60/article)" (S13–S18). None of these numbers could be verified. The "~185 sellers" and "$40,000/year" claims have no methodology and are treated as **unverified**.

---

## 13. Services under pressure from AI (declining or commoditizing)

| Evidence | Finding | Tag |
|---|---|---|
| Upwork postings, 39 clean days, Feb–Mar 2024 (F44) | "Zero categories significantly rising"; **Writing & Translation** (R²=0.44) and **Admin & Support** (R²=0.27) significantly declining | [ANECDOTAL/T3, rigorous method, short window] |
| Upwork 2024 dataset, 53k postings (F43) | Graphic design: most postings but the lowest average pay ($109) — crowded and commoditized | [ANECDOTAL/T3] |
| Academic studies [BACKGROUND, not re-fetched] | Hui, Reshef & Zhou (Organization Science 2024): after ChatGPT, freelancers in exposed occupations saw about 2% fewer jobs and about 5% lower monthly earnings, with similar effects for image work after image generators. Demirci, Hannane & Zhu ("Who is AI replacing?", Management Science): job posts in automation-prone writing and coding categories fell about 20% relative to manual-intensive work, and image-creation posts fell about 17% | [BACKGROUND — verify exact figures before quoting] |
| Cluster 10 (X-cluster, snippets) | Fiverr's 2026 results cite AI-driven traffic headwinds and a move "upmarket"; revenue fell in 2026 quarters; buyers spending more than $500 are the majority of marketplace revenue (20-F FY2024) | [OFFICIAL/T2 via X-cluster 10] |

**Implications for DESORA** [INFERENCE]:
- Avoid leading with low-ticket commodity services: generic blog writing, plain translation, basic logos, data entry, simple transcription.
- Reposition into AI-resilient framing. Buyers pay for judgment, accountability and results:
  - "AI content **editing & brand-voice QA**" rather than "article writing"
  - "**localization** and cultural adaptation of ads for French/Arabic markets" rather than "translation"
  - "**brand identity system** + guidelines" rather than "logo"
  - "**performance creative + testing plan**" rather than "social post design"
- Fiverr's own shift upmarket (X-cluster 10) implies higher-value, business buyers matter more. Package ladders should include a strategic premium tier.

---

## 14. Research tools: credibility and ToS risk

### 14.1 First-party and free (safe)
- **Fiverr autocomplete, search counts, filters, category pages, `/gigs/` landing pages, competitor gig pages viewed manually**: zero risk, highest relevance.
- **Seller Plus Advanced Analytics: Keyword Research and Top Keywords** [OFFICIAL, S02]. **Pricing Insights** compares your package prices with similar gigs ordered in the last 30 days. It was reported as limited to a few categories (Logo Animation, Logo Design, Article & Blog Posts) [OFFICIAL via search summary, S02 context — verify current coverage].
- **Google Trends, Keyword Planner (needs an Ads account), AnswerThePublic (limited free), AlsoAsked, Soovle, Keyword Sheeter, Answer Socrates, Keyword Surfer, Keywords Everywhere (credits), Ubersuggest (daily limit), Ahrefs free keyword generator, Exploding Topics, Glimpse** (F53, F54, F35): Google-side intent only. No Fiverr ToS issue.

### 14.2 Third-party "Fiverr keyword tools" (use cautiously)
- Web tools include FivData (free keyword analytics and a "gig rank checker"; S28, S29), fiverranalytics tags generator (S48), keyword.io Fiverr long-tail finder (S24), toolxox, topbubbleindex, webmatrices and the fiverrtutorials keyword finder (S23, S26, S30, S31). **Credibility: unknown.**
  - None publishes its methodology.
  - A "search volume" figure from a third party cannot come from Fiverr's private data. It is either estimated or scraped from autocomplete or search pages [INFERENCE].
  - Use them only as idea generators. Never enter Fiverr credentials.
- Chrome extensions ("Fiverr Gig Data Extractor", "Fiverr Seller Assistant", "Fiverr quick view") extract title, description, pricing, delivery and tags from gigs you open (S44, S47, F06). The mechanism reads the page's embedded data (F10, F14).
  - **Risk: low–medium.** Data leaves your browser to unknown publishers, and bulk use resembles scraping.
  - Prefer manual reading. If used at all, use a browser profile *not* logged in to the DESORA seller account [INFERENCE].
- The GitHub ecosystem is mostly hobby-grade: 152 repos under the "fiverr" topic (F01), 37 "fiverr keyword" repos with 0–10 stars (F03), several empty or undocumented (F09, F19, F58–F61).
- The exception is **Ahad690/fiverr-gig-optimizer** (MIT/CC-BY, 2026). It is transparent: deterministic, auditable scoring; it refuses to invent numbers; it has a manual "Path B" where you paste the services-available count yourself (F21, F25, F28).
  - Its manual mode is ToS-safe and its formulas are reusable (section 17).
  - Its "live scrape" mode needs TLS impersonation and residential proxies, and puts ToS responsibility on the user (F21, F25). Do not use that mode.

### 14.3 Scrapers and account automation (avoid)
| Tool pattern | Evidence | Risk |
|---|---|---|
| Bulk scrapers (Scrapy with ScraperAPI, Playwright with ScrapFly, curl_cffi TLS impersonation, Apify actors) | Fiverr blocks IPs and renders data with JavaScript (F13); PerimeterX challenges (F08); Cloudflare bypass by fingerprint rotation (F14); authors warn scraping "may violate Fiverr's Terms of Service" (F14) | **High.** Circumventing technical protections. Fiverr's ToS prohibits automated access or collection without permission [BACKGROUND — verify ToS wording] |
| "Online status keeper" extensions | F56 | **High.** Artificially manipulates availability and response signals |
| AI autofill that fabricates profile work experience and simulates human typing | F57 | **High.** Misrepresentation (integrity and authenticity standards, X-cluster 06) and detection evasion |
| Gig-uploader bots / buyer-request auto-responders | F18 (Fiverr-Gig-Uploader), F62 (buyer-request extensions, archived) | **High.** Account automation |
| Rank-tracking services that query Fiverr for you | S28 | **Medium/unknown.** Not your account, but no methodology; never share credentials |

---

## 15. Applying this to DESORA (Morocco-based marketing agency)

**Structural advantages to test** [INFERENCE; each needs Stage 0 validation]:
1. **French.** Francophone buyers (France, Belgium, Switzerland, Québec, West/North Africa) may be underserved relative to English. Test:
   - (a) Search French phrasings ("gestion réseaux sociaux", "montage vidéo tiktok", "publicité facebook") and log services-available counts against the English equivalents.
   - (b) Apply the "seller speaks French" filter [BACKGROUND] on the English queries and compare counts.
   - (c) Count FR, BE, CH and CA flags in reviews of page-1 gigs.
   - Fiverr localizes its site into several languages including French [BACKGROUND]. Whether search matches French queries to English gigs through translation is unknown [open question].
2. **Arabic (Modern Standard Arabic plus Gulf/Maghrebi cultural fluency).** Localizing ads and social content for Gulf (UAE, KSA) brands and for brands entering MENA. Validate with Arabic-language queries, the "seller speaks Arabic" filter and reviewer flags (AE, SA, QA). Arabic may not be a Fiverr interface language [BACKGROUND — verify], so buyers may search in English ("arabic social media manager", "arabic voice over", "arabic ugc").
3. **Time zone (UTC+0 since 20 Sep 2026; was GMT+1).** Covers the full European business day and overlaps US mornings, which helps response time. Response time and availability are ranking inputs (X-cluster 02).
4. **Agency capacity.** Bundles and premium tiers (strategy, creatives, ads management, reporting) that solo sellers cannot deliver: gap types 6, 9 and 10.

**Candidate niche matrix to score first** [INFERENCE]:
- AI UGC video ads for Shopify/e-commerce brands (EN + FR)
- French social media management for e-commerce or local businesses
- Meta/TikTok ads plus creatives for francophone e-commerce
- GoHighLevel/Make/n8n lead-follow-up automation for agencies, real estate or clinics
- faceless YouTube / short-form editing packages
- Arabic ad localization for Gulf brands
- Beehiiv newsletter setup and growth

---

## 16. Myths vs reality

| Myth | Reality | Basis |
|---|---|---|
| "Copy the top seller's tags and you'll rank like them" | Tags only add context after the title. Ranking also uses satisfaction, reviews, price, availability, responsiveness and historical interest. A new gig lacks that history | [OFFICIAL] S01, X-cluster 02 |
| "More services available = more demand" | That count is supply. Demand needs review velocity, Seller Plus volume or trend data | [INFERENCE] F21/F25 design |
| "Zero competition = gold mine" | Usually zero demand. Treat as "UNTESTED" | [ANECDOTAL] F21 |
| "Review count = number of sales" | A lower bound. The review rate is unknown; repeat buyers; private ratings exist | [INFERENCE] X-cluster 06 |
| "+18,347% means a huge market" | Growth from a tiny base in a PR release. Validate absolute demand | [INFERENCE] S03 |
| "Autocomplete order = search volume ranking" | Suggestions have types (e.g. `recent-gigs-suggest`) and positions tracked separately; personalization applies | [ANECDOTAL] F31, S20 |
| "Tweak the title daily to find what ranks" | Edits can pull a gig out of search while it re-indexes, which pollutes tests | [OFFICIAL] X-cluster 02 |
| "Stuff keywords everywhere in the description" | The title (then tags) is what's scanned first. The description should convert, with the keyword natural in the first paragraph | [OFFICIAL] S01; [ANECDOTAL] F22 |
| "Low competition = fewer than 10,000 sellers" | Too loose. Use log-scale bands (≤200 low, ≤2,000 medium) plus a demand check | [DISPUTED] S15/S17 vs F28 |
| "Scraping is fine because the data is public" | Scrapers must defeat bot protection. Tool authors themselves warn of ToS violation | [CONSENSUS of tool repos] F08, F13, F14 |
| "AI killed writing and design gigs entirely" | Commodity segments shrank (Upwork evidence). AI-adjacent and judgment-heavy services are growing on Fiverr | [OFFICIAL] S04–S06; [ANECDOTAL] F43, F44 |
| "Rank #1 in 24 hours" hacks | No legitimate mechanism. Fake orders, self-buying or review manipulation violate Fiverr standards | [OFFICIAL standards, X-cluster 06]; [INFERENCE] |
| "Gig video brings 70% more customers" | Figure from a course-promotion page, attributed to "Fiverr data" without a link | [ANECDOTAL/unverified] F38 |
| "Thumbnail with your face = +25–40% CTR" | Practitioner claim with no study | [ANECDOTAL/unverified] F04 |

---

## 17. Actionable playbooks

### 17.1 Keyword research SOP (one niche, about 2 hours)
1. **Seed list.** Write 5 seeds per service line (deliverable, platform, industry, format, language).
2. **Autocomplete harvest.** Work incognito and logged out. Use seed + a–z, prefix and suffix modifiers, then repeat in French. Log each suggestion with its date and interface language.
3. **Seller Plus** (if available). Filter the category and subcategory. Export or copy the top 30 terms by Search Volume and the lowest Competition terms [OFFICIAL, S02].
4. **Counts.** For each candidate, log services available (no filter, then category filter).
5. **Page-1 audit** of the top 10 organic gigs: reviews total, reviews in the last 30 days, rating, level/Pro, starting price, Standard price, delivery days, video yes/no, review price bands and countries.
6. **Score** with the Niche Opportunity Score (17.3). Keep the top 3 terms per niche.
7. **Map keywords to fields:**
   - title = the best long-tail with demand;
   - tags = the 5-tag formula (section 9);
   - metadata = every true attribute;
   - description = primary phrase in the first paragraph plus buyer phrases from reviews;
   - FAQ = objections taken from 3–4★ reviews.
8. **Cross-check with Google Trends** (12 months and 5 years) and the latest BTI.
9. **Launch and freeze for 14 days**, then read impressions, CTR and conversions. Change only one variable per cycle.
10. **Re-run the teardown** quarterly, or when orders drop [OFFICIAL cadence, S45].

### 17.2 Gap-analysis worksheet (copy into a sheet)
| Field | Entry |
|---|---|
| Niche / parent keyword | |
| Date, interface language, logged-out (Y/N) | |
| Services available (parent / niche) | |
| KDI (Σ reviews in last 30 days, top 10) | |
| % of page 1 with 100+ reviews / with fewer than 20 reviews | |
| Median starting price / median Standard price / review price band | |
| Gap 1 Industry: evidence / score 0–2 | |
| Gap 2 Platform: evidence / score 0–2 | |
| Gap 3 Language: evidence (counts with language filter, reviewer flags) / 0–2 | |
| Gap 4 B2B framing: evidence / 0–2 | |
| Gap 5 Speed: % of services with ≤24h–3-day delivery / 0–2 | |
| Gap 6 Bundle: evidence / 0–2 | |
| Gap 7 Quality (top 3 recurring 3–4★ themes) / 0–2 | |
| Gap 8 Format: evidence / 0–2 | |
| Gap 9 Price tier missing: evidence / 0–2 | |
| Gap 10–12 Trust / time zone / recurring: evidence / 0–2 | |
| Chosen angle (one sentence) | |
| Draft title (≤80 characters) and 5 tags | |

### 17.3 Niche Opportunity Score (NOS, 0–100) with weights
Adapted from the open-source Ahad690 model (competition 60% + demand 40%; F21, F28) and extended for agency needs [INFERENCE; calibrate after 3–6 months of DESORA data].

| Component | Weight | How to score |
|---|---|---|
| **Demand (KDI)** | 25 | KDI 0–4 → 0–5; 5–14 → 10; 15–39 → 15; 40–99 → 20; 100+ → 25. Add up to +5 (cap 25) if Seller Plus shows high volume |
| **Competition (supply)** | 20 | `CompScore` (formula 18.2) × 0.20 |
| **Entry feasibility (incumbency)** | 10 | Share of page 1 with fewer than 20 reviews: ≥25% → 10; 10–24% → 5; under 10% → 0 |
| **Monetization** | 15 | Median Standard price or review band: ≥$150 → 15; $75–149 → 10; $30–74 → 5; under $30 → 0 |
| **Trend** | 10 | Named rising in BTI or rising in Google Trends → 10; flat → 5; declining (writing/translation/admin/commodity design) → 0 |
| **Gap strength** | 10 | Sum of gap scores from 17.2, capped at 10 |
| **DESORA fit / delivery capacity** | 5 | Proven portfolio and team capacity → 5; partial → 2; none → 0 |
| **AI resilience** | 5 | Requires strategy, accountability or brand judgment → 5; AI-assisted editing → 3; fully automatable → 0 |

**Decision rules:**
- NOS 70 or higher → build now.
- 55–69 → build as a narrower long-tail variant, or test with one gig.
- Below 55 → park.
- **Hard stops:** KDI of 0 with no outside evidence; the service is prohibited or restricted by Fiverr policy; the price median is below DESORA's cost floor.

---

## 18. Templates, examples and formulas

**18.1 Keyword log (columns):** date · interface language · logged out? · seed · suggestion · suggestion position · services available (no filter) · services available (category) · KDI · page-1 % ≥100 reviews · page-1 % <20 reviews · median start price · median Standard price · BTI/Trends signal · NOS · decision.

**18.2 Competition score formula** (F21, F28), a piecewise-linear function of `L = log10(n)`, where n = services available:
- n ≤ 200: `Comp = 100 − 30 × (L / 2.301)`
- 200 < n ≤ 2,000: `Comp = 70 − 30 × (L − 2.301)`
- 2,000 < n ≤ 20,000: `Comp = 40 − 40 × (L − 3.301)`
- n > 20,000: `Comp = 0`
- Check: n = 24 → L = 1.380 → 100 − 18.0 = **82** (matches F21).
- n = 0 → "UNTESTED" (do not score).

**18.3 Demand formulas** [INFERENCE]:
- `KDI = Σ_{top 10 organic} reviews dated ≤30 days`
- `Est. orders/month (niche) ≈ KDI / r`, with r ∈ {0.3, 0.5, 0.7}
- `SD ratio = services_available / (KDI + 1)` (lower is better)
- Ahad690 alternative demand score: median total review count of the top 10, normalized at a ceiling of 500 (F28)
- Pricing: competitor percentiles p25/p50/p75 for Basic/Standard/Premium, shifted to p10/p25/p50 for a brand-new seller (F28)
  - DESORA note [INFERENCE]: as an agency, prefer p50/p75/p90 once 5+ reviews exist; underpricing conflicts with Fiverr's upmarket shift (X-cluster 10).

**18.4 Title examples (patterns, not validated keywords — run the SOP first):**
- "I will create ai ugc video ads for your shopify brand"
- "I will set up gohighlevel automations to follow up your leads"
- "I will manage your french social media and content calendar"
- "I will localize your meta ads into arabic for gulf audiences"
- "I will edit faceless youtube videos with captions and b-roll"
- "I will launch and grow your beehiiv newsletter"

**18.5 Review-mining code sheet:** gig URL · reviewer country · date · stars · price band · duration · theme codes (COMM, SPEED, REV, NICHE, TECH, CREATIVE, SCOPE, VALUE, SUPPORT, LANG) · verbatim buyer phrase · gap implication.

---

## 19. Free tools and resources discovered

| Tool | URL | Purpose | Free? | Evidence / trust |
|---|---|---|---|---|
| Fiverr search autocomplete | fiverr.com | Real buyer queries | Free | [OFFICIAL] S01 |
| Fiverr search counts and filters | fiverr.com/search/gigs | Supply, language, delivery, price filters | Free | [OFFICIAL] X-cluster 02 |
| Fiverr `/gigs/<keyword>` pages | fiverr.com/gigs/… | Query evidence and counts | Free | S39, S40 |
| Fiverr Business Trends Index | pages.fiverr.com/businesstrendsindex/en; fiverr.com/news | Rising services | Free | [OFFICIAL] S03–S10 |
| Seller Plus Keyword Research / Top Keywords / Pricing Insights | Fiverr seller dashboard | Search volume, competition, price benchmarks | **Paid** | [OFFICIAL] S02 |
| Google Trends | trends.google.com | Seasonality and momentum | Free | F53, F54 |
| Google Keyword Planner | ads.google.com/…/keyword-planner | Google volume ranges | Free with an Ads account | F53, F54 |
| AnswerThePublic | answerthepublic.com | Autocomplete questions | Limited free | F35, F53 |
| AlsoAsked | alsoasked.com | People Also Ask chains | Free tier | F53 |
| Soovle | soovle.com | Multi-engine autocomplete | Free | F53 |
| Keyword Sheeter | keywordsheeter.com | Bulk autocomplete | Free | F53 |
| Answer Socrates | answersocrates.com | Questions / PAA | Free | F53 |
| keyword.io (incl. a "Fiverr longtail finder" page) | keyword.io | Autocomplete ideas | Limited free | F53, S24 |
| Keywords Everywhere | keywordseverywhere.com | Volume/CPC overlay | Credits | F53 |
| Keyword Surfer | surferseo.com/keyword-surfer-extension | Volumes in Google results | Free | F53 |
| Ubersuggest | neilpatel.com/ubersuggest | Keyword suite | Limited daily | F53 |
| Ahrefs Keyword Generator | ahrefs.com/keyword-generator | Ideas plus rough volume | Limited free | F53 |
| Exploding Topics / Glimpse | explodingtopics.com / meetglimpse.com | Early trend detection | Limited free | F53 |
| Ahad690/fiverr-gig-optimizer (manual mode only) | github.com/Ahad690/fiverr-gig-optimizer | Transparent scoring and pricing percentiles | Free (MIT) | F21–F28 |
| Upwork public job feed (manual) | upwork.com | Cross-market demand and budgets | Free to browse | F41–F44 (dataset analyses) |
| FivData, fiverranalytics, toolxox, topbubbleindex, webmatrices | various | "Fiverr keyword analytics" | Free/freemium | [T4 — methodology unknown; idea generation only] S23–S31, S48 |

---

## 20. Open questions and things that could not be verified

1. The exact current wording and rounding of the search results count ("services available" vs "results"), and whether there is a cap for large counts.
2. Which Seller Plus tier includes Keyword Research, and whether its "competition" is a supply count or an index. Also current Pricing Insights category coverage.
3. Whether reviews still show price band, duration and repeat-client labels (believed yes from 2023–2024; not re-verified).
4. The public review rate (share of orders that leave a public review). It is needed to convert review velocity into orders.
5. Status of Buyer Briefs in 2026 (forum threads suggest reduction or discontinuation — X-cluster 06).
6. Whether "Fiverr Spotlight" is a current Fiverr product or editorial program relevant to demand research. No evidence was retrieved.
7. How Fiverr search handles French or Arabic queries (translation matching to English gigs?), and whether Arabic is a supported interface language.
8. Current active-gig limits per level under the 2024 level system.
9. Fiverr ToS wording on automated access and scraping (believed prohibited without permission; not re-read this session).
10. Exact figures from the academic studies on generative AI and freelance demand (Hui et al.; Demirci et al.; Teutloff et al.). Re-fetch before quoting numbers to clients.
11. Absolute search volumes behind the BTI percentages (not disclosed).
12. The official Google Trends API alpha status and access (BACKGROUND).
13. The sample gig counts in the Ahad690 dataset (logo design 9,800; SEO services 4,200; AI chatbots 1,243; web/data scraping 12,978; dated Oct 2025–Jun 2026; F27). Some look rounded, and "logo design" appears low for a head term. Treat them as illustrative only.

**Recommended follow-up once the network allows:** read in full the Fiverr Community blogs S01 and S45, the Help Center "search and recommendation system", "Advanced Analytics for Seller Plus" (S02) and "Requirements and guidelines for your Gig" (S33), plus the BTI pages S03–S06. Then upgrade the snippet-based [OFFICIAL] items to fully verified.
