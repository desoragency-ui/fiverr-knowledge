# Cluster 04: Creating the perfect Fiverr gig

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.

### Cover image, gallery, video, description, packages, FAQ, requirements, extras, approval

Prepared for DESORA (marketing agency, Morocco) as knowledge for a Fiverr-advisor subagent.
Research date: 2026-09-26. Cluster owner: research agent 04 of 12.

---

## 0. Read this first: how reliable this document is

**Research conditions (honest disclosure).** This session had two hard limits:
1. **The network egress proxy blocked WebFetch** for almost every relevant domain: help.fiverr.com, fiverr.com, blog.fiverr.com, community.fiverr.com, web.archive.org, reddit.com, medium.com, nngroup.com, cxl.com, baymard.com, wikipedia.org, youtube.com, quora.com, linkedin.com, dev.to, and all the Fiverr-tutorial blogs tried. Only `github.com` and `raw.githubusercontent.com` could be fetched.
2. **The shared WebSearch budget (200 calls for all 12 agents together) ran out after this agent's 7th search.** The tool said to stop searching and ask the user to raise `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`. I did not try to get around this limit, for example with third-party scraping connectors.

What I did have to work with:
- **Official Fiverr text** from help.fiverr.com, seen only as search-result snippets (S1–S10).
- **Third-party snippets** on image and video specs, plus Fiverr Community threads about "requires modification" notices (S11–S30).
- **28 pages actually fetched from GitHub** (S40–S67). These are mostly Fiverr tools and Claude Code skills written by sellers in 2026. They are low-to-medium trust. One of them, S48, is useful as evidence: it is the source code of a 2026 Chrome extension that works against the live gig editor, so it shows real field constraints such as `maxlength="80"` on the title and the "5 tags maximum" label.
- **Background knowledge.** This is Fiverr and CRO knowledge from before 2026 that I could **not** re-read this session. Every such claim is tagged so the reader knows to verify it.

**Evidence tags used below**
| Tag | Meaning |
|---|---|
| [OFFICIAL] | Fiverr Help Center wording seen this session (search snippet of help.fiverr.com) |
| [OFFICIAL-UNVERIFIED H/M/L] | A Fiverr rule or spec known from background knowledge that could not be re-read this session. H/M/L = my confidence. **Verify in the live gig editor or Help Center before relying on it.** |
| [CONSENSUS] | 3 or more independent non-official sources seen this session agree |
| [ANECDOTAL] | A single source, a tool author's claim or a field report, not independently confirmed |
| [DISPUTED] | Sources conflict. Both sides are given with a verdict |
| [TRANSFER] | A general CRO, UX or thumbnail research principle (background knowledge) applied to Fiverr by reasoning |
| [REASONED] | My own inference; the logic is stated |
| [DOM-EVIDENCE] | Seen in live-editor selectors inside 2026 extension source code (S48) |

**Golden rule for the advisor agent:** the gig editor is the final source of truth. It shows field limits, dropdown options and upload errors directly. When a spec here is tagged UNVERIFIED, DESORA should confirm it in the editor once. Section 8 gives a 10-minute verification checklist, and the results should update this file.

---

## 1. Executive summary: the 20 most important insights, ranked

1. **Treat the first gallery image (the cover) as the gig's ad.** It is what competes in the search grid. Fiverr's own help text says a strong gallery "increases click-through rates" and tells sellers to "review your Gig card to make sure it looks centered and clear" after uploading [OFFICIAL S1]. Design for legibility at card size and on mobile, not at full 1280 px.
2. **Size: 1280 × 769 px (about 5:3). Minimum 712 × 430.** Seven third-party 2025–2026 guides agree [CONSENSUS S11–S17], and this matches pre-2026 Help Center text [OFFICIAL-UNVERIFIED H]. Keep the important content centered, with roughly 6–8% safe margins [REASONED]. Older sizes (682×459, 550×370) are outdated.
3. **Gallery capacity is 3 images + 1 video + 2 PDFs, and only the first 3 pages of each PDF are displayed** [OFFICIAL S1]. Fill every slot, and make each slot answer a different buyer question: *What do I get? Is it good? How does it work? Who are you?*
4. **Gallery tagging is an official lever that few sellers use.** Tagging each gallery item lets Fiverr show buyers "your most relevant reviews with files", matched to what each buyer is interested in. Fiverr says buyers who see matching reviews-with-files "are more likely to open your Gig and order" [OFFICIAL S1].
5. **Add a video.** Fiverr says plainly: "Gigs with videos perform better" [OFFICIAL S1]. The video is required in Video & Animation and optional elsewhere [OFFICIAL S1]. Limits are 75 seconds or less, 50 MB or less, landscape [snippets S4/S19/S21; OFFICIAL-UNVERIFIED H]. Aim for 45–60 s, with the hook in the first 3 s and burned-in captions. The popular uplift numbers ("+30% impressions", "2x orders", "220%") have **no traceable source** [ANECDOTAL S40–S42].
6. **Zero-tolerance items in any image, video, PDF or text:** contact details (email, phone, WhatsApp, website URL, social handles, QR codes); Fiverr logos, seller-level badges or star ratings; fake credentials; buyer reviews shown with Fiverr branding; third-party copyrighted work; other people's portfolio. These are the most common causes of "Gig requires modification" [S24–S28 community, OFFICIAL-UNVERIFIED H].
7. **The title has a hard limit of 80 characters and starts with "I will".** The live editor field is `maxlength="80"` [DOM-EVIDENCE S48; CONSENSUS S40–S47]. The card shows only the start of the title, so put the core keyword and promise first.
8. **The description has a 1,200-character limit** [CONSENSUS S40–S46; OFFICIAL-UNVERIFIED H]. Every line must earn its place. Use hook → deliverables → proof/differentiators → process → CTA. The editor is rich text (bold, bullets, numbered lists) [DOM-EVIDENCE S48 shows a Quill editor]. A worked DESORA example of 896 characters is in section 5.4.
9. **Three packages that climb in scope, speed and revisions, with Standard as the intended pick.** Premium works as the price anchor and Basic as the entry point [ANECDOTAL S42, S56; TRANSFER: decoy/anchoring]. Name packages by outcome ("Launch", "Growth", "Scale"), not "Basic".
10. **Use finite revisions and define what a revision is.** Avoid "Unlimited" [REASONED, strongly supported by seller experience]. Put the definition in the FAQ and in each package description.
11. **The FAQ is for objection handling first and keywords second.** Take the questions buyers already ask in inbox messages and answer them before they are asked (price fit, access and passwords, ownership, timeline, guarantees) [REASONED; S41 claims FAQs reduce messages, ANECDOTAL].
12. **The requirements questionnaire should collect only what is needed to start.** It is the order's "brief". The order countdown starts when the buyer submits requirements [OFFICIAL-UNVERIFIED H]. Use multiple-choice questions to reduce friction. **Never ask for passwords.** Use partner or role access such as Meta Business Suite partner access [REASONED/ToS-safe].
13. **Honest beats impressive.** Do not put numbers, logos, "Top Rated" text or client counts on visuals unless they are true and yours. S44's AI-image rules are a good standard: never claim unverified credentials; forbid watermarks, logos and unquoted text [ANECDOTAL but aligned with ToS].
14. **AI-generated visuals:** AI can be used as a design tool, but visuals must not misrepresent the work you deliver [OFFICIAL-UNVERIFIED M]. Label concept mockups honestly. **Fiverr Go** (2025) is about sellers' own AI creation models and assistants and is not a licence for AI "portfolio" pieces [OFFICIAL-UNVERIFIED M].
15. **Fiverr has no native A/B test for covers** [OFFICIAL-UNVERIFIED H], and typical impression volumes make CTR tests statistically weak. Detecting a 2%→3% CTR change needs about 3,800 impressions per variant (section 5.11). Test only bold differences, use sequential 14–28-day windows, and pre-screen with a thumbnail-swap preview (S53) and 5-second tests.
16. **Differentiation beats generic "best practice".** Open the real search results for your keyword and make your cover visibly different from the top 20 in color, layout, or face versus mockup. "Dark background + neon accent" is a 2026 trend among AI-automation sellers, not a law [REASONED vs ANECDOTAL S40–S42].
17. **Keep the message consistent** (message match): the cover headline, the title, the first description line and the package names should state one promise [TRANSFER: CRO message-match].
18. **Fill every category attribute (metadata) accurately.** Buyers use them as search filters, so an empty or wrong attribute can hide the gig from filtered searches [OFFICIAL-UNVERIFIED M].
19. **DESORA-specific ToS red flags:** (a) academic work written for students to submit as their own (PFE, mémoire, thesis writing) is prohibited on Fiverr as academic dishonesty, so offer only formatting, editing, design and presentation coaching [OFFICIAL-UNVERIFIED H]; (b) selling followers, likes or engagement, or fake reviews, is prohibited [S24 snippet + OFFICIAL-UNVERIFIED H]; (c) never promise guaranteed rankings, sales or follower counts [REASONED].
20. **Approval workflow:** gigs and some edits go through review, and video review "typically takes a few business days" [snippet S4 cluster]. A "requires modification" notice points to the problem area. Fix only that, remove anything similar elsewhere in the gig, and resubmit [ANECDOTAL S24–S28].

