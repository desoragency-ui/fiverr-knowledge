# Cluster 02 — Fiverr Search Algorithm & On-Platform Gig SEO

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - Request to Order: whether it's Seller Plus Premium only is disputed (master §3 #11).


Knowledge base for DESORA's Fiverr advisor subagent. Compiled 2026-09-26.

---

## 0. Research status and how to read this document

This section comes first because it changes how much weight the rest of the document can carry.

**What happened during research**
- **WebFetch returned 0 pages.** The sandbox egress proxy blocked every domain tried: help.fiverr.com, www.fiverr.com, community.fiverr.com, investors.fiverr.com, forbes.com, medium.com subdomains, jobbers.io, academy.zentricsolutions.com and reddit.com. A plain `curl` test was also rejected (organization policy, HTTP 403 on CONNECT). No full article was read end to end.
- **WebSearch ran 20 times.** 15 calls returned results. The first 3 failed with `too_many_requests` because 12 agents were running at once. After that, the session-wide cap of 200 WebSearch calls, shared by all agents, was reached, and the last 2 calls were refused. The tool said the cap can only be raised by the user, through `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`.
- **So every sourced claim below comes from search-result snippets and the search tool's synthesized summaries** of the listed pages (mode "snippet" in 02-sources.tsv). None comes from a full read.
- **Not used:** a paid third-party scraper (the Apify connector) could have fetched pages outside the sandbox. It was not used, because that would spend the owner's Apify credits and route around both the organization's egress policy and the search cap, and the owner has not approved either. The owner can approve it (see Open Questions).

**Confidence tags**
- **[OFFICIAL]**: from a Fiverr-owned page (Help Center, the Fiverr Community "Education content" blog, sellers.fiverr.com). Read as a snippet, not a full article.
- **[CONSENSUS]**: 3 or more independent non-official sources in this session agree.
- **[ANECDOTAL]**: seller field reports (forum, Quora, Medium).
- **[DISPUTED]**: sources conflict. A verdict is given.
- **[PRIOR-UNVERIFIED]**: comes from the compiler's background knowledge of Fiverr (training data through mid-2026) and could not be re-checked this session. Treat it as a hypothesis to verify in the live seller dashboard before relying on it. These tags are added on purpose so that nothing unverified looks sourced.
- **[REASONED]**: logical inference from how two-sided marketplace ranking systems work. It is not a Fiverr statement.

Source ids (S1 to S43) map to 02-sources.tsv.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Relevance is the gate, and performance decides the order.** Fiverr officially calls relevancy "the most important ranking factor", meaning how well a listing matches the buyer's query. Without it, a gig is never retrieved for that query, however good its stats. [OFFICIAL S1, S2]
2. **Fiverr's official list of ranking inputs:** historical client interest in similar listings, client satisfaction scores from completed orders, review scores, pricing, availability, freelancer responsiveness, and "machine learning models". [OFFICIAL S1, S2]
3. **Operational failures cost visibility directly.** Late deliveries, cancellations and low response rates "can affect how often your Gig appears in search". Protecting these metrics is the highest-ROI ranking work for an established seller. [OFFICIAL S1/S3]
4. **Results are personalized, so there is no single rank.** Fiverr adjusts results to the languages the client speaks, favors freelancers who can deliver fast when urgency is detected, and uses the buyer's own behavior. Checking your own position from your account, or from one country, is unreliable. [OFFICIAL S1, S2, S7]
5. **Buyer satisfaction is the main long-run driver.** Fiverr's own education blog says the algorithm "focuses on pushing good quality sellers to relevant buyers". Keyword SEO gets a gig considered; satisfaction and conversion keep it ranked. [OFFICIAL S7]
6. **Day-to-day swings are normal.** Fiverr says fluctuations are "completely normal, especially if you are reviewing them daily". Buyer volume and marketplace trends also move numbers. Judge trends over 30 to 90 days, not days. [OFFICIAL S7, S8]
7. **Editing a gig does not reset its ranking.** It can make the gig temporarily vanish from search while Fiverr re-indexes it or reviews it for rules. After that, the gig is re-evaluated on its new content. The claim that edits permanently kill rank has no official support. [OFFICIAL S3; CONSENSUS S24, S25, S26/S27 titles]
8. **Diagnose the funnel stage before acting.** Low impressions point to relevance, demand or eligibility. Low clicks point to the search card: thumbnail, title, price, review count and badges. Low orders point to the gig page: trust, packages, description, FAQ and response speed. [OFFICIAL S8; plus T4 S32, S33]
9. **Filters remove gigs from view before ranking even starts.** Buyers filter by budget, delivery time, seller language, location and service-specific options. A gig that has not declared the matching metadata (for example platform = TikTok) cannot appear in that filtered view. [OFFICIAL S1, S4 for the filter list; REASONED for the exclusion effect]
10. **Price is an official ranking input,** and budget and delivery-time filters act as hard cut-offs. Package prices and delivery days decide which filtered result sets a gig can appear in. [OFFICIAL S1; REASONED]
11. **Fiverr's Choice** is awarded to select services "in recognition of outstanding quality and client satisfaction". It is given to a gig, not a seller, and field reports show it coming and going within days. You cannot apply for it. [OFFICIAL S1/S10; ANECDOTAL S28, S29; T3/T4 S30, S31]
12. **Pro and Ads are separate listing types.** Pro status "can influence search ranking". Ads carry an ad badge, and Fiverr checks their relevance and quality before showing them. Both take premium positions away from organic listings. [OFFICIAL S1, S6]
13. **The "honeymoon" boost for new gigs is unproven.** No official source was found. Low-trust sources disagree on its length (48 to 72 hours vs ~30 days). One claims Fiverr documentation calls it a "new seller boost"; no such official wording was found. Verdict: some exploration exposure for new listings is plausible, but its size is unknown. Publish only gigs that are fully optimized, and never "republish" to trigger it. [DISPUTED S19, S20]
14. **Title:** 80 characters maximum. Only about the first 50 to 60 characters show on search cards, so put the primary buyer phrase right after "I will". [T4 S15, consistent with PRIOR]
15. **Tags:** 5 search tags, each up to about 20 characters. Use real buyer phrases taken from Fiverr's autocomplete, including variants not already in the title. [T4 S15, S17; PRIOR]
16. **Description:** 1,200 characters maximum (about 180 to 250 English words). Put the primary keyword in the first sentence and write naturally. Most of the description's value is conversion, not ranking. [T4 S15, S16, S18; PRIOR]
17. **Staying online 24/7 is a myth as a direct ranking lever.** The official factors are responsiveness and availability, not the green dot. What pays off is fast replies through the mobile app. "Keep-online" bots and scripts are a Terms of Service risk. [DISPUTED; verdict REASONED and OFFICIAL S1]
18. **Spamming gig links on social media does not raise ranking.** There is no evidence for it. Only external traffic that actually orders helps. Low-intent clicks can dilute conversion stats, and link spam can get accounts flagged. [PRIOR/REASONED; no official support for the myth found]
19. **Duplicate gigs are not allowed.** Each gig must be a distinct service or keyword cluster. Several gigs chasing the same query mostly compete with each other. [PRIOR-UNVERIFIED, high confidence]
20. **"Request to order" lowers volume.** Fiverr itself warns that limiting instant orders "may lower total order volume". Use it only for services that genuinely need consultation. [OFFICIAL S5]
21. **Discovery is moving beyond keyword search.** Since 2023 to 2025 more demand arrives through AI matching and briefs (Fiverr Neo in 2023, then Fiverr Go and Dynamic Matching in 2025). A clear specialization, a complete profile and fast replies to briefs matter more each year. [PRIOR-UNVERIFIED; needs confirmation from the AI/strategy cluster]
22. **Language can be a real edge for DESORA.** Results are officially adjusted to the languages clients speak, so declaring French and Arabic (as well as English) at their true level, and building gigs for French-speaking buyers, uses an official personalization input with less competition. [OFFICIAL S1 for language personalization; REASONED for the strategy]

