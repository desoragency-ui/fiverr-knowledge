# Cluster 09: Positioning, Profile Optimization, Branding and Scaling a Fiverr Business into an Agency

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - §2.1 level thresholds are OUTDATED. Current: L1 SS5/4.4/80%/5 orders/3 clients/$400; L2 SS7/4.6/90%/20/10/$2,000; TRS SS9/4.7/90%/40/20/$10,000 plus manual review (master Law 6).
> - Time-zone statements corrected to Morocco UTC+0 (since 20 Sep 2026).


Prepared for DESORA (a marketing agency in Morocco selling on Fiverr). Research date: 2026-09-26. Cluster owner: research agent 09.

---

## 0. Research status: read this first

Two things limited how much could be checked in this session. The advisor must know about both.

1. **WebFetch was blocked for every domain tested.** The organization's egress proxy refused all of these with "blocked by the network egress proxy / connect_rejected (organization policy)": help.fiverr.com, www.fiverr.com, community.fiverr.com, blog.fiverr.com, investors.fiverr.com, globenewswire.com, aprildunford.com, hbr.org, medium.com, en.wikipedia.org. Reddit also refused. **Zero full pages were fetched.** I did not try to get around the policy with third-party scraping connectors, because that would bypass an organization control and spend the owner's paid credits without permission.
2. **The shared WebSearch budget ran out.** After 12 search attempts from this agent (9 returned results, 2 hit rate limits, 1 was refused), the harness reported that the session had used 200 of 200 WebSearch calls across all agents. It said to ask the user to raise `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION` if more are needed.

**What that means for this document:**
- Claims tagged **[OFFICIAL]** come from Fiverr Help Center text or Fiverr press-release text that search results returned in this session (sources S1, S2, S6, S7, S9, S10, S11). These are the most reliable items here. Even so, they are search snippets, not full reads, so check the full article before quoting it word for word.
- Claims tagged **[BG]** come from the researcher's background knowledge (training data to mid-2026), and **were not re-checked in this session**. Canonical positioning frameworks (Dunford, Ries and Trout, Moore, Enns, Baker) are stable, well-documented book content, so their risk is low. Fiverr-specific numbers and policies tagged [BG] carry **medium risk**. Treat them as hypotheses to confirm on help.fiverr.com before acting on them or quoting them to a client.
- [CONSENSUS] means 3 or more independent non-official sources agree. [ANECDOTAL] means one or a few field reports. [DISPUTED] means sources conflict, and my reasoned verdict is given.
- Section 7 lists everything that still needs verification, in priority order.