---

## 2. Spec sheet: every number in one place

| Element | Spec | Evidence and confidence |
|---|---|---|
| Gig title | Starts with "I will"; **max 80 characters** | [DOM-EVIDENCE S48 `maxlength="80"`, placeholder "I will"]; [CONSENSUS S40–S47] |
| Search tags | **Up to 5**; letters and numbers only; about 20 characters each | "5 tags maximum" label [DOM-EVIDENCE S48]; 20-character tag limit [ANECDOTAL S46; OFFICIAL-UNVERIFIED M]. S48's regex also matches "positive keywords", so newer editor versions may call this field "Positive keywords" [DOM-EVIDENCE, needs confirmation] |
| Description | **Max 1,200 characters**; minimum about 120 characters | Max: [CONSENSUS S40–S46; OFFICIAL-UNVERIFIED H]. Min: [OFFICIAL-UNVERIFIED M] |
| Packages | Single package, or 3 packages (Basic / Standard / Premium columns) | [OFFICIAL-UNVERIFIED H]; package name field placeholder "Name your package", description "Describe the details…" [DOM-EVIDENCE S48] |
| Package name / description length | About 35 characters / about 100 characters | [OFFICIAL-UNVERIFIED L-M]. S47's "75–90 characters" is its own generator style, not a Fiverr limit |
| FAQ | Optional; question + answer pairs ("Add a Question" / "Add an Answer") | Fields [DOM-EVIDENCE S48]. Count and length caps unknown. Tools default to 5 FAQs (S46, S47, S58), which is a convention, not a rule |
| Requirements | Free-text, multiple-choice and attachment question types; can be marked required | Placeholder "Request necessary details" [DOM-EVIDENCE S48]; question types [OFFICIAL-UNVERIFIED H] |
| Gallery images | **Up to 3** | [OFFICIAL S1] |
| Gallery video | **1** (required in Video & Animation, optional elsewhere) | [OFFICIAL S1] |
| Gallery PDFs | **Up to 2; only the first 3 pages of each are displayed** | [OFFICIAL S1] |
| Image size | **1280 × 769 px recommended; minimum 712 × 430**; maximum 4000 × 2416 | Recommended and minimum: [CONSENSUS S11–S17]. Maximum: [ANECDOTAL, snippet] |
| Image format | JPG/JPEG, PNG (GIF accepted historically) | [CONSENSUS for JPG/PNG]; GIF [OFFICIAL-UNVERIFIED L] |
| Image file size | **[DISPUTED]** Some 2026 guides say 50 MB max; older guidance I recall said about 5–10 MB | Verdict: export under 2 MB anyway (faster loading, no compression surprises) |
| Video length | **75 seconds or less** | Several snippets [S4, S19, S21, S22]; [OFFICIAL-UNVERIFIED H] |
| Video file size | **50 MB or less** | Snippets [S4 area, S19]; [OFFICIAL-UNVERIFIED H] |
| Video orientation and format | Landscape; MP4 is the safe choice (AVI and other formats mentioned in snippets) | [snippet S19; verify] |
| Video approval | Reviewed before going live; "typically takes a few business days" | [snippet, S4 cluster] |
| Delivery time | Set per package in days | [OFFICIAL-UNVERIFIED H]; dropdown range unverified |
| Revisions | Set per package; dropdown includes numbers and "Unlimited" | [OFFICIAL-UNVERIFIED M] |
| Extras | "Extra fast delivery", "Additional revision", category-specific extras, custom extras | [OFFICIAL-UNVERIFIED H] |

**Outdated specs (myths if repeated today):** 682 × 459 and 550 × 370 gig images [OFFICIAL-UNVERIFIED M, historical]; "gig videos must be 30–60 s" [historical]; "Buyer Requests" as the main new-seller channel (replaced by Briefs-style matching around 2022–2023) [OFFICIAL-UNVERIFIED M]. S42 still tells sellers to "send 10 buyer requests daily", which is a sign that some tools repeat outdated advice.

---

## 3. Detailed knowledge by sub-topic

### 3.1 Gig anatomy: what the buyer sees, and where

| Surface | What appears | Implication |
|---|---|---|
| Search/category card (desktop grid, mobile list) | First gallery image (cover); seller avatar, name and level/badges; the start of the title; rating and review count; "From $X" (lowest package price); save/heart icon | The cover, the start of the title and the starting price decide the click. The heart icon and rounded corners sit on the image edges, so keep them clear [OFFICIAL-UNVERIFIED M; REASONED] |
| Card hover/swipe | On desktop, cards can show other gallery images as a carousel [OFFICIAL-UNVERIFIED L-M] | Images 2–3 may be seen **before** the click, so they must also be legible at card size |
| Gig page, top | Title, seller strip, gallery carousel (video usually first when present), package table (sticky on desktop, lower on mobile) | Buyers compare packages before reading the description |
| Gig page, body | "About this gig" description, category attributes/metadata, FAQ, reviews (reviews with files can be surfaced via gallery tags [OFFICIAL S1]), "compare packages" table, seller profile, portfolio projects | FAQ and reviews handle objections; the metadata feeds filters |
| After ordering | Requirements questionnaire | Its quality decides whether the first delivery is right |

[REASONED] Mobile display is the harsher constraint. On a phone the cover may render only about 150–350 px wide depending on layout. Section 5.2 includes a "25% size test": if the headline is unreadable when the 1280 px cover is shrunk to about 320 px wide, it fails.

### 3.2 The cover image (gallery image #1)

**What Fiverr says [OFFICIAL S1]:**
- "Create relevant, original, and visually engaging Gig images that accurately represent your service and capture potential clients' attention."
- "Your Gig gallery is often a client's first impression of your service, so the images, videos, and tags you choose directly affect the traffic and orders you get."
- "Visuals are often the first thing clients notice. A strong gallery increases click-through rates and helps clients understand your service quickly."
- "Use sharp, clear, high-resolution, and eye-catching images… Avoid blurry, pixelated, stretched, or squished images. After uploading your image, review your Gig card to make sure it looks centered and clear."
- Fiverr publishes a **Gig Image Templates** page (fiverr.com/content/rt/gig-images) [S9] and published a blog post titled "Introducing the new Fiverr Gig image guidelines" [S10]. Their contents could not be read. Priority re-verification items.

**Design principles (ranked by expected impact)**

1. **Readable at card size** [TRANSFER: YouTube thumbnail practice, UX legibility; REASONED]
   - Use 3–6 words at most. S45 suggests a 1–3 word ALL-CAPS headline plus a sub-line of 32 characters or fewer; S41 suggests 2–4 word headlines [ANECDOTAL, consistent with each other].
   - Make headline cap-height at least about 8–10% of image height (about 60–90 px on a 769 px canvas). Use heavy sans-serif fonts (e.g., Montserrat ExtraBold, Poppins Bold, Inter Black). Avoid thin scripts.
   - Aim for contrast of 4.5:1 or better between text and background (the WCAG AA threshold for normal text) [TRANSFER]. At thumbnail scale, even large display text behaves like normal-size text.
   - Do not repeat the title word for word. The cover should add the **outcome** or the **proof** that the title cannot carry [REASONED].