---

## 2. Mental model: how a two-sided marketplace ranker like Fiverr's works

This frame is **[REASONED]**, but it matches every official statement collected. Use it to judge any new tip.

1. **Query understanding.** The buyer's text is interpreted for intent: "reads the query, interprets intent" [OFFICIAL S1 snippet]. Autocomplete and categories steer buyers toward a common vocabulary. That is why autocomplete phrases are the best keyword source.
2. **Retrieval (the relevance gate).** Candidate gigs are pulled because their text fields (title, tags, description, very likely category and metadata) match the query. A gig not retrieved for a query gets zero impressions for it, whatever its reviews.
3. **Filtering.** Hard filters the buyer applies (budget, delivery time, seller language, country, level, Pro, service options) drop non-matching gigs.
4. **Ranking with machine learning.** The remaining candidates are ordered by a learned model. Fiverr names "historical client interest in similar listings", "client satisfaction scores", review scores, pricing, availability and responsiveness [OFFICIAL S1]. Models like this usually predict the chance a buyer clicks, orders and ends up satisfied. Click-through and conversion are therefore almost certainly inputs, even though Fiverr's snippet does not name "CTR" [REASONED; the T4 sources S23 and S27 say the same].
5. **Personalization and business rules.** The ranking is re-weighted per buyer (language, urgency, past behavior) [OFFICIAL]. Special placements are then mixed in: Ads, Pro, Fiverr's Choice [OFFICIAL]. Marketplaces usually also enforce seller diversity (not five gigs from one seller in a row) [REASONED].
6. **Exploration.** Every recommender must show some new or unproven listings to learn about them (the "cold-start" problem) [REASONED]. This is the most likely real mechanism behind the "honeymoon" folklore. Its size, length and whether it is guaranteed are unknown.

**What follows from this model**
- Keyword work decides which searches you enter. Performance work decides where you place in them.
- Any tactic that adds impressions or clicks without orders and happy clients (link spam, fake clicks, keyword stuffing) at best does nothing, and at worst lowers predicted conversion and satisfaction.
- Because rankings are personalized and filtered, "rank #1 for X" is not a stable fact. Measure your own funnel instead (impressions, clicks, orders over 30 or more days).

---

## 3. Detailed knowledge by sub-topic

### 3.1 What Fiverr officially says about ranking
- Fiverr's search system "connects clients with freelancers by focusing on relevance, client satisfaction, and personalization". It uses "a combination of ranking factors, special listing types, and behavioral data". [OFFICIAL S1, S2]
- **Relevancy is the most important factor.** It is measured by how well a listing matches the search query. The snippet wording is "how well a listing's description matches your search query". Treat "description" there as meaning the listing text in general, not only the description field. [OFFICIAL S1]
- **Other named factors:** historical appeal or client interest in similar listings; client satisfaction scores from completed orders; machine learning models; review scores; pricing; availability; freelancer responsiveness. [OFFICIAL S1, S2]
- **Negative signals:** "Metrics like late deliveries, cancellations, or low response rates can affect how often your Gig appears in search." [OFFICIAL S1/S3]
- **Personalization:** results are adjusted to the languages clients speak. Freelancers who can deliver quickly are prioritized when urgency is detected. Results line up with each client's behavior. [OFFICIAL S1, S2] Fiverr's education blog says the same: "Fiverr is a curated marketplace… search results are personalized to each user based on their buying behavior and other data." Where you appear "may be completely different than what another user would see." [OFFICIAL S7]
- **Organic search:** clients type a query, and the system reads it, interprets intent and shows listings whose services match. [OFFICIAL S1]
- **Special listing types:**
  - Fiverr's Choice: a badge for outstanding quality and client satisfaction.
  - Pro: freelancers vetted by the Fiverr Pro team. Pro status "can influence search ranking".
  - Fiverr Ads: promoted listings with an ad badge, where Fiverr "verifies their relevance and quality before they appear". [OFFICIAL S1, S2, S6]