Tag legend: [OFFICIAL] | [CONSENSUS] | [ANECDOTAL] | [DISPUTED] | [BG] (background, not re-verified this session) | [INFERENCE] (my reasoning from verified facts)

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Fiverr now officially supports agencies, so DESORA does not have to pretend to be one person.** "Fiverr Agencies" was announced on 30 Jan 2024 and is "available across Fiverr and Fiverr Pro" (S6). In the Help Center's version, a freelancer profile "becomes a full agency page that includes your team members, services, and agency description", with **a minimum of 3 and a maximum of 9 team members** at onboarding. Eligible categories include **Digital Marketing**, Programming & Tech, Graphics & Design, Video & Animation and Business (S9). [OFFICIAL]
2. **The sanctioned way for several people to work inside one seller account is the Team Account, not a shared password.** The owner is the admin and has a team admin dashboard. Members "can access and perform any actions related to client management, including orders and message history". Invitations go out by email and expire after 7 days (S10). [OFFICIAL] Sharing login credentials is therefore both unnecessary and a compliance risk (see §2.7). [INFERENCE + BG]
3. **Only the admin carries the reputation.** "Only the admin will receive the benefits as well as the drawbacks (reviews, levels, success score, statistics etc.) from team order completion." On agency Team Accounts, "the members aren't vetted… only the admin is" (S9, S10). [OFFICIAL] So one bad team delivery damages the owner's metrics directly, which is why quality control (QC) in front of every delivery is not optional.
4. **Switching to an agency profile keeps your history.** "Your orders, Gigs, chats, and reviews all remain unchanged when you switch to an agency profile" (S9). [OFFICIAL] Being able to move from a solo profile to an agency profile without losing reviews removes most of the cost of the "personal vs agency" decision.
5. **Positioning is a context decision, not a slogan.** Using April Dunford's components (competitive alternatives → unique attributes → value → best-fit customers → market category, plus an optional trend), DESORA should choose one market frame per gig in which its strengths are obviously valuable. [BG, canonical, R1]
6. **On Fiverr, the market category is largely set by Fiverr's taxonomy.** Buyers search, and Fiverr ranks gigs inside category and subcategory pages, so you position inside a subcategory with the title, niche and buyer type, not by inventing a category. "Big fish in a small pond" (own a sub-segment) usually beats both head-to-head and new-category plays. [INFERENCE from R1 and BG]
7. **Specialise on at least one axis (industry, platform, outcome, buyer type or language) and keep the profile coherent across gigs.** Specialist gigs match buyer intent, earn more relevant reviews and support higher prices. Blair Enns, David C. Baker, Philip Morgan and Ries & Trout (Law of Focus) all argue this, independently. [CONSENSUS in positioning literature, R2–R5] Its effect on Fiverr ranking specifically is [BG / unverified].
8. **DESORA's strongest candidate differentiator is structural and hard to copy:** a French, Arabic and English team, one hour or less from Paris, at nearshore prices. **Correction (2026-09-26):** Morocco has been on UTC+0 with no DST since 20 Sep 2026, so it is 1 h behind Paris in winter and 2 h behind in summer. Say "1–2 hours from Paris" or "on London time", **not** "same hours as Paris". [INFERENCE + BG] This feeds "big fish, small pond" positions such as "Meta Ads for French-speaking e-commerce brands".
9. **The profile photo can be a face or, where relevant, a company logo, and AI-generated images are allowed if they accurately reflect you or your service.** Not allowed: another person, a celebrity, a GIF, or anything that misrepresents the service. The photo should be clear and recent, front-facing, high-resolution, well-lit and on a simple background (S1). [OFFICIAL] My recommendation for a solo-led agency is the founder's real face, with the logo used in gig images (S1 plus trust reasoning). For an Agency profile, team-member photos must be "clear portrait, neutral background, single person, not cropped or blurry" (S9). [OFFICIAL]
10. **The display name can be a business name, but the username is permanent.** The display name "can be your real name, a business name, or any professional name" and must be 2 to 50 characters (S2). [OFFICIAL, via snippet] The username (account ID) cannot be changed (S2, S14). One third-party source says display-name changes are limited to once every 30 days and take 24 to 48 hours to approve (S3). [ANECDOTAL, T4] Choose the username carefully: "desora" or "desora_agency" rather than a personal handle, if the account is still new.
11. **The text fields are short, so every character must carry positioning.** Third-party guides report 600 characters for the profile "About" (with only about 200 visible on mobile before expanding), 150 for the tagline, 80 for the gig title, 1,200 for the gig description, 5 tags of 20 characters each, 100 characters per package description and 80 per education or certification row (S4, S5). [ANECDOTAL, T4 sources that mostly agree; confirm in the live editor] Write so the first 200 characters of the About section stand alone.
12. **Fiverr is moving up-market, so premium positioning goes with the platform's direction.** In 2024 Fiverr described itself as shifting "from a services marketplace to a hiring platform" (hourly work, full skill sets, a professions catalog, and a Kickstart programme that lets sellers import past work experience and add top clients from other jobs) (S7). [OFFICIAL] Active buyers have been falling while spend per buyer rises. [BG; confirm figures in investor reports]
13. **Build a gig ladder, not a gig list.** An entry gig (small, fixed scope, fast, low risk, such as an ads audit) leads to a core gig (setup or campaign) and then to a premium or recurring gig (monthly management through Fiverr subscriptions or custom offers). Every review earned on a cheap gig also appears on the profile that sells the expensive one. [BG, common practice; ANECDOTAL on Fiverr]
14. **Raise prices when capacity fills, not when you feel ready.** A practical trigger: when the queue is above about 80% of your planned capacity for 2 to 3 weeks running, or delivery times start slipping, raise the core package by 10–20% or add a premium tier. Fiverr's per-gig queue limit and availability controls protect metrics while you do this. [BG; the thresholds are a heuristic, not data]
15. **Everything you need to show sells: portfolio and proof matter more than adjectives.** Fiverr's Portfolio and live (order-derived) portfolio, the reviews, and the Summer 2024 "top clients / past work experience" profile features are the proof layer (S7). [OFFICIAL for the feature's existence] Replace "high quality" with numbers, named industries and visible work.
16. **Do not create multiple Fiverr accounts to cover different niches.** Use multiple gigs on one account, and later an Agency profile. Fiverr's position is generally understood as one account per person, with duplicate accounts risking suspension of every linked account. [BG; high-priority verify]
17. **Subcontracting is a grey area, not a licence.** Fiverr now provides Team Account and Agencies, which shows the platform wants people who work on orders to be visible and invited, not hidden. Hiring help is widely practised, but the account holder stays fully responsible, and misrepresenting who does the work, or where they are, is the risk. [DISPUTED / BG; see §2.7 verdict]
18. **Fiverr Pro is a positioning asset, not a purchase.** It is a vetted, application-based tier. Fiverr folded its business-buyer product into "Fiverr Pro", and Pro business accounts have admin and member roles (S11 shows the Pro invite path Profile picture > Administration > Account Members). Apply once the portfolio shows real brand work and the metrics are clean. [OFFICIAL for account roles; BG for vetting criteria]
19. **Authority built off Fiverr (a LinkedIn presence, case studies on desora's own site, Behance) raises conversion on Fiverr without breaking its rules,** provided you never solicit Fiverr-originated buyers to pay or talk outside Fiverr, and never put contact details in Fiverr messages or profiles. [BG; the off-platform rules belong to another cluster, cross-check them]
20. **Diversify to cut platform risk, but keep the channels separate.** Clients found on Fiverr stay on Fiverr. Clients from DESORA's own marketing, LinkedIn, Malt (strong in France), Comeup (French-language micro-services), Upwork or Contra can be served directly. Target: no single platform above 50–60% of revenue once past about $10k/month. [BG heuristic]
21. **Scaling mostly fails in delivery, not in marketing.** You need standard operating procedures (SOPs), intake forms (Fiverr gig requirements), templates, a single project board, a QA checklist and a named reviewer for every delivery, all before hiring freelancer number 2. [CONSENSUS in agency-operations literature, BG]
22. **Treat headline "$100k/month Fiverr seller" stories as unverified until proven.** The credible way to test them is to estimate a revenue floor from public review counts × package prices. Most viral claims fail that test or come with a course to sell. [INFERENCE; no case was verified in this session]

---

## 2. Detailed knowledge by sub-topic

### 2.1 Platform context, 2024 to 2026: why positioning matters more now

- **Winter 2024 release (30 Jan 2024)** introduced **Fiverr Agencies**, "available across Fiverr and Fiverr Pro". Businesses get "a detailed profile of an agency's capabilities, including a full view into their team and past work" (S6, S8). [OFFICIAL]
- **Summer 2024 release (23 Jul 2024)** framed Fiverr as moving "from a services marketplace to a hiring platform". It added profiles that show a full skill set, flexible hourly work, a new **professions catalog** showing skills, expertise and qualifications, a **Kickstart** onboarding programme (free courses, market-research tools, real-time AI feedback while creating projects, importing past work experience, adding top clients from other jobs), and a revamped freelancer level system. Fiverr was also testing ratings changes to "alleviate the pressure of achieving a perfect 5-star rating" (S7, S13). [OFFICIAL]
- **Implication for DESORA [INFERENCE]:** Fiverr is rewarding sellers who look like hireable professionals and teams (full profiles, past clients, hourly-capable, agency pages) over anonymous gig sellers, so profile depth is increasingly part of conversion.
- **Level system (post-2023 revamp) [BG, verify]:** New Seller, Level 1, Level 2 and Top Rated, driven by a 1–10 **Success Score** (buyer-satisfaction signals, including private feedback and cancellations), rating, response rate, completed orders, earnings and time on platform. The thresholds reported widely in 2024 were roughly: Level 1 at $400 earned and 10 orders; Level 2 at $2,000 and 25 orders; Top Rated at $20,000 and 100 orders plus manual review, each with Success Score ≥ 8 and minimum ratings. Verify the current numbers on help.fiverr.com ("Top Rated freelancers" and "Freelancer levels").
- **Fiverr Go (announced Feb 2025) [BG, verify]:** AI tools for freelancers, including a personal AI assistant that answers inquiries and a "personal AI creation model" trained on the freelancer's own work. For positioning this matters because commodity, templated output such as simple logos or generic posts is being automated. **Position DESORA on judgement and outcomes** (strategy, media buying, testing, localisation) rather than raw production.
- **Fiverr restructuring, 2025 [BG, verify]:** Fiverr announced a large headcount cut (about 30%, reported in Sept 2025) framed as becoming an "AI-first" company. The implication is more automation in support and matching, so clean metrics and clear gig signals matter more.
- **Buyer economics [BG, verify figures in investors.fiverr.com quarterly reports]:** annual active buyers have trended down since about 2021 (from above 4M to about 3.5M) while spend per buyer has risen (past $300). Fiverr management describes a deliberate move up-market ("complex services", Fiverr Pro, larger businesses). **This supports premium positioning and multi-package or retainer offers over cheap entry pricing as a long-term strategy.** [BG]

### 2.2 Profile optimization, field by field

#### 2.2.1 Profile photo
- **[OFFICIAL] (S1):** It must be a unique, original photo representing you or the service you offer. It must not show another person or a celebrity, must not be a GIF, and must not misrepresent the service. Use a clear, recent photo that represents you honestly, "or your company logo, if relevant". If it is you: face the front, high resolution, well-lit, approachable, simple uncluttered background. **An AI-generated image is allowed "as long as it fully meets all the criteria… and reflects you or your service accurately."**
- **[OFFICIAL] (S9) Agency team photos:** clear portrait, neutral background, one person, not cropped or blurry.
- **Recommendation [INFERENCE + BG]:** For a founder-led agency, use the founder's real face on the main profile, since a person builds more trust than a logo on a marketplace where buyers talk one-to-one, and put the DESORA logo and brand colours in gig thumbnails. Once on an Agency profile, use real headshots of each team member. **Never** use stock or AI "team members" who do not exist; that is misrepresentation.
- **Myth:** "Logos are banned" (false per S1). **Myth:** "AI photos are banned" (false per S1, as long as they accurately represent you). **Risk:** an AI-idealised face that doesn't match you on a video call damages trust.

#### 2.2.2 Display name and username
- **[OFFICIAL] (S2):** The display name can be your real name, a business name or a professional name; 2 to 50 characters; it starts with a letter, number or underscore, and uses English letters, numbers and `- _ @ +`. The **username is permanent** (S2, S14).
- **[ANECDOTAL] (S3, T4):** Changeable once every 30 days, with 24–48 hours for approval.
- **Recommendation:** Use "DESORA | <Founder first name>" or "<Founder name> · DESORA" if the field accepts those characters, to combine personal trust with the agency brand. Otherwise "DESORA Agency". Test in the editor, because the allowed-character list above may reject "|" and "·".

#### 2.2.3 Tagline / one-liner / professional headline
- **Limit:** reported as 150 characters (S4, T4). Older profile versions had a shorter "one-liner". **Write to 70 characters or fewer** so it survives truncation in search cards and review snippets. [INFERENCE]
- **Formula:** `[Outcome or service] for [specific buyer] | [differentiator]`, for example "Meta & Google Ads for French-speaking e-commerce brands | FR/EN/AR" (66 characters).
- Do not use "Expert", "Professional", "#1" or "Best" without proof. It is generic, it sounds like everyone else, and superlatives break positioning discipline (Ries & Trout's Law of Candor argues the opposite: admit a limitation to gain credibility). [BG, R3]

#### 2.2.4 Description / "About"
- **Limit:** 600 characters, with about 200 shown on mobile before "read more" (S4, S5). [ANECDOTAL, T4; confirm in the editor]
- **Structure (5 beats, about 550 characters):** (1) who you help and the outcome, (2) what makes you different: team, languages, time zone or niche, (3) proof: numbers, industries, types of client, (4) how working with you goes: the process and the risk reducer, (5) a call to action to message, or which gig to start with.
- **Rules [BG, confirm in Fiverr ToS and community standards]:** no email, phone, website URL, social handles or external payment mentions in the profile. No claims you can't prove. No keyword stuffing.
- **Language:** write in English for the global profile. Buyers on localised Fiverr sites may see machine-translated text [BG], so avoid idioms. If French-speaking buyers are the target, put "Je parle français" / "Nous travaillons en français" as a short line, because it is itself a positioning signal. [INFERENCE]

#### 2.2.5 Languages
- **[BG]** Fiverr lists languages with proficiency levels (Basic, Conversational, Fluent, Native/Bilingual), and buyers can filter search by the language the seller speaks. For DESORA, list **Arabic (Native), French (Fluent or Native), English (Fluent)** and, if true, **Spanish**. Only claim levels you can hold a live call in. This makes a "Francophone / MENA" niche filterable.

#### 2.2.6 Skills
- **[OFFICIAL] (S7):** Since 2024 profiles "include their full set of skills". **[BG]** Choose skills that match the gig subcategories and buyer search vocabulary ("Meta Ads", "Google Ads", "Social Media Marketing", "Shopify Marketing", "Arabic Copywriting", "French Copywriting"). Keep them coherent with the chosen positioning. Twenty scattered skills signal a generalist.

#### 2.2.7 Education and certifications (including Fiverr Learn)
- **Row limit reported as 80 characters** (S4, T4).
- **[BG]** Fiverr Learn certificates, including Fiverr's own freelancing courses and category courses, can be shown on the profile. **There is no evidence in this session that they affect search ranking.** Treat them as minor trust signals. Platform certifications carry more weight with marketing buyers: **Meta Blueprint, Google Ads certifications through Skillshop (free), HubSpot Academy (free), TikTok Academy**. These are verifiable and specific to the niche. [BG; the certification programmes exist, but check current names and prices]
- **Never list certifications you do not hold.** Fake credentials are misrepresentation and can end an account. [Rule of thumb, consistent with S1's "misrepresent" language]

#### 2.2.8 Portfolio and proof
- **[OFFICIAL] (existence):** Help Center article "Using your Fiverr Portfolio" (not readable this session). **[BG]** The portfolio holds projects (images or video plus a description) and can be fed automatically from delivered orders when the buyer allows it (a "live portfolio"). **[OFFICIAL] (S7):** the 2024 Kickstart programme lets sellers import past work experience and add top clients from other jobs.
- **Tactics [BG]:** (1) Every portfolio item should state the **context, the action and the result** (for example "Shopify skincare brand, France: restructured Meta campaigns, ROAS 1.4 → 2.6 in 60 days"). (2) Anonymise clients when there is no permission. (3) Pin work that matches the gig ladder's core offer. (4) Refresh quarterly.
- **Compliance:** only show work you or your team actually did, and respect client confidentiality agreements (NDAs).

#### 2.2.9 The "about" story
- Buyers on a marketplace choose with little information. A short origin story ("We started DESORA to give French-speaking small brands the kind of ad strategy big agencies sell, at a price they can afford") gives **a reason why**, which Cialdini's research links to compliance and liking [BG, R8]. Keep it to one sentence in the profile. The longer version belongs in gig descriptions, a gig video or the Agency page description.

#### 2.2.10 Identity verification and truthfulness
- **[BG, verify]:** Fiverr has required identity verification for sellers in many cases since about 2023. The display name can be a brand, but the **account holder is a verified real person**, and location detection flags mismatches. **Never misrepresent location** (for example, claiming to be in France). DESORA's Morocco base is a positive when framed as nearshore, francophone and in the European time zone.

### 2.3 Positioning strategy

#### 2.3.1 April Dunford: *Obviously Awesome* (2019) applied to Fiverr [BG, canonical, R1]
**The components:** (1) **Competitive alternatives**: what the buyer would do if you didn't exist, which on Fiverr includes other gigs, a local agency, a freelancer from Upwork or Malt, doing it in-house, AI tools, or doing nothing. (2) **Unique attributes**: capabilities the alternatives lack. (3) **Value and proof**: what those attributes let the buyer do, and the evidence. (4) **Best-fit customers**: the characteristics of buyers who care a lot about that value. (5) **Market category**: the frame that makes the value obvious. (6) Optionally, **relevant trends**, used carefully.

**The 10-step process, adapted:**
1. List the customers who love you, meaning DESORA's best past clients (repeat buyers, 5-star reviews, highest order value).
2. Form the positioning team: founder, lead media buyer, lead designer.
3. Let go of positioning baggage ("we are a full-service agency").
4. List true competitive alternatives from the buyer's side (read buyer requests and messages: "we tried a cheap freelancer", "our intern runs Instagram").
5. Isolate unique attributes, for example a trilingual team, European time zone, native Arabic and French copy, e-commerce ad experience, a report format.
6. Map attributes to value themes, for example "ads in your customers' language that don't read like translations", "same-day replies during your workday", "one team for creative and media buying".
7. Decide who cares a lot, for example Francophone Shopify brands spending €2k–20k/month on ads, or Gulf restaurants.
8. Choose a market frame that puts those strengths at the centre. On Fiverr that means a **subcategory, plus a niche qualifier in the title and tags**.
9. Add a trend only if it helps, for example "AI-assisted creative testing" or "TikTok Shop launch in France", and only if you can deliver it.
10. Capture it in a shareable positioning canvas and derive the title, tagline, gig images, FAQs and packages from it.

**Dunford's three category strategies, mapped to Fiverr:**
- *Head-to-head* (compete in "Social Media Marketing" as a generic leader): hard for a new seller, because incumbents with thousands of reviews dominate.
- *Big fish, small pond* (own a sub-segment of an existing category): **the default for DESORA.** Examples: "Meta Ads for French e-commerce", "Arabic social media for Gulf restaurants".
- *Create a new category*: rarely possible on Fiverr, because the taxonomy is fixed. The "category" you create lives in the title and buyer language, not in Fiverr's menus.

#### 2.3.2 Ries and Trout [BG, canonical, R3]
- *Positioning: The Battle for Your Mind* (1981) and *The 22 Immutable Laws of Marketing* (1993). Positioning happens in the prospect's mind. The laws that transfer to Fiverr:
  - **Law of Focus:** own one word or phrase ("French e-commerce ads").
  - **Law of Category:** if you can't be first in a category, set up a new one you can be first in. On Fiverr, that means a niche qualifier.
  - **Law of Sacrifice:** give up product lines, target markets or constant change. **Fewer gigs, tighter niche.**
  - **Law of Line Extension:** adding unrelated gigs dilutes the profile.
  - **Law of Candor:** admitting a negative ("we don't do SEO; we only do paid ads") makes the positive credible.
  - **Law of the Ladder:** if you're third in a big category, say so honestly and pick a rung you can own.

#### 2.3.3 Geoffrey Moore's positioning statement [BG, canonical, R6]
"For (target customer) who (need/problem), (DESORA gig/offer) is a (category) that (key benefit). Unlike (primary alternative), we (primary differentiation)." Use it internally. Do not paste it into Fiverr text.

#### 2.3.4 Specialist vs generalist
- **Literature consensus [CONSENSUS across R2 Enns, R4 Baker, R5 Morgan, R3 Ries & Trout; BG]:** specialists face less competition, gain expertise faster, charge more and win referrals more easily. The risks are a market that is too small and exposure to one demand shock. Enns's rule of thumb is to specialise until it feels uncomfortable. Morgan distinguishes **vertical** (industry) from **horizontal** (service or platform) specialisation and recommends choosing one to lead.
- **Fiverr-specific reasoning [INFERENCE]:** Fiverr search is gig-based and intent-driven. A buyer searching "facebook ads for shopify" rewards a gig whose title, tags, images and reviews all say exactly that. A specialist's reviews ("great results for our Shopify store") compound relevance. A generalist profile with logo + SEO + video + ads gigs weakens the "why you" when the buyer clicks through to the profile.
- **Verdict for DESORA:** keep **one lead specialisation** visible on the profile (for example paid social and ads for French-speaking brands) and **2–4 supporting gigs in adjacent subcategories** (ad creatives, social media management, landing-page copy in FR/AR) that serve the same buyer. Adjacent is fine; unrelated is not.

#### 2.3.5 Axes to niche on, with Fiverr examples
| Axis | Example for DESORA | Pros | Cons |
|---|---|---|---|
| Industry (vertical) | Restaurants, clinics, real estate, e-commerce fashion | Reviews and portfolio compound; buyers self-identify | Smaller search volume per niche |
| Platform / tool (horizontal) | Meta Ads, TikTok Ads, Shopify marketing, Google Ads | Matches Fiverr search terms directly | Crowded; must add a second qualifier |
| Outcome | "More bookings", "first 100 sales", "leads under €X" | Speaks value; supports premium pricing | Harder to promise; don't guarantee results |
| Buyer type | Solo founders, agencies needing white-label, SaaS marketers | Can tailor packages, communication and pricing | Must be visible in the title or images |
| Language / market | French, Arabic, bilingual; France, Belgium, Quebec, Gulf | DESORA's natural moat; filterable by language | Must deliver native quality |

**Best combination:** platform + language/market (easy to search, hard to copy), then add an industry via a dedicated gig once reviews in that industry accumulate.

#### 2.3.6 Differentiation, unique selling proposition (USP) and distinctiveness
- A USP must be **specific, provable and valued by the buyer** (Rosser Reeves' original USP definition; Dunford's value plus proof). "Fast delivery, high quality, unlimited revisions" is not a USP; everyone says it. [BG]
- **Distinctiveness** (Byron Sharp, *How Brands Grow*, R7): recognisability through consistent colours, typography, thumbnail layout and naming can matter as much as differentiation in crowded search grids. Keep DESORA's gig thumbnails visually consistent so repeat viewers recognise them. [BG, R7; its application to Fiverr is INFERENCE]
- **Risk reducers as differentiators:** a written plan before execution, a named project lead, a delivery report format, a clear revision policy. These address the buyer's main fear (wasting money on a stranger).

#### 2.3.7 Premium positioning vs price competition
- **Platform direction** (S7, plus BG on buyer economics) favours premium.
- **Consensus in services pricing literature (R2 Enns *Pricing Creativity*, R4 Baker, Jonathan Stark R9) [CONSENSUS, BG]:** compete on value and positioning, not on hourly cost. Price anchors perception, and the cheapest offer attracts the most demanding, least loyal buyers.
- **Fiverr-specific nuance [ANECDOTAL / DISPUTED]:** many sellers report that a new account with no reviews struggles to sell at premium prices, and use a lower-priced entry gig to earn the first reviews. **Verdict:** keep **premium core pricing** and use a **genuinely small, fixed-scope entry gig** (an audit, a set of 3 ad creatives, or a strategy call) as the low-risk door. Discounting the core offer trains the market to expect low prices, while a small entry product does not.
- **Three packages:** Basic is the entry scope, Standard is the target (make it the obvious value), Premium is the anchor with maximum scope. The anchoring and decoy effect is well-documented behavioural economics (Ariely's *Economist* subscription example, R10). [BG]

### 2.4 Trust signals and social proof on Fiverr
Ordered by likely influence. The ranking is my reasoning, not Fiverr data.
1. **Review count, average rating and review recency**, and whether reviews mention outcomes and the buyer's industry. [BG]
2. **Level or Pro badge** (Level 2, Top Rated, Pro). Levels are earned through metrics (Success Score, rating, orders, earnings) [BG]; Pro through vetting.
3. **Portfolio and live portfolio** with real delivered work (S7 plus BG).
4. **Repeat buyers**, which Fiverr surfaces in some views [BG, verify]. Retainers and subscriptions build this.
5. **Response time and availability.** Fast first replies on the buyer's timezone are a real edge from Morocco for EU buyers. [INFERENCE]
6. **Agency page** with real team members, roles and past work (S6, S9). [OFFICIAL]
7. **Top clients and past work experience** on the profile (S7). [OFFICIAL]
8. **Verifiable platform certifications** (Meta, Google). [BG]
9. **Gig video or intro video** showing real faces (founder or team). [BG]
10. **FAQ and requirements quality.** A precise intake form signals professionalism. [BG]

**Review ethics [BG, verify in Community Standards]:** offering incentives for positive reviews, trading reviews, or pressuring buyers is prohibited (review manipulation). A neutral, one-time request for honest feedback after delivery is common practice. Collect testimonials for DESORA's website only from clients the agency acquired directly, or with the buyer's permission and without violating Fiverr's off-platform rules.

### 2.5 Personal brand vs agency brand on Fiverr

**Is an agency-style profile good or bad on Fiverr? [DISPUTED → verdict]**
- *Claim A (older forum consensus, [ANECDOTAL/BG]):* buyers come to Fiverr for individual freelancers. "We are a team of 50 experts" reads as a gig-flipping farm and lowers trust. Some sellers believed it hurt conversion.
- *Claim B ([OFFICIAL] since 2024):* Fiverr built **Agencies**, with team pages, past work, and availability on Fiverr and Fiverr Pro (S6, S9). Fiverr also built **Team Account** (S10), so the platform now actively supports teams.
- **Verdict:** An agency identity is good **if it is real and visible**: named team members with real photos (3–9 on the Agency page), a founder who stays the face and accountable lead, and specialised gigs. It is bad when it is vague ("our 100 experts"), anonymous, or used to hide outsourcing. The strongest format for DESORA is a **founder-led agency**: the founder's face and name at the front, DESORA's brand in the display name and gig visuals, and the team shown on the Agency page. Buyers get a person to trust **and** capacity to rely on.

**Mechanics of Fiverr Agencies [OFFICIAL unless tagged]:**
- The profile becomes a full agency page: team members, services, agency description (S9).
- Minimum 3 team members at onboarding, maximum 9 (S9).
- Team-member details: full name, role and photo, plus a description of experience, skills and expertise (S9).
- Categories: Digital Marketing, Programming & Tech, Graphics & Design, Video & Animation, Business; "more categories will be added over time" (S9).
- Orders, gigs, chats and reviews stay unchanged when switching (S9).
- Only the admin receives reviews, level, success score and statistics; members on agency Team Accounts are not vetted, only the admin is (S9, S10).
- **Eligibility and application criteria** (level requirements, invite-only or open) were not confirmed this session. See §7.

**Mechanics of Team Account [OFFICIAL] (S10, S11):**
- The owner is the admin and has a team admin dashboard. Members have a team dashboard.
- Members can act on client management: orders and message history.
- Invitations go by email and are valid for 7 days. The owner can invite, remove and assign members.
- The invite path cited for Fiverr Pro accounts is Profile picture > Administration > Account Members > Invite Members (S11).

**Fiverr Pro as positioning [BG, verify criteria]:**
- Pro is a vetted tier with a badge, marketed to business buyers. The business-buyer product formerly called Fiverr Business was folded into Fiverr Pro, with admin and member roles for buyer teams (the Help Center has "Creating your Fiverr Pro account", "A Guide to Fiverr Pro", "Account roles and management" and "Team collaboration" articles; titles seen in S11 search results).
- **How to use it:** apply when you can show (a) real brand-name or verifiable client work in one specialism, (b) a professional profile, and (c) solid metrics. Pro supports premium prices and larger B2B orders. Rejection is common. Iterate the portfolio and reapply. [BG]
- **Myths:** "You can buy Pro" (false; Pro is vetting, not a paid badge). Do not confuse it with Seller Plus, a paid seller subscription with tools and perks [BG]. "Pro is only for Western sellers" (no evidence; Pro vetting is based on skill and portfolio [BG]).

### 2.6 Building authority off Fiverr (within the rules)
- **LinkedIn:** the founder posts 2–3 times a week on campaign teardowns and French/MENA market insights. It builds recognition and a direct pipeline. Link to the Fiverr gig from LinkedIn (sending traffic **to** Fiverr is allowed) [BG, verify], and never move Fiverr buyers **off** Fiverr.
- **desora's own site:** case studies, pricing pages and a "Hire us on Fiverr" button for buyers who prefer Fiverr's escrow protection. [BG]
- **Behance, Dribbble, YouTube or Loom teardowns:** show process, which is the proof that AI cannot fake. [BG]
- **Traffic you send to Fiverr** is generally understood to help gig stats (clicks, conversions) [ANECDOTAL/BG]. Some sellers report that external traffic which doesn't convert hurts conversion rate. **Verdict:** send targeted traffic (people already interested), not bulk social traffic. [DISPUTED]
- **Platform certifications and community:** Meta and Google certifications, speaking at Moroccan tech or marketing events, contributing to the Fiverr community forum (for visibility among other sellers and potential white-label partners). [BG]

### 2.7 Rules and compliance for scaling (priority: verify every [BG] item on help.fiverr.com)

| Practice | Status | Evidence | Advice |
|---|---|---|---|
| Several people working in one seller account via **Team Account** | **Allowed** | [OFFICIAL] S10 | Use it; give each person their own login through invitation |
| Converting to an **Agency** profile with 3–9 real members | **Allowed** in listed categories | [OFFICIAL] S9, S6 | Do it once the team is real and stable |
| **Sharing one username and password** with staff | **High risk / likely prohibited** | [BG]: credential sharing breaches account-security terms; logins from multiple devices or locations can trigger security flags. Team Account exists as the sanctioned alternative [INFERENCE] | Don't. Migrate to Team Account |
| **Multiple seller accounts** (one per niche or per person) | **Prohibited** per the widely understood one-account rule | [BG, verify] | One account; multiple gigs; Agency profile |
| **Buying, selling or renting accounts** | **Prohibited** | [BG, verify] | Never buy an "aged Level 2 account"; the risk of a ban is high |
| **Subcontracting** production to freelancers paid outside Fiverr | **Grey / DISPUTED** | No explicit official text read this session. Common practice among agencies; the seller stays responsible for quality and deadlines [ANECDOTAL] | If they touch buyer communication, bring them into Team Account. Use NDAs. Never misrepresent who does the work if the buyer asks. Keep final QA in-house |
| **Reselling other Fiverr sellers' gigs** (arbitrage) | **Grey / risky** | [BG/ANECDOTAL] Quality and IP risk; not a sustainable model | Avoid as a core model; if used, disclose and QA |
| **Misrepresenting location or identity** (VPN, foreign "front" accounts) | **Prohibited** | Misrepresentation is barred (S1 language; [BG] ToS) | Present Morocco honestly as an advantage |
| **Fake team members, stock photos, fabricated credentials** | **Prohibited** | S1 (no photos of another person); S9 (real portraits) | Real people only |
| **Asking Fiverr buyers to pay or communicate off Fiverr** | **Prohibited** | [BG]; covered by the communication-policy cluster | Keep Fiverr buyers on Fiverr |
| **Incentivised reviews** | **Prohibited** | [BG] | Neutral feedback requests only |

**My reasoned verdict on outsourcing [INFERENCE]:** Fiverr sells trust in *the seller*. A hidden network of subcontractors behind a solo persona creates two risks: (1) a quality failure lands on the admin's Success Score (S9/S10 confirm that only the admin gets the metrics), and (2) if a buyer asks who is doing the work, a false answer is misrepresentation. The compliant path is an **openly agency-branded account (Agency profile) plus Team Account access for anyone in the inbox, plus in-house QA of every delivery.**

### 2.8 Scaling operations

#### 2.8.1 Capacity planning
- **Formula [BG, standard operations practice]:** Weekly order capacity = (production hours per person per week × number of producers × utilisation of 65–75%) ÷ average production hours per order. Keep 20–30% of capacity as buffer for revisions, rush orders and sick days.
- **Leading indicators to track weekly:** orders in queue, days until next free slot, % of orders delivered late, revision rate per order, response time, Success Score and rating trend, gross revenue per production hour.
- **Fiverr controls [BG, verify names]:** a per-gig **maximum orders in queue** setting, **availability / out-of-office mode** (which pauses new orders without hurting stats), a longer delivery time on the Premium package, and pausing a gig temporarily.

#### 2.8.2 Pricing up as capacity fills [BG heuristic]
- Triggers: the queue stays above 80% of capacity for 2–3 weeks; conversion stays healthy after a test increase; lead time exceeds the promised delivery times; reviews average 4.9 or higher with outcome language.
- Mechanics: raise the Standard package first by 10–20% and watch conversion for 2–4 weeks. Add value, not only price: a report, a strategy call, extra creatives. Use **custom offers** to charge larger buyers more without changing public prices.
- **Do not raise prices on active retainers without notice.** Grandfather current clients for 1–2 cycles. [BG, good practice]

#### 2.8.3 Multiple-gig portfolio strategy
- **Gig slot limits depend on seller level** [BG; the figures are DISPUTED: commonly reported as about 4–7 active gigs for new sellers, rising with level toward about 30 at Top Rated. Verify.].
- Structure the gigs around **one buyer persona and one lead specialism**. Each gig targets one search intent (one subcategory and one main keyword cluster), and gigs cross-link through "compare packages" and the description ("Start with the Audit gig").
- Retire or rework gigs that get impressions but few clicks (a thumbnail or title problem) or clicks but few orders (a price, proof or package problem), using Fiverr's built-in analytics. [BG]

#### 2.8.4 The gig ladder (entry → core → premium or recurring)
- **Entry (door-opener):** small, fixed scope, fast, low price, high perceived value, and a natural bridge to the core offer. Examples: "Meta Ads account audit with a 10-point action plan (FR/EN)", "3 scroll-stopping ad creatives in French or Arabic".
- **Core (profit engine):** "Full Meta Ads campaign setup: pixel/CAPI check, audiences, 6 ad variations, launch".
- **Premium / recurring:** "Monthly Meta & Google Ads management" through **Fiverr gig subscriptions** or recurring custom offers [BG: Fiverr supports subscription orders on eligible gigs; verify eligibility], or milestone-based custom offers for bigger projects [BG].
- **Bridge moves:** every entry delivery ends with a prioritised recommendation and a custom offer for the core scope, sent through Fiverr.
- **Metric:** % of entry buyers who buy the core offer within 30 days. Aim for 15–30% as an internal target; this is a heuristic, not an external benchmark.

#### 2.8.5 SOPs, delivery systems, templates, project management, QA
- **SOP library (Notion or Google Docs):** one SOP per gig and package: inputs, steps, tools, time budget, QA checklist, delivery message template, common revisions.
- **Intake:** use the gig **requirements** questions (mandatory fields, such as the store URL, ad account access method, budget, target market, language, brand assets) so work can start without back-and-forth. [BG, and the feature exists]
- **Project board:** Trello, ClickUp or Notion, with one card per Fiverr order (order number, due date, owner, status, QA status). Due dates set 24–48 hours before the Fiverr deadline.
- **Templates:** Fiverr **quick responses** (saved replies) [BG] for kickoff, requirements reminder, progress update, delivery, revision acknowledgement and review request; report templates (Looker Studio for ads reporting); creative templates in Canva or Figma.
- **QA:** a second-person review (four-eyes principle) before any delivery. A checklist covers the brief match, language accuracy (native reviewer for FR/AR), brand consistency, file formats, a working link and the report included.
- **Knowledge capture:** every revision request is tagged with its root cause (brief unclear, quality, scope creep), and the SOP is updated monthly.

#### 2.8.6 Hiring freelancers and team members
- Hire for **production roles first** (designer, media-buyer assistant, copywriters by language). Keep **client communication and QA with the founder** until a trained account manager exists. [BG, agency-ops practice]
- Use paid test tasks, NDAs, clear rates per deliverable, and a trial period.
- **Anyone who reads or answers Fiverr messages gets a Team Account seat**, never the owner's password (S10 plus §2.7).
- Pay subcontractors outside Fiverr through normal legal channels (Moroccan invoices, bank transfer, Payoneer or Wise). That is DESORA's own supplier relationship, not a Fiverr transaction. [BG; confirm tax and legal treatment with an accountant]

#### 2.8.7 Diversification (within the rules)
- **Channels [BG; verify current fees]:** Upwork (proposal-based, uses paid Connects, fee structure changed several times in 2023–2025), **Malt** (the leading French freelance marketplace, highly relevant for a Francophone agency), **Comeup** (formerly 5euros.com, a French micro-service marketplace), **Contra** (commission-free for freelancers, portfolio-first), LinkedIn outbound and inbound, and DESORA's own website and SEO.
- **Rule:** never move a buyer who found DESORA on Fiverr to another channel to avoid fees. Diversification means **new** audiences.
- **Target mix at about $10k+/month:** Fiverr ≤ 50–60%, direct ≥ 25%, other platforms ≤ 25%. [BG heuristic]

#### 2.8.8 Burnout avoidance [BG; practical guardrails]
- Set working hours and let the Team Account cover the inbox in shifts. Fiverr's response-rate metric generally measures first replies within 24 hours [BG, verify], so sub-hour replies around the clock are unnecessary.
- Use the queue limit and availability mode instead of saying yes to everything.
- Price for a sustainable workload: if you are always full, you are underpriced.
- Have a documented holiday plan (Ramadan and Eid scheduling for a Moroccan team; announce adjusted delivery times in advance).
- Build a weekly review ritual (30 minutes: metrics, queue, pricing, one SOP improvement).

### 2.9 Case studies of scaled sellers and agencies: what is verifiable
- **No case study was verified in this session** (fetching was blocked).
- **A credibility test to apply [INFERENCE]:** (1) Does a public Fiverr profile exist that you can check? (2) Revenue floor ≈ public review count × typical package price ÷ an assumed review-leave rate (not every buyer reviews; assume 50–80%) over the account's age. (3) Is the storyteller selling a course or coaching? (4) Is there third-party corroboration (press, Fiverr's own features, Fiverr Pro status)? (5) Are the claimed numbers gross or net of Fiverr's 20% seller fee [BG: the 20% seller commission is long-standing; verify]?
- **Fiverr's own "success stories" and blog features** are T1 but promotional (survivorship bias). Use them for what top sellers *do* (specialisation, packages, teams), not for what is typical.

---

## 3. Myths vs reality

| # | Myth | Reality | Evidence / tag |
|---|---|---|---|
| 1 | "You must use a face photo; logos are banned." | A company logo is acceptable "if relevant"; a face usually builds more trust for founder-led sellers. | S1 [OFFICIAL]; trust reasoning [INFERENCE] |
| 2 | "AI-generated profile photos are banned." | Allowed if they meet the criteria and accurately reflect you or your service; misrepresentation is not. | S1 [OFFICIAL] |
| 3 | "Agency-style profiles are against Fiverr's spirit / get penalised." | Fiverr built official Agencies (Jan 2024) and Team Accounts. No evidence of a ranking penalty. Vague "we are 100 experts" copy is a *trust* problem, not a rules problem. | S6, S9, S10 [OFFICIAL]; ranking claim unverified |
| 4 | "My team can just log in with my password." | Team Account is the sanctioned route; members get their own access by invitation. Password sharing risks security flags and breaches account-security norms. | S10 [OFFICIAL]; the password-sharing risk is [BG] |
| 5 | "Team members build their own reputation inside my account." | Only the admin receives reviews, levels, success score and statistics. | S9, S10 [OFFICIAL] |
| 6 | "Switching to an agency profile resets my reviews." | Orders, gigs, chats and reviews remain unchanged. | S9 [OFFICIAL] |
| 7 | "I can change my username later." | The display name is changeable; the username is permanent. | S2, S14 |
| 8 | "Longer profile descriptions rank higher." | The About section is capped at about 600 characters; gig-level signals matter more for search. | S4, S5 [ANECDOTAL]; ranking role [BG] |
| 9 | "Open multiple accounts to target multiple niches." | One account; use multiple gigs and an agency profile. Multiple accounts risk bans. | [BG, verify] |
| 10 | "Fiverr Pro is a paid upgrade." | Pro is vetted by application; Seller Plus is the paid subscription. | [BG, verify] |
| 11 | "Fiverr Learn certificates boost ranking." | No evidence found; they are trust signals at best. Platform certifications (Meta, Google) are more persuasive for marketing buyers. | [BG] |
| 12 | "Generalists get more orders because they cover more searches." | Buyers search by intent; specialist gigs convert and compound relevant reviews. Positioning literature is unanimous about focus. | R1–R5 [CONSENSUS, literature]; Fiverr-specific [INFERENCE] |
| 13 | "Cheapest price wins on Fiverr." | Fiverr is moving up-market (hiring platform, Pro, agencies); spend per buyer is rising. Cheap pricing attracts difficult buyers and caps growth. A small entry *product* beats a discounted core. | S7 [OFFICIAL]; buyer economics [BG] |
| 14 | "Agencies need Fiverr Pro." | Agencies are available "across Fiverr and Fiverr Pro". | S6 [OFFICIAL] |
| 15 | "Say you're in the US or France to win Western buyers." | That is misrepresentation, and it risks the account. Morocco is an asset (FR/AR/EN, EU time zone, nearshore cost). | S1 (misrepresentation language) [OFFICIAL]; [BG] |
| 16 | "'Same time zone as Paris' is always true for Morocco." | Morocco is UTC+0 since 20 Sep 2026 (1–2 h behind Paris). Say "1–2 hours from Paris" or "London time". | [BG, factual] |
| 17 | "$100k/month Fiverr agency stories prove anyone can do it." | Unverified in most cases; apply the revenue-floor test in §2.9. | [INFERENCE] |

---

## 4. Actionable playbooks

### 4.1 Positioning workshop (half a day; founder plus 1–2 leads)
1. **Data pull (before the workshop):** export every completed order: gig, price, buyer country, industry, repeat or not, rating, review text, revision count, hours spent.
2. **Find the "love" cluster:** sort by rating × repeat × revenue per hour. Write down what those buyers have in common (industry, language, platform, budget, company size).
3. **Competitive alternatives:** list 5 real alternatives from the buyer's side, using quotes from inbox messages.
4. **Unique attributes:** list everything DESORA has that the alternatives lack. Cross out anything a buyer wouldn't pay for.
5. **Value themes:** group the attributes into 2–3 value themes, each with proof (a number, a portfolio piece, a review quote).
6. **Best-fit buyer:** define it by observable traits a buyer would recognise in a gig title ("French-speaking Shopify brands spending €2k+/month on ads").
7. **Market frame:** pick the Fiverr subcategory plus niche qualifier where those strengths look obviously best. Search Fiverr for it and check competing gigs (review counts, prices, thumbnails, titles) for white space.
8. **Write the statement** (template in §5.3). Test it: would a best-fit buyer say "that's exactly us"? Would a non-fit buyer self-select out? Both answers should be yes.
9. **Derive assets:** display name, tagline, About, 3 gig titles, thumbnail concept, package names, FAQ answers and the top 5 portfolio pieces.
10. **Sacrifice list:** name the gigs and services you will *stop* promoting. Ries & Trout's Law of Sacrifice.
11. **Review in 90 days:** conversion rate per gig, average order value, % of reviews mentioning the niche.

### 4.2 Profile rewrite template (fill in, then check the character counts in the editor)
- **Photo:** the founder's real, front-facing, well-lit headshot on a plain background (S1).
- **Display name:** "<Founder> · DESORA" or "DESORA Agency" (2–50 characters; check the allowed characters) (S2).
- **Tagline (≤ 70 characters to be safe):** `[Service] for [buyer] | [differentiator]`.
- **About (≤ 600 characters; first 200 standalone):**
  1. `I help [buyer] [achieve outcome] with [service].` (≤ 120 characters)
  2. `DESORA is a [size] team in Morocco ([time-zone advantage]) working in [languages].`
  3. `Proof: [n] projects / [industries] / [metric].`
  4. `How we work: [plan → execution → report], one point of contact, every delivery reviewed before it reaches you.`
  5. `CTA: Message me with [2 specific inputs] or start with [entry gig].`
- **Languages:** only levels you can hold a live call in.
- **Skills:** 8–12 skills tied to the lead specialism and adjacent gigs.
- **Education and certifications:** real degrees; Meta, Google and HubSpot certifications with the year.
- **Portfolio:** 6–12 items with context, action and result; the core offer pinned first.
- **Top clients and work experience:** add them where the 2024 profile features allow (S7), with permission and truthfully.
- **Agency page** (once there are ≥ 3 real members): each member's real portrait, role and 2-line expertise (S9).

### 4.3 Gig ladder design
| Rung | Purpose | Scope rules | Pricing logic | Exit to next rung |
|---|---|---|---|---|
| Entry | Earn trust and reviews; qualify buyers | ≤ 4 production hours; fixed deliverable; 2–3 days | Low but profitable per hour; no "free work" | Every delivery ends with a prioritised roadmap plus a custom offer |
| Core | Main revenue; showcases the specialism | Clear inputs through the requirements form; 3 packages | Standard package = best value; Premium = anchor | Offer monthly continuation on delivery day |
| Premium / recurring | Predictable revenue; high lifetime value (LTV) | Monthly scope, cadence and report | Subscription or recurring custom offer; review price every 6 months | Expand to more channels, languages or markets |

**DESORA example ladder (paid social):** Entry: "Meta Ads audit + 10-point action plan (FR/EN)". Core: "Meta Ads campaign setup & launch for Shopify (FR/AR/EN creatives)". Recurring: "Monthly Meta + Google Ads management with a bilingual report". Side-entry for creative buyers: "Ad creatives in native French or Arabic (3/6/10 variations)".

### 4.4 Scaling roadmap by revenue stage (gross Fiverr revenue per month)
| Stage | Revenue | Focus | Team | Systems | Risks |
|---|---|---|---|---|---|
| 0 | $0–1k | Positioning, 2–4 focused gigs, first 10–20 reviews, fast responses | Founder (plus one part-time producer) | Quick responses, requirements forms, basic SOP per gig | Underpricing; unfocused gigs |
| 1 | $1–3k | Tighten the ladder; first price rise after about 20 strong reviews; portfolio | +1–2 producers (tested, NDA) | Project board, QA checklist, report templates | Founder bottleneck in the inbox |
| 2 | $3–10k | Retainers and subscriptions; Level 2 target; apply to Pro when the portfolio is ready | Team Account seats; 3+ real members → switch to **Agency profile** | SOP library, weekly metrics review, capacity sheet | Quality drift, which hits the admin's Success Score (S9/S10) |
| 3 | $10–30k | Premium tier; custom offers for B2B; start diversifying (site, LinkedIn, Malt) | Account manager, delivery lead, native FR/AR reviewers | Delivery calendar, root-cause revision tagging, onboarding docs | Platform dependency; burnout |
| 4 | $30k+ | Multi-channel agency; Fiverr Pro; case-study marketing | Departments (media, creative, content); ops manager | Formal contracts, legal entity and tax structure (see the legal/tax cluster) | Over-reliance on one algorithm; management overhead |

### 4.5 Delivery SOP skeleton (per order)
1. **Order received (T+0h):** a kickoff quick response confirms the requirements, names the project lead and gives the delivery date. A card is created on the board.
2. **Requirements check (T+2h):** missing info is requested in one consolidated message. The clock-start risk is noted.
3. **Internal brief (T+4h):** the producer receives the brief template (goal, audience, language, brand assets, references, don'ts).
4. **Production:** time-boxed to the SOP budget; the producer logs hours.
5. **Internal QA (the day before the due date):** a second person runs the checklist; a native-language reviewer handles FR/AR copy.
6. **Delivery:** files plus a short Loom walkthrough (a link to a video hosted on a third-party platform may be restricted; check the communication-policy cluster; alternatively attach a video file) plus a 3-bullet "what's next" section.
7. **Revisions:** acknowledged within working hours; classified as in-scope or out-of-scope; out-of-scope work goes into a custom offer.
8. **Close:** a neutral request for honest feedback; a portfolio permission request; a next-rung custom offer.
9. **Post-mortem (weekly, batched):** revision causes → SOP updates.

---

## 5. Templates and examples

### 5.1 Profile "About" descriptions (character counts checked by script; all under 600)
**A. Paid ads, French e-commerce (559 characters):**
> I help French-speaking e-commerce brands turn ad spend into profitable sales with Meta & Google Ads. DESORA is a Morocco-based team (GMT, 1–2 hours behind Paris) of media buyers, designers and copywriters working in French, English and Arabic. Recent work: account audits, full-funnel campaign setup, creative testing and monthly optimisation. Every project starts with a written plan, ends with a report you can forward to your boss, and is managed by one point of contact. Send me your store URL and monthly budget and I'll tell you honestly if we're a fit.

**B. Social media for local businesses, FR/AR (559 characters). Only claim the reply time if it is true:**
> Social media that brings customers through the door. I lead DESORA, a small marketing studio in Morocco creating content calendars, Reels and ad campaigns for restaurants, cafés and clinics in France, Belgium, Canada and the Gulf, in French, Arabic and English. You get a monthly plan, on-brand designs, captions written by native speakers and a results report. Reply times under 2 hours during European business hours. Tell me your city and your goal (more bookings, more walk-ins, more followers) and I'll send a free 3-point quick win before we talk price.

**C. Agency-lead, B2B leads (527 characters). Replace the numbers with real, provable ones:**
> Performance marketer and agency lead. We build and run paid-ads funnels for SaaS and online-course creators who need qualified leads, not vanity metrics. 6+ years, 40+ brands, ad budgets from $1k to $50k/month (replace with your real, verifiable numbers). My team of 5 covers strategy, creative, copy and tracking, so nothing is outsourced to strangers: every order is reviewed by me before delivery. Languages: English, French, Arabic. Start with the Ads Audit gig if you want to test us on a small, fixed-scope project first.

### 5.2 Taglines (all ≤ 70 characters)
- "Meta & Google Ads for French-speaking e-commerce brands | FR/EN/AR" (66)
- "Social media & Reels for restaurants and clinics, in French & Arabic" (68)
- "Paid-ads funnels for SaaS & course creators. Leads, not likes." (62)
- "Bilingual FR/AR marketing team on Paris hours, nearshore prices" (63). **Caution:** "on Paris hours" means working hours aligned with Paris, which is defensible, but not "same time zone".

### 5.3 Positioning statements (internal, Moore/Dunford format)
- *For* French-speaking Shopify brands spending €2k–20k/month on ads *who* are wasting budget on campaigns that were set up once and never optimised, *DESORA's Meta Ads service is a* managed paid-social offer *that* delivers a written plan, native-French creatives and weekly optimisation. *Unlike* cheap one-off setup gigs or Paris agencies with €3k retainers, *we* combine senior media buying, native FR/AR creative and European-hours communication at nearshore prices.
- *For* restaurants and clinics in the Gulf and francophone Europe *who* need consistent social content in Arabic and French, *DESORA is a* bilingual social media studio *that* runs the monthly calendar, design and captions end to end. *Unlike* generalist designers who translate English content, *we* write natively in both languages and report on bookings, not likes.

### 5.4 Agency page description skeleton (for when DESORA converts)
"DESORA is a [n]-person marketing agency in [city], Morocco, specialising in [lead specialism] for [buyer]. Our team: [Name, role, 1-line expertise] × 3–9 (real photos). How we work: [process]. Every order is led by [founder] and reviewed before delivery. Languages: FR/AR/EN. Past work: [3 examples with results]."

### 5.5 Kickoff quick response (saved reply)
"Thanks for your order, [Name]! I'm [Lead], and I'll be your point of contact. I've checked your requirements: [confirmed items]. To start, I just need [missing item]. You'll get [deliverable] by [date, your time zone]. I'll send a short progress update on [date]."

---

## 6. Free tools and resources

Availability and free tiers are [BG] and were not re-checked this session.

| Tool | URL | Purpose | Free tier? |
|---|---|---|---|
| Fiverr Help Center: Agencies, Team Account, Profile, Portfolio, Pro guide | help.fiverr.com/hc/en-us/articles/29454085707409, /31972197528337, /360010558598, /4413134063633, /36982827869457 | Official rules (primary source) | Free |
| Fiverr Analytics (built into the seller dashboard) | fiverr.com (seller dashboard) | Impressions, clicks, orders, conversion per gig | Free |
| Fiverr Learn | learn.fiverr.com | Courses and certificates (some free for sellers) | Partly free [BG] |
| Canva | canva.com | Gig thumbnails, portfolio visuals, brand kit | Free tier |
| Notion | notion.so | SOP library, wiki, project board | Free tier |
| Trello / ClickUp | trello.com / clickup.com | Order board per Fiverr order | Free tiers |
| Loom | loom.com | Delivery walkthroughs, internal training | Free tier (limits) |
| Toggl Track / Clockify | toggl.com / clockify.me | Hours per order, for capacity planning and pricing | Free tiers |
| Google Looker Studio | lookerstudio.google.com | Client ad-performance reports | Free |
| Google Skillshop | skillshop.withgoogle.com | Google Ads certifications (verifiable proof) | Free |
| Meta Blueprint | facebook.com/business/learn | Meta certifications (exams usually paid) | Courses free, exam paid [BG] |
| HubSpot Academy | academy.hubspot.com | Marketing certifications | Free |
| Google Trends | trends.google.com | Niche and market demand checks by country and language | Free |
| Tally / Google Forms | tally.so / forms.google.com | Detailed intake for direct (non-Fiverr) clients | Free |
| Behance / Dribbble | behance.net / dribbble.com | Off-platform portfolio and authority | Free |
| Malt | malt.fr | French freelance marketplace (diversification) | Free to list; commission-based [BG] |
| Comeup | comeup.com | French-language micro-service marketplace | Free to list; commission-based [BG] |
| Contra | contra.com | Portfolio-first, commission-free freelancer platform | Free [BG] |
| Book: *Obviously Awesome* (Dunford) | aprildunford.com | Positioning process (R1) | Paid book; free talks and articles |

---

## 7. Open questions and what could not be verified (priority order)

1. **Fiverr ToS text on account sharing, multiple accounts and account transfer**: the exact current wording in the Terms of Service and Community Standards (fiverr.com/legal-portal). This is the highest priority, because §2.7 relies on it.
2. **Fiverr's official position on subcontracting and outsourcing**: is there an explicit clause? Does the Team Account article say who may do the work?
3. **Fiverr Agencies eligibility**: level, rating or Pro requirements; invite-only vs open application; whether Morocco-based sellers are eligible; fees; whether Agency pages rank differently.
4. **Current character limits** (tagline 150? About 600? gig title 80?). These come only from T4 guides. Confirm them in the live profile editor.
5. **Current level thresholds and gig-slot limits per level** after the 2023–2025 changes.
6. **Fiverr Pro 2025–2026 vetting criteria**, the application process, and whether hourly contracts are Pro-only.
7. **Gig subscriptions and milestones**: current eligibility and minimums.
8. **Review-request policy**: exact wording on what sellers may say when asking for feedback.
9. **Fiverr Go and AI features** (2025): current status, and how it affects commodity gigs in marketing categories.
10. **Buyer economics**: current active buyers and spend per buyer from investors.fiverr.com (latest 2026 quarter).
11. **Credible case studies** of agencies that scaled to $10k–$100k+/month on Fiverr: none verified here.
12. **Whether links to Loom or Google Drive in deliveries and messages are allowed** (communication-policy cluster).
13. **Fiverr Workspace (invoicing/CRM) status**: believed to be discontinued or changed; not verified.
14. **Upwork, Malt and Comeup fee structures in 2026**, for the diversification maths.

**How to close these gaps:** re-run this cluster with WebFetch access to help.fiverr.com, fiverr.com and investors.fiverr.com allowed through the egress policy, and a raised `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`.

---

## 8. Reference works cited from background knowledge (NOT read this session)
- R1: April Dunford, *Obviously Awesome* (2019); *Sales Pitch* (2023).
- R2: Blair Enns, *The Win Without Pitching Manifesto* (2010); *Pricing Creativity* (2018).
- R3: Al Ries and Jack Trout, *Positioning: The Battle for Your Mind* (1981); *The 22 Immutable Laws of Marketing* (1993).
- R4: David C. Baker, *The Business of Expertise* (2017).
- R5: Philip Morgan, *The Positioning Manual for Indie Consultants* (various editions).
- R6: Geoffrey Moore, *Crossing the Chasm* (1991; 3rd edition 2014).
- R7: Byron Sharp, *How Brands Grow* (2010).
- R8: Robert Cialdini, *Influence* (1984; new and expanded edition 2021).
- R9: Jonathan Stark, *Hourly Billing Is Nuts* (2018).
- R10: Dan Ariely, *Predictably Irrational* (2008).
- Also relevant: Al Ramadan, Dave Peterson, Christopher Lochhead and Kevin Maney, *Play Bigger* (2016), on category design.

Snippet sources S1–S14 are listed in 09-sources.tsv.