2. **Show the outcome, not the activity** [TRANSFER: e-commerce research (Baymard-style) says product imagery is the primary evaluation cue; NN/g-style research says users ignore decorative stock images]
   - A marketing agency sells results and deliverables. Good covers show a phone mockup of a real branded Instagram grid, a real ad creative, a dashboard crop with an honest result, or a before/after of a client's feed.
   - Before/after is powerful but must be **real and yours**, with client permission. A fabricated before/after is a misleading-portfolio risk [REASONED/ToS].

3. **Stand out against the actual search page** [REASONED; TRANSFER: the von Restorff isolation effect]
   - The reliable "color psychology" effect is **contrast with the surroundings**, not a magic color. Fiverr's UI is mostly white with green accents. If the top 20 results for your keyword are all dark navy with neon, a bright off-white cover with one strong color may win, and the reverse also holds.
   - S40–S42 claim "Dark background + bright accent = highest performing thumbnail style" [ANECDOTAL, no data, one author]. Verdict: a valid local observation in AI and automation niches, not a universal rule.

4. **Faces** [DISPUTED magnitude]
   - Claim: "Thumbnails with face = 25–40% higher CTR" (S40, S41, S42, all by the same author with no citation) [ANECDOTAL].
   - Transfer evidence: eye-tracking research consistently finds faces attract early fixations, and viewers follow the face's gaze direction [TRANSFER]. YouTube creator practice favors expressive close-up faces, though creators also report niches where faceless thumbnails win [TRANSFER].
   - Verdict for DESORA: a real person (founder or team lead) builds trust for a service business and differentiates from template covers. Use a real photo, not an AI face. Make the gaze point toward the headline or deliverable. Treat the uplift as a hypothesis to test (section 5.11), not a fact.

5. **Consistent brand system across all gigs** [REASONED]
   - Use the same font family, logo placement and layout grid, with one accent color per service line (S45 uses an 8-color palette cycled per gig so neighboring gigs never share a color).
   - When several DESORA gigs appear on the profile, the set should look like one agency.

6. **Safe zone and crop** [OFFICIAL S1 "centered"; REASONED]
   - Keep text and faces inside the central ~88% of width and ~85% of height. Watch corners, where the heart icon and rounded corners sit.
   - Upload at exactly 1280×769 so Fiverr does not crop or letterbox.

7. **Technical hygiene** [REASONED]
   - Export as sRGB PNG for text-heavy graphics or high-quality JPG for photos, around 0.3–2 MB.
   - Use real vector text rendered at 1× so it stays crisp.
   - No JPEG artifacts around text: re-export or use PNG.

**What is forbidden or high-risk on images (and on video and PDFs)**

| Item | Status | Evidence |
|---|---|---|
| Email, phone, WhatsApp, Telegram, website URL, social handles, QR codes, "DM me on…" | Prohibited: moves communication or payment off Fiverr | Community notices list "portfolio URLs, business emails, or URLs in gig images or descriptions" [S24–S28 snippet]; [OFFICIAL-UNVERIFIED H] |
| Fiverr logo, "Top Rated"/"Level 2"/"Pro"/"Fiverr's Choice" badges, star ratings, "5.0 ★★★★★" | Triggers modification; implies Fiverr endorsement or fakes status | Community notices: "Using Fiverr seller badges, seller levels, or star ratings in gig materials" [S24–S28 snippet] |
| Individual buyer reviews shown as Fiverr screenshots | Risky; a thread asks whether reviews must be removed after a modification notice [S25 title] | Verdict: avoid Fiverr review screenshots. Fiverr itself suggests "PDFs with reviews" [OFFICIAL S1], so text testimonials without Fiverr branding, stars, names or contact details, formatted as your own case-study quotes, are the safer form. Get client permission |
| Copyrighted images, stock without licence, other sellers' work, celebrity images | Prohibited (IP infringement, misrepresentation) | [OFFICIAL-UNVERIFIED H]; S1: images must be "original" and "accurately represent your service" |
| Third-party brand logos (Instagram, Meta, Google, Shopify…) | Grey area: common in practice, but trademark owners can file IP complaints and implied-partnership claims are risky | [REASONED] Use small, descriptive "tool" mentions (S45 suggests 2–4 tool names as text pills); never imply partnership ("Official Meta Partner") unless true |
| Unverifiable numbers ("500+ happy clients", "10x ROI guaranteed") | Misleading; risky for ToS and trust | [REASONED; S44 rule "never claim unverified credentials"] |
| Prices on images ("Only $10!") | Not known to be prohibited, but goes out of date and conflicts with the package table | [REASONED] Avoid; S50 puts a pricing card on image 2, which is workable only if kept in sync |
| Adult, violent or shocking imagery used as clickbait | Prohibited | [OFFICIAL-UNVERIFIED H] |

### 3.3 Gallery images #2 and #3

Recommended jobs for the slots [REASONED; S50 uses: 1 = headline + photo, 2 = pricing/tiers card, 3 = how-it-works flow; S54 uses 3 portfolio projects each showing a different positioning]:
- **Image 2: proof.** A real portfolio piece in context (mockup), or a mini case study with one honest metric and a client-approved quote. No Fiverr stars or branding.
- **Image 3: process or deliverables.** A "what you get" visual (icons plus 4–6 deliverables) or a 3–4 step process. This lowers perceived risk [TRANSFER: risk reduction and clarity drive conversion].
- Alternative for multi-service agencies: three portfolio samples from three industries, to widen relevance.
- **Tag every gallery item** (gallery tagging) with the service, industry and style that the sample represents [OFFICIAL S1]. This matches the item with reviews that have files and with buyer interest.

### 3.4 PDFs (2 max, first 3 pages shown)

- [OFFICIAL S1] "You can upload up to two PDFs to showcase document-based work samples. Only the first three pages of each PDF are displayed." "PDFs with reviews or your resume are good options for written-word content."
- [REASONED] Design the PDF so **pages 1–3 stand on their own**. Page 1 is the cover with the promise; page 2 is 1–2 case studies (problem, what we did, result, visuals); page 3 is process, deliverables and what the buyer needs to provide. Do not put the best material on page 4.
- Good DESORA PDFs: "Social media case studies" and "Sample monthly content calendar + report" (anonymized unless the client allows). Formats: A4 or 16:9 slides, large type, and no contact details anywhere, including footers, metadata and embedded links. S41 and S42 describe editorial-style PDFs with brand headers and footers; make sure such footers do not contain website or email [REASONED].

### 3.5 The gig video

**Official and near-official facts**
- "Add a video showreel to showcase your skills. Gigs with videos perform better." [OFFICIAL S1]
- Required for Video & Animation gigs, optional for others [OFFICIAL S1].
- Limits: up to 75 seconds ("no longer than one minute and 15 seconds"), under 50 MB, landscape, reviewed before publishing ("typically takes a few business days") [snippets from the S4/S19/S21/S22 cluster; OFFICIAL-UNVERIFIED H].
- Fiverr also has a separate **profile intro video** ("Creating your Fiverr intro video", S5). It is a different asset from the gig video, and both can exist.

**Numbers you will see quoted, and their status**
| Claim | Source | Verdict |
|---|---|---|
| "Gig video = +30% impressions" | S40–S42 (one author, no citation) | [ANECDOTAL], do not repeat as fact |
| "Gig video = 2x orders" | S41, S42 | [ANECDOTAL] |
| "Gigs with video are up to 200%/220% more likely to sell" | Circulates in older Fiverr-related marketing; could not be traced this session | [UNVERIFIED]; the official wording seen is only "perform better" |
| "Keep it 40–50 s; buyers rarely watch past a minute" | S21 (2026 tutorial snippet) | [ANECDOTAL] but consistent with general video-retention research [TRANSFER]; S50 uses 38 s videos, S42 suggests 60–90 s. Verdict: **45–60 s**, never above 75 s (the hard limit) |