- **What the algorithm is for:** "pushing good quality sellers to relevant buyers". Buyer satisfaction "plays a significant role in your ranking." [OFFICIAL S7, 2025-06-02]
- **Volatility:** "Fluctuations in your analytics are completely normal, especially if you are reviewing them daily. External factors such as the number of buyers on the platform and marketplace trends play a role… focus on long-term trends." [OFFICIAL S7]
- **What is not officially stated** (in the snippets obtained): any exact weights; any number for "new gig exposure"; any statement that CTR, online status, social shares or gig age are factors.

### 3.2 Seller-observed ranking factors (field reports and low-trust guides)
- **Completion rate:** "aim for 95 to 100%; below 90% significantly limits search visibility" [T4 S21]. The direction is supported by the official statement on cancellations, but **the thresholds are unverified**. Keep cancellations near zero in any case.
- **Response time:** "directly impacts ranking" [T4 S21, S23]. Consistent with the official "responsiveness". [CONSENSUS on direction]
- **CTR and gig image:** the image affects ranking indirectly through click-through [T4 S23, S32]. Fiverr's education blog frames clicks as a presentation problem [OFFICIAL S8]. The "up to 3x more clicks" figure for professional images is **unverified marketing copy** (source unclear, likely T4).
- **"The 2025 algorithm prioritizes paid ads and off-platform authority over gig optimization"** [T4 S22]. **Rejected as stated.** Ads do take visible slots [OFFICIAL]. "Off-platform authority" is not an official factor and runs against the official focus on on-platform satisfaction.

### 3.3 The impressions → clicks → orders funnel
- **Definitions** [PRIOR-UNVERIFIED, standard in Fiverr Analytics]:
  - Impressions: times a gig card was shown in search or listings.
  - Clicks: visits to the gig page.
  - Orders.
  - Conversion rate.
  - Cancellations.
  Analytics shows these per gig over selectable windows. Seller Plus adds "Advanced Analytics" (S12 exists; its content was not read).
- **Official diagnosis** [OFFICIAL S8, 2025-07-18]:
  - **Impressions down:** the algorithm is not showing the gig for relevant searches. Either the service is not in current demand or the gig is not optimized for the right keywords. Remedies: move to long-tail keywords (e.g. "SEO for small business websites" rather than "SEO services"), update the profile, and "refresh your Gig or shift your strategy" if the decline is steady over time.
  - **Clicks down:** a presentation problem on the results page. Buyers see mainly the thumbnail, the title and the review count (plus price and badges) before clicking.
  - **Orders down:** the gig page is not persuading. The usual causes are an unclear offer, a weak description or trust signals, and packages that don't fit.
- **Autocomplete check:** type your core service term into Fiverr's search bar and compare the suggestions with your title and tags. Update them if buyer wording has moved on. [T4 S32; the method is sound REASONED]
- **Signal that impressions are not everything:** forum thread titles report impressions falling while clicks and conversion rise [ANECDOTAL S34]. This fits personalization and a shift to better-targeted traffic. Don't panic over falling impressions if orders hold.
- **Benchmarks:** no credible CTR or conversion benchmarks were found this session. Figures circulating in low-trust guides are not reliable. Benchmark each gig against its own 90-day history and against DESORA's other gigs. [Open question]

### 3.4 New gig and new seller exposure (the "honeymoon")
- **Claims found:**
  - A 48 to 72 hour boost [T4 S20].
  - About 30 days of "artificial impression boost", which Fiverr documentation supposedly calls the "new seller boost" [T4 S19].
  - That the boost also applies after an existing gig is "significantly updated" [T4 S19].
- **Official evidence found:** none describes a guaranteed boost. What does exist officially:
  - the **Rising Talent** program for promising new sellers [OFFICIAL S9, content not read];
  - **Fiverr Ads** as a paid way to get exposure [OFFICIAL S6];
  - a **"Newest arrivals"** sort option buyers can choose [PRIOR-UNVERIFIED].
- **Verdict [DISPUTED → REASONED]:**
  - An exploration phase is plausible. Every learning ranker needs one, and forum reports of early impressions followed by a drop are common [ANECDOTAL S37].
  - Its length and size are unknown and probably vary by category and competition.
  - The practical advice holds either way: early CTR, conversion and reviews shape the gig's learned performance.
  - So publish only when the gig is complete: all 3 packages, a strong thumbnail, a video if possible, FAQ, correct metadata and all 5 tags. Be ready to answer instantly.
  - Never delete and re-create a gig to "farm" a new honeymoon (see 3.14).

### 3.5 Rotation, volatility and sudden drops
- Fluctuations are normal; judge long-term trends [OFFICIAL S7, S8].
- **Common causes of a sudden drop:**
  - a Trust & Safety review of the gig (it may not show while under review) [OFFICIAL S3];
  - re-indexing after edits [OFFICIAL S3];
  - seasonality and falling buyer demand [OFFICIAL S7];
  - new competitors or Ads taking top slots [REASONED];
  - a worse metric (a late delivery, a cancellation or a low private rating) [OFFICIAL S1];
  - platform-wide bugs, suspected when many sellers report every gig at 0 impressions on the same day [ANECDOTAL S36].
- **Rule:** don't make big changes within 72 hours of a drop. First check for a T&S warning, gig status and the metrics dashboard. Then read the 30-day trend before editing.

### 3.6 Category and subcategory selection
- **[REASONED + PRIOR-UNVERIFIED]:**
  - Category and subcategory decide which browse pages, filters and metadata a gig belongs to.
  - A wrong subcategory cuts retrieval for the buyers who browse the right one, and can lead Fiverr to deny or move the gig.
- **Method:** search the core buyer phrase. See which subcategory the top organic gigs sit in, and which subcategory Fiverr's own suggestions lead to. Place the gig there.
- **DESORA-relevant subcategories under Digital Marketing** [PRIOR-UNVERIFIED names; check live]: Social Media Marketing, Social Media Advertising / Paid Social, SEO, Local SEO, Search Engine Marketing (SEM), Content Marketing, Video Marketing, E-commerce Marketing, Email Marketing, Influencer Marketing, Community Management, Marketing Strategy / Advice, Web Analytics.
- **Rule:** one service per gig. For example, "Meta ads management" belongs in Paid Social, not in Social Media Marketing next to organic posting.

### 3.7 Gig metadata and attributes (service type, platform, industry and similar)
- **Official:** buyers can refine by "service-specific requirements" and set budget, delivery time, language, location "and other freelancer details" [OFFICIAL S1, S4].
- **[REASONED]:** service options in the filter panel are driven by the metadata sellers tick when creating a gig. If a buyer filters "Platform: TikTok" and the gig did not declare TikTok, the gig is dropped from that view.
- **Rules:**
  - Tick every attribute that is truly delivered.
  - Never tick ones that aren't. That brings mismatched buyers, cancellations and low satisfaction, which are official negative factors.
  - Some metadata fields cap how many values can be selected [PRIOR-UNVERIFIED].

### 3.8 Title rules
- **Limit:** 80 characters [T4 S15; PRIOR]. Search cards cut off at about 50 to 60 characters [T4 S15]. The title field starts with a fixed "I will…" [PRIOR-UNVERIFIED, high confidence].
- **Placement:** put the primary buyer phrase right after "I will …", in the first ~50 characters. [CONSENSUS across T4 guides; REASONED because cards truncate]
- **Write for humans:** natural language, one core service, and a benefit or qualifier. No ALL-CAPS, emoji strings, or keyword lists separated by commas or pipes.
- **Keep other names out:** don't use "Fiverr", other sellers' names, or brand names you don't actually work with. [PRIOR-UNVERIFIED; a ToS and trademark risk]
- **URL:** the gig URL slug is generated from the title at creation and (very likely) does not change when the title is edited later. This matters for Google (3.21). [PRIOR-UNVERIFIED]
- **Changing to a more competitive keyword** usually lowers position for the new term at first. That is not a penalty; the competition is simply harder. [ANECDOTAL S25; REASONED]

### 3.9 Search tags
- **Limit:** 5 tags [T4 S15, S17; PRIOR], each up to about 20 characters [T4 S15; PRIOR]. Letters and numbers only [PRIOR-UNVERIFIED].
- **Count:** use all 5 [T4 S23]. One T4 guide suggests "3 to 4 accurate tags to keep it professional" [S15]. **Verdict:** use all 5 as long as every one is truly relevant. An empty tag slot wastes a retrieval channel. An irrelevant one brings mismatched impressions and lowers CTR.
- **How to choose:**
  - Take real buyer phrases from autocomplete.
  - Include your primary phrase, even if it's already in the title.
  - Add close variants and synonyms that are not in the title, to widen retrieval.
  - Add one or two long-tail niche phrases.
  - Don't repeat the same word five times.
  (See the template in 5.2.) [REASONED + T4 S17]
- Low-trust guides have suggested copying competitors' tags wholesale. **Verdict:** use them only as a research input. Copied tags from gigs with a different offer create mismatch.

### 3.10 Description
- **Limit:** 1,200 characters maximum [T4 S15, S16; PRIOR], about 200 to 250 English words. The claim that "top-converting gigs cluster at 180 to 230 words" [T4 S18] is unverified.
- **Keywords:** put the primary keyword in the first sentence, and one or two secondary keywords naturally in the body. The official relevancy wording ("how well a listing's description matches") supports including the key phrases. [OFFICIAL S1 wording + REASONED]
- **Disputed claim:** the first ~110 characters show as a "short description" on search cards [T4 S15]. Fiverr grid cards mainly show the image, the seller, the title, the rating and the price [PRIOR]. The opening text more likely matters as the page's meta description on Google. **Verdict:** write a strong, keyword-bearing opening sentence either way.
- **Main job is conversion:** state the outcome, who it's for, what's included, the process, proof, and a call to message before ordering for custom scopes.

### 3.11 FAQ, packages and other text as ranking signals
- **[OPEN / REASONED]:** no official statement was found on whether FAQ, package names, package descriptions or requirements are indexed for ranking.
- **Practical stance:** assume the title, tags, category and metadata carry most of the retrieval weight, and the description some.
- Treat FAQ and packages as conversion tools that may add minor relevance. Use them to handle objections and to cover secondary phrasing naturally, never as keyword dumps.
- Package prices and delivery days are officially relevant through pricing and through the budget and delivery filters.

### 3.12 Keyword stuffing
- Stuffing (repeated or irrelevant keywords in the title, tags or description) is a spam pattern. Fiverr's content standards call for accurate, relevant listings [PRIOR-UNVERIFIED].
- Such gigs can be denied or held in review; a held gig "may not appear in search" [OFFICIAL S3 for the review effect].
- Even when it isn't penalized, stuffing lowers readability, CTR and conversion, which are the performance signals the ranker learns from. [REASONED]

### 3.13 Editing gigs (myth check)
- **Official:** after edits, a gig "may temporarily disappear from search while the system re-indexes the information". It should come back after a while. [OFFICIAL S3]
- **Field view:** no evidence that editing in itself harms ranking. The gig is re-evaluated on the new content and can rise or fall. [T3 S24, S25] Threads titled "lost my ranking after editing" exist [S26, S27 titles], but they are confounded by normal volatility.
- **Verdict:** editing is not penalized as such. What changes the result is what you change: the keywords, the price and the delivery time.
- **Good practice:**
  - Change one major element at a time.
  - Record the date.
  - Wait 14 to 30 days before judging.
  - Avoid tinkering every day.
  - Avoid big rewrites while a gig is performing well, unless there is a clear reason.

### 3.14 Deleting, re-creating and duplicating gigs
- **[PRIOR-UNVERIFIED, high confidence]:**
  - Deleting a gig is permanent. Its gig-level history is lost, while reviews generally stay on the seller profile.
  - Re-creating the same gig to "reset" it loses that history.
  - A near-copy risks being treated as a duplicate gig, which Fiverr prohibits.
- **Verdict:** repair a gig rather than delete it. Delete only offers that are truly dead or off-strategy, and replace them with a genuinely different service.