**Content rules (treat as hard)** [OFFICIAL-UNVERIFIED H unless marked]
- No contact details or links, spoken or on screen.
- No Fiverr logo or badges [same logic as images; S24–S28].
- Only licensed music. Royalty-free or procedurally generated audio is safe; S50 generates its own ambient WAV [ANECDOTAL example].
- Original footage of your own work. Stock clips should only support the story, not pretend to be your work [REASONED].
- Must be relevant to the specific gig. A generic agency reel on every gig is weaker [REASONED].
- Captions: many buyers watch muted, especially on mobile, so burn in subtitles [TRANSFER: social video practice].
- A structure that works (S50's 7 scenes: hook, solution, how it works, what I build, results, pricing, CTA) is detailed in section 5.3. S50 also puts a "CTA with Fiverr link" at the end. Do not show any URL on screen, not even a fiverr.com link, to avoid review friction [REASONED].

### 3.6 Portfolio projects feature

- Fiverr has a **Portfolio** on the seller profile ("Using your Fiverr Portfolio", S7) and a "live portfolio" of delivered work (S20 title: "Share Your Best Work in Your Gallery or Portfolio"). Delivered-work items can depend on buyer permission [OFFICIAL-UNVERIFIED M].
- [REASONED] For an agency, portfolio projects are where fuller case studies live (several images, a description of the challenge and result). Link each project to the matching gig. Keep the same honesty and no-contact rules.
- [OFFICIAL S1] Gallery tags plus reviews-with-files means that delivering visual files through Fiverr orders (instead of external links only) builds more matchable proof over time [REASONED]. **Practical:** attach at least a preview image or PDF to every delivery.

### 3.7 Description copywriting (1,200 characters)

**Constraints**
- 1,200 characters maximum, including spaces, bullets and line breaks [CONSENSUS; OFFICIAL-UNVERIFIED H].
- Rich-text editor with bold, italic, bullet and numbered lists [DOM-EVIDENCE S48, Quill editor]. Emoji are allowed but use them sparingly; S45 forbids emoji in titles, not descriptions.
- On the gig page the description sits below the gallery and packages. On mobile it may be collapsed behind "read more" [OFFICIAL-UNVERIFIED L], so **the first 1–2 lines carry the load**.

**Structure (converging recommendations)**
- S45: hook → deliverables → differentiation → package note → soft CTA; primary keyword in the first paragraph; scannable; no fabricated statistics, no "industry-leading", no false guarantees [ANECDOTAL but sound].
- S46: hook, body, why me, deliverables, process, FAQs, requirements, CTA.
- S47/S48: question hook (≤110 characters), intro, 8 "what I can build" bullets, 6 "why" bullets, CTA (60–80 characters).
- [CONSENSUS] across S45–S48: open with a buyer-problem hook, then a scannable deliverables list, then why us, then a CTA.

**Copy formulas that fit 1,200 characters** [TRANSFER: standard direct-response formulas]
- **PAS (Problem–Agitate–Solve):** best for pain-driven services (e.g., "posting but no leads").
- **AIDA (Attention–Interest–Desire–Action):** best when the buyer already knows the category.
- **BAB (Before–After–Bridge):** best for visual transformation services (branding, feed redesign).
- **Features → benefits:** turn each deliverable into an outcome ("30 designed posts" → "a month of on-brand content you don't have to think about"). Keep one concrete noun per bullet so the scope is clear.

**Keywords** [REASONED, cross-ref cluster on gig SEO]
- Put the primary keyword naturally in the first sentence or two and 1–2 secondary phrases in bullets or the FAQ.
- Do not stuff keywords. It reads as spam to buyers and Fiverr may treat it as low quality.

**CTAs: allowed vs not**
- Allowed and effective: "Message me before ordering so I can recommend the right package"; "Choose Standard for the full strategy"; "Order now and fill in the brief, and we start within 24h." These keep communication on Fiverr [REASONED; consistent with ToS].
- Not allowed: any external channel ("add me on WhatsApp", "visit my website", "email me"), payment outside Fiverr, or instructions to leave a review in exchange for something [OFFICIAL-UNVERIFIED H].

**Cross-selling inside descriptions:** S41 and S42 recommend mentioning 2–3 related gigs in every description [ANECDOTAL]. This is fine if it points to your own Fiverr gigs by name ("see my Meta Ads gig"). Pasting raw URLs may trip link filters, so reference by name [REASONED].

### 3.8 Packages: names, descriptions, deliverables, pricing ladder

**Mechanics** [OFFICIAL-UNVERIFIED H]
- Each package has a name, a short description, a delivery time, a revision count, category-specific deliverable rows (checkboxes or counts, e.g., "number of posts", "source file"), and a price.
- A single-package mode also exists.

**Principles**
- Package columns climb in **scope, speed and revisions** at the same time. S45 gives delivery examples of 3 → 6 → 10 days, more revisions per tier, and 3–6 specific, verifiable deliverables per tier [ANECDOTAL].
- **Standard is the product; Basic and Premium frame it** [ANECDOTAL S42 "Standard = where money is made"; S56 "Standard is usually the one most buyers pick"; TRANSFER: decoy/compromise effect]. Make Standard the obviously best value: about 2–3× Basic's price for about 4× its value.
- **Basic should be a real, small, complete outcome,** not a crippled teaser. A bait Basic leads to disappointed buyers and bad reviews [REASONED].
- **Name packages by outcome:** "Starter Feed", "Growth Engine", "Full Management". S48 uses the naming rule "creative tier names, not Basic/Standard/Premium".
- **Package description formula:** "[Outcome] + [key quantities] + [who it is for]", kept short. S48 uses "This [Name] package includes…" at 75–90 characters. Better: lead with the outcome ("1 month of scroll-stopping posts: 12 designs + captions for small brands").
- **Pricing:** S43 uses competitor percentiles (Basic ≈ p25, Standard ≈ median, Premium ≈ p75), shifted lower for new sellers [ANECDOTAL method but data-driven]. This belongs to the pricing cluster, but it is a sensible default.
- S41's ranges ($47–$197 / $197–$597 / $497–$997+) are for AI-automation gigs and **should not be copied** into other niches [ANECDOTAL].
- **"From $X"** on the card is the Basic price [OFFICIAL-UNVERIFIED H]. A very low Basic raises clicks but may attract low-fit buyers. Decide on purpose [REASONED].

### 3.9 Delivery times and revisions

- **Delivery:** set times you can beat. Early delivery delights buyers, while late delivery hurts on-time metrics and can lead to cancellations [OFFICIAL-UNVERIFIED H for the existence of on-time metrics; see the metrics cluster]. Add a buffer for requirement back-and-forth. Use the "Extra fast delivery" extra to charge for speed instead of promising it by default.
- **Revisions:** give finite numbers (e.g., 1 / 2 / 3). Define a revision in the FAQ and the package description: "changes to the delivered concept within the original brief; new ideas or new briefs are a new order". Avoid "Unlimited", which invites scope creep and endless loops [REASONED; widely reported by sellers].
- **Consistency with requirements:** state in the description and FAQ that the delivery countdown starts once requirements are submitted [OFFICIAL-UNVERIFIED H].

### 3.10 Gig extras (add-ons)

- **Standard extras** [OFFICIAL-UNVERIFIED H]: Extra fast delivery (per package), Additional revision, plus category-specific extras (e.g., source files, commercial use, additional items) and custom extras (your own title, price and added days).
- **Design rules** [REASONED]:
  1. Extras should be natural "yes, and…" upgrades: more posts, an extra platform, a copywriting pack, a Reels editing add-on, a competitor analysis, a rush.
  2. Price extras so that the Standard package plus 1–2 extras still costs less than Premium. This keeps Premium as the anchor.
  3. Do not hide essential parts of the service in extras. If most buyers need the item, it belongs in the package.
  4. Keep 4–7 extras. Too many creates choice overload [TRANSFER: choice-overload research].

### 3.11 FAQ strategy

- **Purpose, in order:** (1) remove the 5–10 objections that stop orders; (2) set expectations (scope, revisions, access, timeline); (3) naturally include secondary keywords [REASONED]. Several tools default to 5 FAQs (S46, S47, S58). That is a convention; use as many as are genuinely useful.
- **Answer style:** first person, specific (tools, day counts, file types, numbers you can back up), 1–3 sentences. S48 writes answers of 180–240 characters that are confident, personal and specific, which is a good target length [ANECDOTAL].
- **Where FAQ ideas come from:** your inbox (questions asked before orders), competitor reviews (what buyers praise or complain about), and cancellations or disputes (which expectation was missing).
- A full bank for DESORA is in section 5.5.

### 3.12 Requirements questionnaire

- **Mechanics** [OFFICIAL-UNVERIFIED H]: questions can be free text, multiple choice (single or multiple answers) or file attachment, and each can be required or optional. Buyers answer after ordering, and the delivery clock starts on submission.
- **Principles** [REASONED]:
  - Ask only what you need to **start**. Everything else can come in the first message.
  - Use multiple choice wherever possible, because buyers answer those faster and more accurately.
  - Put one "anything else?" free-text field last.
  - Required fields: business basics, goal, assets. Optional: inspiration and competitors.
  - **Never ask for passwords or payment information.** For social media management, ask for partner access (Meta Business Suite), a collaborator or role invitation, or a shared asset folder. This avoids account-security problems and ToS issues.
  - S48 limits questions to 380 characters and writes 3 questions (specs, preferences, timeline). That is a minimum; marketing services usually need 6–10.
- The template is in section 5.6.

### 3.13 Gig approval, denial and "requires modification"

**Statuses** [OFFICIAL-UNVERIFIED H]: Draft, Pending approval, Active, Requires modification, Denied, Paused.

**Most common reasons, compiled from community threads [S24–S30] plus background knowledge [OFFICIAL-UNVERIFIED H]:**
1. **Prohibited service.** Examples: fake reviews; buying or selling followers, likes or views (S24 cites YouTube's policy against selling subscribers or watch time); academic dishonesty (writing assignments or theses for submission); adult content; hacking; and similar.
2. **Contact details or off-platform links** in images, video, PDFs, description, FAQ or package text [S24–S28].
3. **Fiverr branding misuse:** seller level badges, star ratings, Fiverr logo [S24–S28].
4. **Displaying buyer reviews** in gig materials in ways Fiverr objects to [S25].
5. **Title problems:** non-compliant wording, prices or superlatives in the title, a title that doesn't match the category [S29 title "your title may need a little help to comply with our terms"].
6. **Wrong category or subcategory**, or metadata that doesn't match the service.
7. **Duplicate gigs** (the same service repeated with minor changes) [OFFICIAL-UNVERIFIED H].
8. **Low-quality or irrelevant images** (blurry, stretched, generic stock, unrelated) [OFFICIAL S1 quality text].
9. **Physical goods or shipping** handled incorrectly (S26: required to use a single flat-rate shipping fee instead of an add-on). Not relevant to DESORA.

**Fix protocol** [REASONED from S24–S28]:
1. Read the notice. It usually names the area.
2. Audit **all** gig assets for the same issue. Images, PDFs and video are often forgotten, and so are PDF footers and EXIF or metadata.
3. Fix it and resubmit.
4. If the reason is unclear, ask Customer Support **before** making blind changes.
5. Do not argue, and do not create a new duplicate gig to get around a denial.

### 3.14 What top sellers' gigs have in common (observed patterns, not verifiable this session)

These could not be re-observed live this session. Treat them as hypotheses [ANECDOTAL/REASONED] and confirm them with the SERP audit protocol in section 5.12.
- The cover shows the **deliverable itself** (mockup or sample) or a **clear human face plus a 2–4 word promise**, rarely paragraphs of text.
- All 3 image slots are used, often a video too, and profile covers share one visual system.
- There are 3 packages with visible differences and a clearly positioned middle tier.
- The description is short and scannable, with bullets and bold labels.
- The FAQ covers access, revisions, timeline, custom offers and "what do you need from me".
- The requirements are structured, with multiple-choice options and file uploads.
- Delivery times are realistic rather than the shortest in the niche, and extra fast delivery is sold as an extra.
- Titles are keyword-first and plain rather than clever (see the SEO cluster).

### 3.15 Mobile vs desktop

[REASONED + OFFICIAL-UNVERIFIED M]
- The mobile share of Fiverr browsing is significant. Fiverr has pushed its apps heavily; no exact figure was verified.
- Mobile cards render small, and the description may be collapsed.
- Packages on mobile are shown one at a time (tabs), so the **package names and first description line** must stand alone.
- Video autoplay and sound behavior differs by device, hence captions.
- Checklist item: preview the gig on a phone before publishing and after every visual change.

### 3.16 Fiverr Go and the AI-generated visuals policy

- **Fiverr Go** (announced February 2025) [OFFICIAL-UNVERIFIED M]: a set of AI tools on Fiverr. It includes sellers training **personal AI creation models** on their own work (so buyers can generate instant outputs in the seller's style), a personal AI assistant for sellers, and AI-assisted matching. Sellers must own the rights to what they train on.
  - Implication for DESORA: this is an optional product line, not a gig-image rule. A future opportunity would be a DESORA-style social-post template model.
- **AI in gig visuals** [OFFICIAL-UNVERIFIED M; REASONED]:
  - Fiverr's core rule is that images must be original and "accurately represent your service" [OFFICIAL S1].
  - An AI-generated cover background or illustration is a design choice.
  - An AI-generated "portfolio sample" of work you did not do, or a fake client result, is misrepresentation.
  - AI faces that are not you are deceptive when shown as the seller.
  - AI text rendering errors (misspelled headline) look low quality. S44 requires quoting the exact headline and saying "spelled exactly as written", and forbids watermarks, logos and unverified claims [ANECDOTAL but good practice].
  - If AI is part of your delivery process, disclose it where buyers would care. Fiverr has published guidance on AI-assisted services, but the current text was not verified this session.

### 3.17 A/B testing covers (and other gig elements)

- **No native split testing** [OFFICIAL-UNVERIFIED H]. Tests must be **sequential**: version A for a period, then version B, compared using the gig's analytics (impressions, clicks, CTR, orders, conversion rate).
- **Statistical reality** [REASONED, calculated in section 5.11]: detecting a lift from 2% to 3% CTR (+50%) needs about 3,800 impressions per variant at 80% power. A +25% lift needs about 13,800. Most new gigs get far fewer, so small tweaks are unmeasurable. Test **big, different concepts**: face vs mockup, light vs dark, number vs no number.
- **Confounders:** seasonality, ranking changes after reviews, price changes, and competitor moves. Change **one** element at a time and keep the title, price and tags frozen during a test.
- **Downstream metric:** YouTube's native "Test & Compare" (2024) picks winners by watch-time share rather than raw CTR [TRANSFER]. The lesson carries over: judge a cover by **orders per impression**, not clicks alone, because a clickbait cover that raises CTR but lowers conversion is a net loss.
- **Pre-launch screening (cheap and fast):**
  - (1) The Gig Image Swap Chrome extension (S53) previews your cover inside real Fiverr search results, locally.
  - (2) A 5-second test with 5–10 target-type people: "What does this seller offer? Would you click?"
  - (3) A squint/blur test at 25% size.
- **Editing risk:** visual changes may send the gig through review again. Sellers debate whether frequent edits hurt ranking [DISPUTED/ANECDOTAL]. Verdict: avoid churn. Run no more than one test at a time, with windows of at least 14 days.

---

## 4. Myths vs reality

| # | Myth / claim | Reality | Tag |
|---|---|---|---|
| 1 | "Gig image must be 682×459 (or 550×370)" | Outdated. Use 1280×769 (minimum 712×430) | [CONSENSUS S11–S17]; old sizes [OFFICIAL-UNVERIFIED M] |
| 2 | "Any size works; Fiverr fixes it" | Other ratios get cropped or letterboxed, which cuts off text. Upload at exactly 5:3 | [REASONED; OFFICIAL S1 "check it looks centered"] |
| 3 | "Max image file size is 50 MB, so upload huge files" | [DISPUTED] limit value. Irrelevant in practice: under 2 MB loads faster and looks the same | [REASONED] |
| 4 | "Gig video gives +30% impressions / 2× orders / 220% more sales" | No traceable source. Official wording is only "Gigs with videos perform better" | [OFFICIAL S1] vs [ANECDOTAL S40–S42] |
| 5 | "Longer video = more trust; use all 75 s" | Hard cap is 75 s; attention drops fast. 45–60 s with the hook in 3 s | [ANECDOTAL S21; TRANSFER] |
| 6 | "Face in thumbnail = +25–40% CTR" | Plausible direction (faces attract attention), but the number is unsourced (single author) | [ANECDOTAL S40–S42; TRANSFER] |
| 7 | "Dark background + neon accent is the best style" | Contrast with neighbors is what matters; this depends on the niche | [REASONED] |
| 8 | "Red/orange buttons/colors convert best" | Color-psychology claims are weak and context-bound; isolation/contrast is the robust effect | [TRANSFER] |
| 9 | "Put your Fiverr level/5-star rating on the cover as social proof" | Triggers "requires modification"; Fiverr already displays level and rating on the card | [S24–S28] |
| 10 | "A small website URL in the corner is fine" | Prohibited contact info or off-platform link | [S24–S28; OFFICIAL-UNVERIFIED H] |
| 11 | "More text on the cover = more info = more clicks" | Unreadable at card size; 3–6 words win | [REASONED; ANECDOTAL S41/S45] |
| 12 | "Stuff keywords into the description to rank" | Hurts readability and conversion; title, tags and metadata carry most relevance signals (SEO cluster) | [REASONED] |
| 13 | "Unlimited revisions attract more buyers" | Invites scope creep and endless loops; define finite revisions clearly | [REASONED] |
| 14 | "You need exactly 5 FAQs" | Tool convention (S46–S48, S58), not a rule | [ANECDOTAL] |
| 15 | "Cheapest Basic package wins" | Raises clicks, may lower buyer quality and margins; decide deliberately | [REASONED] |
| 16 | "AI-generated covers are banned" | Not as such (unverified); misleading AI portfolio/fake results/fake faces are the problem | [OFFICIAL-UNVERIFIED M] |
| 17 | "Editing your gig resets its ranking" | [DISPUTED]; no official evidence seen. Avoid unnecessary churn; batch changes; test one element at a time | [ANECDOTAL] |
| 18 | "Send 10 Buyer Requests daily to get first orders" | Outdated framing; Buyer Requests were replaced by Briefs-style matching (2022–23) | [OFFICIAL-UNVERIFIED M]; S42 still repeats it |
| 19 | "Fiverr boosts every new gig for 2 weeks" | Folk belief, unverified; belongs to the ranking cluster | [ANECDOTAL S41/S42] |
| 20 | "A/B test your thumbnail for 3 days and pick the winner" | Statistically meaningless at typical volumes; needs thousands of impressions per arm | [REASONED, section 5.11] |

---

## 5. Actionable playbooks

### 5.1 Cover-image design brief (template)

```
GIG: ______________________   PRIMARY KEYWORD: ______________________
TARGET BUYER: (who, industry, sophistication) ______________________
ONE PROMISE (max 6 words, outcome-based): ______________________
SUB-LINE (max 32 chars, optional): ______________________
VISUAL PROOF (pick one): [ ] real deliverable mockup  [ ] before/after (real, permitted)
                         [ ] founder/team photo + deliverable  [ ] process diagram (only if abstract service)
COMPETITOR SERP SCAN (top 20 for keyword): dominant colors ______ ; faces? __/20 ; mockups? __/20
DIFFERENTIATION DECISION: we will look different by ______________________
BRAND SYSTEM: font ______ ; accent color (this gig) ______ ; logo position ______
CANVAS: 1280×769 px, sRGB, safe zone = central 88% × 85%, keep top-right corner clear
TEXT SIZE: headline cap-height ≥ 65 px; contrast ≥ 4.5:1
FORBIDDEN CHECK: no contact info/URL/QR, no Fiverr logo/badges/stars, no unlicensed assets,
                 no unverifiable numbers, no third-party "partner" implication
DELIVERABLES: PNG ≤ 2 MB + source file; 2 alternative concepts for sequential test
```

### 5.2 Cover-image audit scorecard (100 points + compliance gate)

**Gate: any "No" means fail.** Contact info absent · Fiverr branding absent · assets licensed or owned · claims true and provable · represents a service actually delivered.

| # | Criterion | Test | Points |
|---|---|---|---|
| 1 | Legible at card size | Shrink to 320 px wide: headline readable in under 1 s | 15 |
| 2 | One clear message | Someone unfamiliar can state the offer after a 5-second look | 15 |
| 3 | Shows outcome/real work | Deliverable, mockup or real result is visible | 15 |
| 4 | Stands out in the real SERP | Placed among the top 20 (S53 extension or screenshot), eye finds it first or second | 15 |
| 5 | Relevance/message match | Same promise as the title and first description line | 10 |
| 6 | Contrast | Text/background ≥ 4.5:1; subject separated from background | 10 |
| 7 | Composition and safe zone | Centered, uncluttered, nothing critical in corners | 8 |
| 8 | Trust cue (legit) | Real face/team, own brand, real permitted proof | 7 |
| 9 | Technical quality | 1280×769, sharp, no artifacts, under 2 MB | 5 |
**Score bands:** 85+ ship · 70–84 fix the lowest two criteria · under 70 redesign.

### 5.3 Gig video script structure (45–60 s, ≤ 75 s hard cap, ≤ 50 MB, landscape 1920×1080)

| Time | Beat | What's on screen | Script example (DESORA social media gig) |
|---|---|---|---|
| 0–3 s | Hook (outcome or pain) | Face to camera or the strongest result visual; big caption | "Posting every day but getting zero leads?" |
| 3–10 s | Problem → promise | Quick cuts of messy vs strategic feeds | "Random posts burn time. We turn your Instagram into a lead channel." |
| 10–25 s | What you get | Screen recordings of a calendar, designs, captions, report | "A monthly strategy, branded designs, captions and scheduling, done for you." |
| 25–40 s | Proof | 2–3 real portfolio pieces; client-approved quote as text (no Fiverr stars/logos) | "Here's what we built for a local café and a fitness studio…" |
| 40–52 s | Process + packages | 4-step animation; package names (not prices, which change) | "Brief, strategy, approval, design and report. Pick Growth for the full system." |
| 52–60 s | CTA (on-platform) | Face + caption | "Message me your goal and I'll recommend the right plan. See you inside." |

Production rules: burned-in captions; licensed/royalty-free music at low volume; real footage of your work; no contact details or URLs spoken or shown; no Fiverr logo; export H.264 MP4, 1080p, about 8–12 Mbps (keeps a 60 s video around 60–90 MB, **so lower to about 5–6 Mbps to stay under 50 MB**) [REASONED arithmetic: 60 s × 6 Mbps ≈ 45 MB].

### 5.4 Description template (≤ 1,200 characters)

```
[HOOK — 1 line, buyer pain or desired outcome, contains primary keyword]
[BRIDGE — 1–2 lines: who we are + what we do + for whom]

What you get:
• [Deliverable 1 as outcome]
• [Deliverable 2]
• [Deliverable 3]
• [Deliverable 4]
• [Deliverable 5]

Why [BRAND]:
• [Differentiator 1: process/strategy]
• [Differentiator 2: language/market/speciality]
• [Differentiator 3: reliability — replies, on-time]

How it works:
1. [Brief] 2. [Plan] 3. [Approve] 4. [Deliver + report]

[CTA — on-platform: message before ordering / choose recommended package]
```

**Worked example (896 characters, re-measured 2026-09-26):**
```
Posting every day but still no leads? Random content burns time and budget without bringing customers.

At DESORA, a full-service marketing agency, we plan, design and manage Instagram & Facebook content built to generate inquiries, not just likes.

What you get:
• Monthly content strategy + calendar
• Branded post, carousel & story designs (editable source files)
• Captions with researched hashtags
• Scheduling via Meta Business Suite (no passwords needed)
• Monthly performance report with next steps

Why DESORA:
• Strategy first: every post has a job
• English & French content (Arabic on request)
• Clear process, fast replies, on-time delivery

How it works:
1. You answer a short brief
2. We send your strategy + calendar
3. You approve
4. We design, schedule and report

Not sure which package fits? Message me your business and goal before ordering and I'll recommend the right plan.
```
Remaining ~304 characters: add one line of **true** proof (e.g., "Trusted by X businesses in Y", **only if verifiable**) or a niche line ("Ideal for restaurants, clinics and e-commerce").

### 5.5 FAQ bank (marketing agency; adapt; keep answers 1–3 sentences)

1. **What do you need from me to start?** A short brief (business, goal, audience), your logo and brand colors, and partner access to your pages. The requirements form takes about 5 minutes.
2. **Do you need my passwords?** No. We only request partner or role access through Meta Business Suite (or the platform's equivalent), so you keep full control.
3. **Can you guarantee followers, sales or rankings?** No honest agency can guarantee results that depend on the market. We guarantee the agreed deliverables, on time, built on a clear strategy.
4. **Do you buy followers or use bots/engagement groups?** Never. Growth is organic and compliant with platform rules.
5. **Which package should I choose?** Most businesses start with [Standard], which includes the full strategy. Message me your goal and I'll recommend one.
6. **What counts as a revision?** Changes to delivered designs or captions within the original brief. New concepts or a new brief are a new order or extra.
7. **When does delivery start?** As soon as you submit the requirements form.
8. **Who owns the designs?** You do, once the order is complete, including editable source files where listed in the package.
9. **Which languages do you work in?** English and French; Arabic on request.
10. **Do you run paid ads too?** Yes, see our [Meta Ads] gig. Ad spend is paid by you directly to the platform and is not included.
11. **Can I get a custom plan?** Yes. Message me your needs and I'll send a custom offer.
12. **Do you work with my industry?** We've worked with [real industries only]. If yours is new to us, we'll do extra competitor research in the strategy phase.
13. **Will I see results in the first month?** Month 1 builds a consistent, strategic presence. Reliable lead flow usually needs 2–3 months of consistent posting and optimization.
14. **Do you provide reports?** Yes, a monthly report with reach, engagement and inquiries, plus next steps.
15. **Can I upgrade later?** Yes, via a custom offer or the next package at renewal.
16. **What time zone are you in?** Morocco (GMT/UTC+0, the same clock as London). We reply quickly during European business hours and the US morning.

Compliance note: FAQ answers must also avoid contact details, off-platform instructions and guarantees.

### 5.6 Requirements questionnaire template (social media management)

| # | Question | Type | Required |
|---|---|---|---|
| 1 | Business name, what you sell, and links to your current public social profiles | Free text | Yes |
| 2 | Main goal for the next 90 days | Multiple choice: leads/inquiries · sales · awareness · community · launch | Yes |
| 3 | Who is your ideal customer? (age, location, problem you solve) | Free text | Yes |
| 4 | Upload logo, brand colors/fonts, product photos (or tell us if you need them created) | Attachment | Yes |
| 5 | Tone of voice | Multiple choice: professional · friendly · luxury · playful · educational | Yes |
| 6 | Content language(s) | Multiple choice: English · French · Arabic · other | Yes |
| 7 | Offers, promotions or dates we must include this month | Free text | No |
| 8 | 2–3 competitors or accounts you like (and why) | Free text | No |
| 9 | Confirm you will grant partner access via Meta Business Suite (we'll send instructions) | Multiple choice: Yes · Need help | Yes |
| 10 | Anything else we should know? | Free text | No |

Rules: never ask for passwords or payment info; keep it to about 10 questions; order from easy to detailed; mirror the FAQ wording.

### 5.7 Package design template (example: Instagram & Facebook management)

| | **Starter Feed** (Basic) | **Growth Engine** (Standard — the target) | **Full Management** (Premium — anchor) |
|---|---|---|---|
| Description (≤ ~100 chars) | 8 branded posts + captions for a small brand starting out | 16 posts & stories + strategy + scheduling for steady growth | 24 posts, reels covers, stories, community replies & report |
| Posts / month | 8 | 16 | 24 |
| Strategy + calendar | — | ✓ | ✓ |
| Scheduling | — | ✓ | ✓ |
| Community management | — | — | ✓ |
| Monthly report | — | ✓ | ✓ (with call-to-action plan) |
| Revisions | 1 | 2 | 3 |
| Delivery | 5 days | 7 days | 10 days |
| Price logic | ~p25 of niche | ~median, best value per item | ~p75+, anchors Standard |

Rules: every column is complete in itself; the price-per-deliverable is cheapest in Standard; the delivery days are ones you can beat [ANECDOTAL S43/S45 method + REASONED].

### 5.8 Gig extras menu (template)

- Extra fast delivery (per package, e.g., −2 days).
- Additional revision.
- +4 posts.
- Reels/short-video editing (per video).
- Additional platform (LinkedIn/TikTok).
- Competitor & hashtag research report.
- Copywriting in a second language.

Keep 4–7. Standard + 2 extras should cost less than Premium.

### 5.9 Complete gig-creation checklist

**A. Pre-build (strategy)**
- [ ] Service is allowed on Fiverr (no academic ghost-writing, no fake engagement or reviews, no guaranteed rankings).
- [ ] One gig = one clear service. Not a duplicate of another DESORA gig.
- [ ] SERP audit done (section 5.12) for primary keyword; differentiation decided.
- [ ] Price ladder drafted from competitor range (pricing cluster).

**B. Overview**
- [ ] Title "I will…" ≤ 80 characters, keyword first, no superlatives, prices or emoji.
- [ ] Correct category/subcategory; **all metadata attributes filled** truthfully.
- [ ] 5 tags used, letters and numbers only.

**C. Pricing**
- [ ] 3 packages named by outcome, descriptions stand alone on mobile.
- [ ] Scope, days and revisions climb together; Standard is the best value.
- [ ] Finite revisions; realistic delivery with buffer.
- [ ] 4–7 extras, including Extra fast delivery.

**D. Description & FAQ**
- [ ] ≤ 1,200 characters; hook + keyword in the first 1–2 lines; bullets; on-platform CTA.
- [ ] No contact info, URLs, guarantees or unverifiable claims.
- [ ] FAQ covers access/passwords, revisions, timeline, ownership, guarantees, custom offers, languages.

**E. Requirements**
- [ ] 6–10 questions; multiple choice where possible; attachments for brand assets; no passwords.

**F. Gallery**
- [ ] Cover 1280×769 scored ≥ 85 on section 5.2; compliance gate passed.
- [ ] Images 2 and 3 cover proof + process; all 3 slots used.
- [ ] Every gallery item **tagged** [OFFICIAL S1].
- [ ] Video 45–60 s, ≤ 50 MB, captions, no contact info, licensed music.
- [ ] Up to 2 PDFs; pages 1–3 carry the message; no contact info in footers or links.
- [ ] Previewed on desktop **and phone**; card looks centered and clear [OFFICIAL S1].

**G. Publish & after**
- [ ] Submit; note status (Pending approval / Requires modification).
- [ ] If modification requested: fix the named issue everywhere, then resubmit.
- [ ] Record baseline impressions, clicks, CTR, orders for the first 14–28 days.
- [ ] Attach preview files to every delivery (feeds reviews-with-files + portfolio).
- [ ] Monthly: FAQ updated from new inbox questions; one controlled visual test at a time.

### 5.10 "Requires modification" / denial response protocol

1. Screenshot the notice, then identify the field (title / images / description / video / category).
2. Search **all** assets for the same pattern: URLs, "@handles", emails, phone numbers, "WhatsApp", QR codes, stars, badges, "Top Rated", Fiverr logo, prices in the title, third-party logos implying partnership, and any wording that sounds like a guaranteed result.
3. Fix, and also remove borderline items to avoid a second cycle.
4. Resubmit and log what changed.
5. If still unclear, ask Customer Support (on-platform) what exactly to change. Never create a duplicate gig to bypass a denial.

### 5.11 Sequential A/B protocol for covers + sample-size table

Protocol:
1. Baseline 14–28 days with cover A; freeze title, price, tags, packages.
2. Switch to cover B (a **bold** difference) for the same length of time, avoiding holidays and sales events.
3. Compare impressions → clicks (CTR) → orders (conversion) → **orders per 1,000 impressions** (primary metric).
4. Declare a winner only if the sample meets the table below; otherwise keep the one that wins on qualitative tests (5-second test, SERP stand-out) and move on.

Impressions needed **per variant** (80% power, α = 0.05, two-sided) [REASONED, computed]:

| Baseline CTR | Detect +25% | Detect +50% | Detect +100% |
|---|---|---|---|
| 1% | ~27,900 | ~7,700 | ~2,300 |
| 2% | ~13,800 | ~3,800 | ~1,100 |
| 3% | ~9,100 | ~2,500 | ~750 |
| 5% | ~5,300 | ~1,500 | ~430 |

### 5.12 SERP audit protocol (to replace unverifiable "top seller patterns")

For each primary keyword, open Fiverr search (logged out and logged in, desktop and phone) and record the top 20 gigs in a sheet:
- Cover type (mockup / face / text-only / illustration).
- Dominant colors; number of words on cover.
- Video yes/no; number of gallery items.
- Packages (1 or 3); price ladder; delivery days; revisions.
- Number of FAQs; seller level; reviews.

Patterns shared by ≥ 60% of the top 10 are the "table stakes". The deliberate difference in the brief comes from the gaps.

Tools: manual first. Automated scraping (S43, S51, S52) conflicts with Fiverr's anti-scraping protections and ToS (S43 and S51 say so themselves), so treat it as a risk and keep any use light and personal.

---

## 6. Templates and examples (quick copy)

**Cover headline patterns (≤ 6 words):**
- "[Outcome] in [timeframe]": e.g., "30 Days of Posts, Done".
- "[Deliverable] that [benefit]": e.g., "Instagram Content That Sells".
- "[Audience]: [outcome]": e.g., "Restaurants: Fill Tables via Instagram".
- "From [before] to [after]": for real before/after visuals only.

**Package name sets:** Starter / Growth / Scale · Essential / Pro / Complete · Launch / Build / Dominate (only if the scope earns it).

**Title examples (≤ 80 characters, check the length in the editor):**
- "I will be your social media manager and create instagram content that converts" (78)
- "I will create a monthly instagram and facebook content plan with branded posts" (78)

**Gallery set for a DESORA gig:**
1. Cover: founder or team photo + phone mockup of a real branded feed + 4-word promise.
2. Case study card: real client (permitted), before/after grid, one honest metric.
3. "What you get" + 4-step process.
4. Video: 55 s per the section 5.3 script.
5. PDF 1: 3-page case-study deck.
6. PDF 2: sample content calendar + report (anonymized).
Tag all items by service, industry and style.

---

## 7. Free tools & resources

| Name | URL | Purpose | Free tier? | Note |
|---|---|---|---|---|
| Fiverr Gig Image Templates | https://www.fiverr.com/content/rt/gig-images | Official template/inspiration page [S9] | Yes | Content not read this session. Check it |
| Fiverr gig analytics (in-app) | Seller dashboard → Analytics/Gigs | Impressions, clicks, orders, conversion per gig | Yes | Primary data for sequential tests |
| Gig Image Swap – Fiverr Visibility Preview | https://github.com/rumman02/Gig-visibility-checker | Chrome extension; swaps thumbnails on the Fiverr SERP locally to preview your cover in context [S53] | Yes (MIT) | Local only; nothing posted |
| Canva | https://www.canva.com | Cover/PDF design; custom 1280×769 canvas | Yes (Pro optional) | Check licence of template elements |
| Photopea | https://www.photopea.com | Browser Photoshop-like editor | Yes | |
| Figma | https://www.figma.com | Design system for consistent covers | Yes (starter) | |
| Adobe Express | https://www.adobe.com/express | Quick covers, video, resize | Yes (limited) | |
| Squoosh / TinyPNG | https://squoosh.app · https://tinypng.com | Compress PNG/JPG under 2 MB | Yes | |
| WebAIM Contrast Checker | https://webaim.org/resources/contrastchecker/ | Verify ≥ 4.5:1 text contrast | Yes | |
| Hemingway Editor | https://hemingwayapp.com | Readability of description/FAQ | Web version free | |
| CapCut / DaVinci Resolve | https://www.capcut.com · https://www.blackmagicdesign.com/products/davinciresolve | Gig video editing, captions | Yes | Check music licensing |
| Ahad690 fiverr-gig-optimizer | https://github.com/Ahad690/fiverr-gig-optimizer | Claude Code skill: deterministic competition score (log-scale anchors) + p25/p50/p75 price tiers [S43–S45] | Yes (MIT) | Live-scrape mode is a ToS risk; the manual-count mode is safe |
| waseemnasir2k26 fiverr-gig-optimizer / gig-assets | https://github.com/waseemnasir2k26/fiverr-gig-optimizer | 1280×769 canvas thumbnail generator, PDF templates, Remotion 38 s video template [S40–S42, S50] | Yes (MIT) | Its "algorithm insights" numbers are unsourced |
| fiverr-mcp-server | https://github.com/KyuRish/fiverr-mcp-server | MCP tools to read gig packages/delivery/revisions/reviews for research [S51] | Yes | Author warns of ToS issues; personal, light use only |

---

## 8. Open questions, unverifiable items, and the 10-minute verification checklist

**Could not be verified this session (blocked or no budget). Verify in the live editor or Help Center, then update this file:**
1. Exact image file-size limit (50 MB vs ~10 MB) and accepted formats (is GIF still allowed?).
2. Whether the Help Center still says 1280×769 / min 712×430 (third-party consensus says yes) and the current text of the "new Gig image guidelines" blog post [S10] (does it restrict text-heavy covers or require showing actual work in some categories?).
3. Video formats accepted, minimum length (if any), and the exact review time.
4. Description minimum length; package name/description character limits; FAQ count and length limits; requirements question limits.
5. Tag length limit and whether the tag field is now labelled "Positive keywords" [S48 hint].
6. Delivery-time dropdown range and revision options (does "Unlimited" still exist?).
7. Whether desktop search cards show gallery carousels and video previews on hover.
8. Current Fiverr wording on AI-generated content in gigs and on Fiverr Go seller obligations.
9. Current prohibited-services list (academic work, social-media engagement, etc.) as it applies to DESORA's service lines.
10. Any official Fiverr statistic on video impact (the "220%" figure).
11. The gig-count limit per seller level (not core to this cluster; see the levels cluster).
12. Whether gigs can be published in French for fr.fiverr.com buyers, or must be written in English.

**10-minute owner verification (inside Fiverr → Gigs → Create a new Gig, as a draft, not published):**
- Title field: type 81 characters and note the limit.
- Tags: try a 21-character tag and note the error.
- Pricing: note the package name/description limits, delivery dropdown values and revision options.
- Description: paste 1,300 characters and note the counter limit.
- FAQ: add FAQs until blocked and note the counts and lengths.
- Requirements: note the question types and length limit.
- Gallery: read the on-page image, video and PDF requirement text and screenshot it.
Delete the draft afterwards.

**Research-process limitation:** only 28 pages could be fully fetched (all on GitHub), 30 sources were used as search snippets, and 7 web searches ran before the shared budget ran out. The CRO/UX claims tagged [TRANSFER] come from background knowledge of NN/g, Baymard, CXL, WCAG and YouTube Creator guidance, and were not re-read this session. Re-run this cluster with WebFetch allowed for help.fiverr.com, community.fiverr.com and nngroup.com, and with a larger search budget, to upgrade the UNVERIFIED tags.