### 3.15 Pausing gigs, availability and vacation mode
- **Official:** "availability" is a named ranking factor [OFFICIAL S1].
- **[PRIOR-UNVERIFIED]:**
  - A paused gig is hidden from search, and there is no guarantee it returns to its old position when reactivated.
  - Setting yourself "unavailable" (the successor to vacation mode) hides gigs from buyers for the period set, while protecting delivery and response metrics.
  - Some sellers report slow recovery after long pauses [ANECDOTAL].
- **Verdict:**
  - For short overload, prefer longer delivery times or order-queue limits over pausing.
  - For real absence, use availability rather than letting response rate and on-time delivery suffer. Those metrics are official ranking inputs; one pause is not.

### 3.16 Staying online (myth check)
- **Myth:** "stay online 24/7 or your gig will drop."
- **Evidence:**
  - The official factors are responsiveness and availability [OFFICIAL S1]. Online status as such is not named in any snippet obtained.
  - One synthesized snippet (source unclear, possibly T4) claims "if you're not online most of the time… your impressions may drop" [S8/S32, DISPUTED].
  - A forum title reports impressions falling "even though I remain online 24/12" [ANECDOTAL S35].
- **Reasoned verdict:**
  - The green dot matters mainly because some buyers filter for, or prefer, online sellers, and because being reachable shortens response time.
  - Staying online around the clock is not a ranking lever in its own right.
  - Use mobile app notifications and fast replies during the target market's hours.
  - Never use auto-refresh tools or bots to fake online status. That is automation and a ToS risk.

### 3.17 Sharing gigs on social media (myth check)
- **[PRIOR / REASONED]:**
  - No official source says social shares raise search ranking.
  - Buying clicks or dropping links in "Fiverr promotion" groups sends low-intent visitors who don't order. If Fiverr counts those visits, they dilute conversion, and they can look like manipulation.
  - Genuine external marketing that brings real buyers who order and leave good reviews is legitimate. It helps indirectly, through more orders and reviews.
- **Verdict:** a myth as a ranking tactic. It is fine as real marketing aimed at real buyers.

### 3.18 Multiple gigs and cannibalization
- **Gig caps depend on seller level** [PRIOR-UNVERIFIED]. Historically: about 7 active gigs for new sellers, 10 at Level 1, 20 at Level 2, 30 at Top Rated. Check the current caps in the dashboard.
- **Duplicates are prohibited** [PRIOR-UNVERIFIED].
- **[REASONED]:** marketplaces usually limit how many listings from one seller appear for a single query. Two DESORA gigs on the same phrase split impressions and signals instead of doubling exposure.
- **Architecture:** one gig per distinct buyer intent, for example:
  - Instagram management
  - Meta ads
  - Local SEO / Google Business Profile
  - SEO audit
  - TikTok ads
  - French-language social media
  Give each its own primary keyword, tags and portfolio.

### 3.19 Search filters buyers use
- **[OFFICIAL S1, S4]:** budget, delivery time, freelancer language, location, service-specific options ("and other freelancer details").
- **[PRIOR-UNVERIFIED, verify live]:**
  - seller level (New, Level 1, Level 2, Top Rated);
  - "Seller speaks" languages;
  - "Seller lives in" country;
  - toggles for Pro services, Local sellers and Online sellers;
  - sort by Relevance, Best selling or Newest arrivals.
- **Implications:**
  - Set true languages and proficiency in the profile. This feeds both the filter and the official language personalization.
  - Offer a package at a common budget tier.
  - Offer an express delivery extra so the gig qualifies for short delivery filters, but only if you can truly deliver in that time.

### 3.20 Fiverr's Choice
- **Official:** a badge "awarded to select services in recognition of outstanding quality and client satisfaction". [OFFICIAL S1, S10]
- **Gig-level:** it belongs to a gig, not the seller as a whole. [T3/T4 S30, S31]
- **Observed:**
  - The badge appears and disappears. Sellers report 3 to 4 days in one case and 12 days in another.
  - It "rotates" among highly recommended gigs.
  - Some sellers see it in gig performance but not in search. [ANECDOTAL S28, S29]
- **Background** [PRIOR-UNVERIFIED]: earlier official wording tied the badge to specific search terms and to gigs that are highly rated, often ordered and available for immediate hire. That would explain why it shows for some queries and not others.
- **Verdict:** a side effect of strong satisfaction, conversion and availability on specific queries. It cannot be targeted directly, and it isn't permanent.

### 3.21 AI-driven search and matching (2023 to 2026)
**Status: [PRIOR-UNVERIFIED]. Confirm with the cluster that covers Fiverr AI and company strategy.**
- **Fiverr Neo (2023):** an AI matching assistant for buyers that turns a conversation into freelancer recommendations.
- **Fiverr Go (announced Feb 2025):**
  - Personal AI Creation Models trained on a freelancer's own work;
  - a Personal AI Assistant that handles buyer messages;
  - **Dynamic Matching:** the buyer's brief is analyzed and matched to freelancers, who reply with tailored offers.
- **Search has gained ML ranking and personalization** [OFFICIAL S1 mentions "machine learning models" and intent interpretation].
- **Implications for DESORA [REASONED]:**
  1. A clear, specific specialization in the profile and gigs makes AI matching easier.
  2. Speed in answering briefs and requests likely matters as much as reply speed in the inbox.
  3. Natural-language gig copy that describes outcomes and scope helps semantic matching, more than exact-match keyword repetition does.

### 3.22 Ranking gigs on Google (external SEO)
- **[PRIOR-UNVERIFIED / REASONED]:**
  - Public gig pages are indexable. The page title comes from the gig title.
  - The page's meta description most likely comes from the opening of the description.
  - The URL slug is fixed at creation.
- Fiverr's domain authority helps pages rank for long-tail queries, often "[service] + fiverr" or very niche phrases. Competitive head terms are dominated by Fiverr's own category pages and agencies.
- **Legitimate approach:** an optimized first sentence, a descriptive original title at creation, links to the gig from DESORA's own website and portfolio, and real content marketing.
- **Avoid:** link schemes, bought backlinks, and click traffic.
- **Expected impact:** secondary. For an agency, DESORA's own site is the better Google asset.

### 3.23 Response time, completion rate, reviews, conversion and Success Score
- **Official:** responsiveness, review scores, client satisfaction scores from completed orders, availability and pricing are ranking inputs. Late deliveries, cancellations and low response rates reduce appearance. [OFFICIAL S1]
- **[PRIOR-UNVERIFIED]:** since the 2023 level overhaul, Fiverr uses a **Success Score** (1 to 10) built partly from private client-satisfaction ratings (S13 exists; its content was not read). "Client satisfaction scores from completed orders" in the ranking article very likely refers to the same private feedback.
- **Implication:** private satisfaction is invisible to the seller but affects both level and ranking. So over-communication, clear scope and on-time delivery matter even when public stars look fine.

### 3.24 Request to order
- Enabling "Request to order" limits instant orders for gigs that need consultation. Fiverr warns this "may lower total order volume". [OFFICIAL S5]
- Use it only where scope truly varies, for example full-funnel ad management. Keep at least one instantly orderable package, such as an audit or a starter package, to capture impulse buyers.

---

## 4. Myths vs reality

| # | Claim | Verdict | Basis |
|---|---|---|---|
| 1 | "Keywords are everything, so stuff them in and you rank." | **Myth.** Keywords only get a gig retrieved. The order comes from satisfaction and performance models, and stuffing can trigger review or denial. | OFFICIAL S1, S3, S7 |
| 2 | "Editing your gig resets its ranking." | **Myth.** It may disappear briefly while being re-indexed, then it's re-evaluated on the new content. | OFFICIAL S3; T3 S24, S25 |
| 3 | "Stay online 24/7 or you'll drop." | **Mostly myth.** Responsiveness and availability are factors; the online dot is not a proven lever. Bots to stay online are a ToS risk. | OFFICIAL S1; ANECDOTAL S35; DISPUTED snippet |
| 4 | "Share your gig in 50 Facebook groups to rank." | **Myth.** No official support. Low-intent traffic can dilute conversion, and it's spam risk. | REASONED / PRIOR |
| 5 | "New gigs get a guaranteed 30-day (or 72-hour) honeymoon." | **Unproven.** Exploration is plausible, but its length and size are unknown and not official. | DISPUTED S19, S20 |
| 6 | "Delete and re-create a gig to get a fresh boost." | **Myth and risky.** It loses history and risks the duplicate-gig rule. | PRIOR |
| 7 | "Your rank is the same for every buyer." | **False.** Results are personalized by language, urgency and behavior. | OFFICIAL S1, S7 |
| 8 | "Daily drops mean you've been penalized." | **Usually false.** Fluctuations are normal; judge long-term trends. | OFFICIAL S7 |
| 9 | "Fiverr's Choice is permanent, or can be applied for." | **False.** It's awarded by Fiverr and field reports show it rotating. | OFFICIAL S1; ANECDOTAL S28, S29 |
| 10 | "Ads have replaced organic ranking in 2025." | **Exaggerated.** Ads take visible slots, but Fiverr checks ad relevance and quality, and organic ranking still rests on relevance and satisfaction. | OFFICIAL S1, S6; T4 S22 rejected |
| 11 | "More gigs on the same keyword means more exposure." | **Myth.** They cannibalize each other, and duplicates are prohibited. | PRIOR / REASONED |
| 12 | "Leave tag slots empty to look professional." | **Weak.** Use all 5 if each is truly relevant. | T4 S15 vs S23; REASONED |
| 13 | "Request to order has no downside." | **False.** Fiverr says it may lower order volume. | OFFICIAL S5 |
| 14 | "Buying clicks, favorites or 'engagement' boosts rank." | **Prohibited and counterproductive.** | ToS; REASONED |
| 15 | "Off-platform authority now outranks gig quality." | **Unsupported.** Not an official factor. | T4 S22 rejected |

---

## 5. Playbooks and checklists

### 5.1 Pre-publish gig SEO checklist (run it before every new gig)

**A. Research**
1. Write down the single buyer intent the gig serves. One gig, one service.
2. Type 3 to 5 seed phrases into Fiverr's search bar and record every autocomplete suggestion.
3. For the top 2 or 3 phrases, open the results and note:
   - the subcategory that dominates;
   - typical price tiers and delivery times;
   - what the top 10 organic thumbnails and titles promise;
   - review counts, which show how saturated the query is.
4. Pick the primary keyword. It should have clear buyer intent and competition you can realistically beat, which usually means long-tail (e.g. "Meta ads for ecommerce" rather than "Facebook ads").
5. Pick 4 to 6 secondary phrases: synonyms, platform variants, niche or industry variants, and language variants such as "French".

**B. Placement**
6. **Category / subcategory:** the one where the top gigs for the primary keyword live.
7. **Metadata:** tick every service type, platform or industry you truly deliver, and nothing you don't.
8. **Title:** "I will" + primary keyword within the first ~50 characters + a benefit or qualifier. Stay at or under 80 characters and read it aloud.
9. **Tags (5):** primary keyword, 2 close variants, 1 long-tail niche phrase, 1 adjacent buyer phrase. Each at or under 20 characters.
10. **Description (at most 1,200 characters):** primary keyword in sentence 1, and 1 or 2 secondary phrases naturally in the body. Structure: outcome, who it's for, what's included, process, why DESORA, call to action.
11. **Packages:**
    - 3 tiers, named by outcome (e.g. "Starter audit / Growth / Full management").
    - Scope is explicit: number of posts, number of ad sets, revisions.
    - Delivery times are realistic.
    - The lowest tier sits at an entry budget point.
    - An express extra is offered only if you can honor it.
12. **FAQ (5 to 8):**
    - Answer the real objections: ad spend not included, access needed, results timeline, languages, reporting.
    - Phrase questions the way buyers do.
13. **Requirements:** a short, specific intake so orders start on time. This protects the on-time delivery rate.
14. **Gallery:**
    - A thumbnail that stays legible at small size and shows the outcome, not just a logo.
    - A short video if possible.
    - Real portfolio items or anonymized results, with client permission.
    - No contact details or off-platform links.

**C. Profile and operations**
15. **Profile:**
    - Languages with true proficiency (English, French, Arabic).
    - Specific skills.
    - A professional description matching the gig portfolio.
16. **Operations:**
    - App notifications on.
    - A reply-time commitment during target-market hours.
    - Quick-response templates ready.
    - Capacity to take on orders immediately.
17. **Publish** only when all of the above is complete. Log the publish date and baseline (see 5.3).

### 5.2 Tag selection method (5-slot matrix)

| Slot | Role | Rule | Example (Meta ads gig) |
|---|---|---|---|
| 1 | Primary head/mid phrase | Most common autocomplete phrase you truly fit | `facebook ads` (12 chars) |
| 2 | Close variant / platform synonym | Buyers who use another name for the same thing | `meta ads manager` (16) |
| 3 | Platform or feature variant | A different sub-intent you fully serve | `instagram ads` (13) |
| 4 | Long-tail niche | Industry or result modifier, low competition | `ecommerce ads` (13) |
| 5 | Adjacent buyer phrase | Task wording a buyer might use | `ads campaign setup` (18) |

Rules:
- Every tag must pass the test "would a buyer typing this be happy to land on my gig?"
- Don't use Fiverr, competitors' or trademarked names you have no link to.
- Revisit tags every 60 to 90 days against autocomplete.

### 5.3 Post-publish monitoring protocol (30/60/90 days)
- **Log weekly per gig:** impressions, clicks, orders, cancellations, messages received, average response time. Compute CTR (clicks ÷ impressions) and conversion (orders ÷ clicks).
- **Don't change anything major in the first 14 days** unless there is a clear defect (typo, wrong category, broken image).
- **Decision tree (30-day windows, compared with the previous window and with sibling gigs):**
  - **Impressions near zero after 14 to 30 days:**
    1. Check the gig status and any T&S notice [OFFICIAL S3].
    2. Check the category and metadata.
    3. Check that the primary keyword appears in autocomplete.
    4. Move the title and tags to a more specific long-tail phrase [OFFICIAL S8].
  - **Impressions fine, CTR low (relative):** test a new thumbnail first, then the title benefit wording, then the entry price. Change one element per 14 to 30 day test.
  - **Clicks fine, orders low:** rework the package scope and prices, the opening description, the FAQ, the portfolio proof and the reply speed to pre-sale messages.
  - **Everything drops at once, across all gigs, on the same day:** suspect a platform issue or an account-level issue first [ANECDOTAL S36]. Check notifications and wait 3 to 7 days before editing.
- **Keep a change log** (date, field, old value, new value). It's the only way to learn what works, because rankings are personalized and noisy.

### 5.4 Safe editing protocol
1. Make one major change per gig per test window.
2. Expect a temporary dip or disappearance during re-indexing [OFFICIAL S3].
3. Don't edit again for 14 to 30 days unless something is broken.
4. Never change the category of a gig that is performing well without a strong reason. Build a new, distinct gig instead.
5. After a price increase, watch conversion for 30 days. Price is an official ranking input.

### 5.5 Ranking protection: operations that feed the algorithm
- Reply to every new inquiry fast, ideally within an hour in the buyer's working day. Responsiveness is official.
- Never deliver late. Use realistic delivery times, and ask for extensions through the order page before the deadline.
- Avoid cancellations. Qualify scope before the order through messages and custom offers, and use clear requirements.
- Drive private satisfaction: confirm the brief, send a progress update, over-deliver slightly, and explain the delivery. This feeds client satisfaction scores and the Success Score.
- Use the availability setting for real absences instead of going silent.

### 5.6 Multi-gig architecture for an agency (anti-cannibalization)
- Map each service to a unique primary keyword and a unique subcategory where possible.
- Don't create two gigs whose titles target the same head phrase. Differentiate by platform (Instagram vs LinkedIn), outcome (audit vs ongoing management), industry (e-commerce vs local business) or language (French-language service).
- Cross-link through the profile and portfolio, not duplicated copy.
- Retire or rework the weakest gig each quarter instead of adding near-duplicates.

---

## 6. Templates, examples and formulas

### 6.1 Title formulas (character counts checked, including "I will")
- `I will [core service keyword] + [for whom / platform] + [benefit]`
- `I will be your [role keyword] for [platform/audience]`
- `I will [action] your [asset] to [outcome]`

Examples for DESORA:

| Title | Chars |
|---|---|
| I will manage your Instagram and create engaging content | 56 |
| I will be your social media manager for Instagram and Facebook | 62 |
| I will run and optimize Facebook and Instagram ads for leads | 60 |
| I will set up and manage Meta ads for your ecommerce store | 58 |
| I will do local SEO and optimize your Google Business Profile | 61 |
| I will manage your social media in French and English | 53 |
| I will create a monthly social media content calendar | 53 |
| I will do a complete SEO audit and action plan for your website | 63 |
| I will create TikTok ads that convert for your brand | 52 |
| I will manage your LinkedIn page and grow your B2B audience | 59 |

Note: in each example the primary keyword falls within the first ~40 characters, so it survives card truncation.

### 6.2 Tag examples (≤20 characters each)
- `social media manager` (20)
- `instagram manager` (17)
- `content calendar` (16)
- `facebook ads` (12)
- `meta ads manager` (16)
- `instagram ads` (13)
- `local seo` (9)
- `google business` (15)
- `gmb optimization` (16)
- `french social media` (19)
- `tiktok ads` (10)
- `linkedin marketing` (18)

### 6.3 Description keyword map (1,200-character budget)

| Block | ~Chars | Content | Keyword role |
|---|---|---|---|
| 1. Hook | 150 | Outcome + primary keyword in sentence 1 ("Need Meta ads that bring real leads, not just clicks?") | Primary |
| 2. Who it's for | 150 | Niches or industries (e-commerce, local business, coaches) | Secondary: niche phrase |
| 3. What you get | 350 | Bulleted scope matching the packages | Secondary: platform variants |
| 4. Process | 200 | 3 to 4 steps: brief → strategy → launch → report | Natural language |
| 5. Why DESORA | 200 | Agency team, languages (EN/FR/AR), reporting, proof | Language keyword |
| 6. Call to action | 100 | "Message me with your goal and budget before ordering for a custom plan." | — |

Rule: the primary keyword appears once in block 1, and at most once more. Secondary phrases appear once each. No keyword lists.

### 6.4 FAQ template (conversion first, secondary keywords second)
- "Is the ad budget included in the price?"
- "What access do you need to my Facebook/Instagram account?"
- "How soon will I see results from the campaign?"
- "Can you create content in French or Arabic?"
- "What will I receive in the monthly report?"
- "Do you work with e-commerce / local businesses?"

### 6.5 Package naming formula
`[Outcome level] – [scope unit]`, for example:
- "Starter – 1 campaign setup"
- "Growth – 3 ad sets + weekly optimization"
- "Scale – full-funnel management + report"

Keep delivery times realistic, and offer express delivery only as an extra you can honor.

### 6.6 Funnel metrics formulas
- CTR = clicks ÷ impressions
- Conversion rate = orders ÷ clicks
- Orders per 1,000 impressions = orders ÷ impressions × 1,000. This is the single best cross-gig comparison.
- Cancellation rate = cancelled ÷ total orders over the period. Target: effectively 0.

---

## 7. Free tools and resources

| Tool | URL | Purpose | Free? |
|---|---|---|---|
| Fiverr search bar autocomplete | fiverr.com | Real buyer phrasing for titles and tags | Yes |
| Fiverr search filters + sort | fiverr.com (search results page) | Competitor mapping by price, level, delivery; checking metadata options | Yes |
| Fiverr seller Analytics (Gigs tab) | fiverr.com seller dashboard | Impressions, clicks, orders, cancellations per gig | Yes |
| Fiverr Help Center: "Fiverr's search and recommendation system" | https://help.fiverr.com/hc/en-us/articles/23429542870161 (and /37332082211217) | Official ranking factors | Yes |
| Fiverr Help Center: "Can't find your Gig?" | https://help.fiverr.com/hc/en-us/articles/4599361153809 | Official causes of gigs missing from search | Yes |
| Fiverr Community education blog | community.fiverr.com/public/blogs | Official guidance on the algorithm and funnel drops | Yes |
| Fiverr seller resources (Rising Talent, etc.) | sellers.fiverr.com | Official new-seller programs | Yes |
| Seller Plus Advanced Analytics | help.fiverr.com article 6523401252881 | Deeper gig and market analytics | Paid subscription |
| Fiverr Ads | help.fiverr.com article 360017729338 | Paid exposure in search (ad badge) | Paid |
| Google Trends | trends.google.com | Seasonality of service demand (e.g. "tiktok ads") | Yes |
| Google Keyword Planner | ads.google.com | Rough demand for phrases (Google, not Fiverr) | Free with an Ads account |
| Browser incognito window | — | Logged-out view of search to reduce personalization (still location-dependent) | Yes |

Cautions:
- Don't log into your Fiverr account through VPNs or shared devices to "check rank" from other countries. Unusual login patterns can trigger account security checks [PRIOR-UNVERIFIED].
- Treat third-party browser extensions that scrape competitor tags or data with caution (privacy and malware risk, possible ToS issues). None were verified this session.

---

## 8. Terms-of-Service risks to avoid (never recommend)
- Fake reviews, review swaps, or ordering your own gigs (self-orders) to create reviews or sales velocity.
- Buying clicks, impressions, favorites or "engagement". Joining link-swap or "gig promotion" groups built to fake traffic.
- Keyword stuffing, irrelevant tags, or unrelated trademarks in the title or tags.
- Duplicate gigs, or deleting and re-creating gigs to game exposure.
- Bots, scripts or auto-refreshers to stay online or auto-reply in misleading ways.
- Off-platform contact or payment details in gigs, galleries or messages.
- Misrepresenting metadata (claiming platforms, languages or delivery times you can't honor). This can also cause cancellations, which are an official negative ranking factor.

---

## 9. Open questions and unverified items (for the owner, or for a follow-up run with web access)

1. **Research blocked.** WebFetch was egress-blocked for every domain, and the session WebSearch cap (200) ran out. To finish this cluster properly, the owner could do one of:
   - (a) allow egress to help.fiverr.com, fiverr.com, community.fiverr.com, investors.fiverr.com and reddit.com;
   - (b) raise `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`;
   - (c) explicitly approve the Apify web-fetch connector (paid, uses the owner's Apify credits).
2. Exact current field limits: title 80, tag length 20, description 1,200, FAQ lengths, package description lengths. The first three are consistent across a T4 source and prior knowledge. All should be checked in the live gig editor.
3. Whether the FAQ, package text and requirements are indexed for search relevance. No official statement was found.
4. Whether any new-gig exploration boost exists, and for how long.
5. Current gig caps per level, and whether Fiverr limits the number of one seller's gigs per results page.
6. The exact current buyer filter set (Online sellers, Local sellers, Pro toggle, "Seller lives in") and the sort options. Verify on the live results page.
7. The current definition and scope of Fiverr's Choice (per query or global).
8. Whether online status counts in ranking at all. Currently: no official evidence it does, and an unclear-source snippet claiming it might.
9. The Fiverr Go / Dynamic Matching share of demand in 2025 and 2026, and how briefs are routed to sellers. Needs investors.fiverr.com shareholder letters, which were not reachable.
10. Whether the gig URL slug really stays fixed after title edits, and how Fiverr sets gig meta descriptions for Google.
11. Credible CTR and conversion benchmarks by category. None were found; build DESORA's own baseline.
12. What "Advanced Analytics" (Seller Plus) shows about search terms. The article exists but was not read.
