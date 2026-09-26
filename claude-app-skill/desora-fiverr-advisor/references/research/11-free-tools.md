# Cluster 11: Free tools and resources for a Fiverr marketing agency (DESORA)

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.


Research date: 2026-09-26. Sources: see `11-sources.tsv` (S001-S139).
Audience: the DESORA Fiverr-advisor subagent. It should read this file, not guess free tiers from memory.

---

## 0. Read this first: how far to trust this file

### 0.1 Research constraints (these affect every row)
- **WebSearch budget ran out.** The session-wide cap of 200 WebSearch calls was reached after this agent's 6th search. Only 6 WebSearch queries could be run.
- **WebFetch was blocked for almost every official site.** The egress proxy blocked fiverr.com, help.fiverr.com, learn.fiverr.com, canva.com, figma.com, google.com (support, developers, fonts), unsplash.com, pexels.com, pixabay.com, photopea.com, remove.bg, obsproject.com, blackmagicdesign.com, zapier.com, wikipedia.org, medium.com, reddit.com, stackoverflow, producthunt, alternativeto, Chrome Web Store, addons.mozilla.org and flathub.
- **Sites that could be fetched:** github.com, raw.githubusercontent.com, gitlab.com, pypi.org, registry.npmjs.org and sourceforge.net (including its `/software/product/<Tool>/` review pages).
- **What this means:**
  - Official pricing pages of commercial SaaS tools could not be read this session.
  - Free-tier data for those tools comes from three places: SourceForge vendor listings plus user reviews (T2), the community-maintained free-for.dev list (read verbatim from GitHub), and Fiverr Help Center search snippets.
  - Open-source tools were checked on their official GitHub/GitLab repos, which count as T1.
- **A problem with the fetch tool itself.** WebFetch passes each page through a small summarizer model, and that model made things up at least once:
  - A second, targeted fetch of the free-for.dev README returned invented entries, such as "Figma: 3 editor seats" and "Brevo: 500 contacts".
  - Downloading the raw file with curl showed those lines do not exist.
  - All free-for.dev figures quoted below were re-checked against the raw file. Key GitHub claims (Remotion license, Cal.com README, Upscayl README, Font Awesome README, the Fiverr scraper/extension READMEs) were also re-checked against raw text.
  - SourceForge summaries could **not** be re-checked, because curl gets a bot-challenge page there. Treat the exact numbers in SourceForge-based rows as "likely, verify".

### 0.2 Confidence tags used in the tables
| Tag | Meaning |
|---|---|
| **V1** | Checked this session on a first-party source: the official GitHub/GitLab repo, the official LICENSE, or the package registry. |
| **V2** | Taken from a SourceForge vendor listing or user reviews fetched this session. Starting prices and limits there can be stale, so verify. |
| **VL** | Quoted word for word from the free-for.dev community list (raw file, checked 2026-09-26). |
| **S** | Taken from a search-result snippet only. For Fiverr Help Center items this is still the official text, but the full page was not read. |
| **PK** | Prior knowledge that was **not** verified this session. The advisor must tell the user to check it before relying on it. |

### 0.3 Rule for the advisor subagent
Free tiers change often. Before quoting a limit to the owner as a fact, the advisor should say "as of 2026-09 per <source>" and point to the official pricing page. It should never recommend a tool whose use would break Fiverr's Terms of Service (see section 5).

---

## 1. Executive summary: the "starter stack" (15 free tools)

For a small Moroccan marketing agency selling on Fiverr, the goal is to cover five jobs with zero software spend:
1. finding what buyers search for;
2. making gig images and videos that convert;
3. onboarding clients;
4. delivering marketing work;
5. reporting results.

| # | Tool (free tier) | Job it covers | Why it made the list | Confidence |
|---|---|---|---|---|
| 1 | **Fiverr search bar autocomplete + built-in seller Analytics** | Keyword research, gig performance | It is the only tool that shows how buyers phrase things *inside* Fiverr. The analytics are free in the seller dashboard. Every outside keyword tool only measures Google demand. | PK (Fiverr pages blocked) |
| 2 | **Google Trends** | Demand trend, seasonality, country comparison | Free. Google data from 2004, YouTube from 2008. Useful to compare niches (e.g., "meta ads" vs "tiktok ads") and to spot seasonal spikes. | V2 (S101) |
| 3 | **Google Keyword Planner** | Keyword ideas and volume ranges | Free inside a Google Ads account. No ad spend is required to open it. Volumes show as ranges unless you run ads. | V2 (S102) + community list (S097). Ranges-without-spend is PK |
| 4 | **Canva Free** | Gig covers, social posts, client graphics | Largest template library and easiest learning curve. Reviewers say free users see about 5% of templates, and premium items are watermarked. | V2 (S007) |
| 5 | **Photopea** | Photoshop-style edits, PSD mockups | Free in the browser, with ads. Opens PSD files, so it can edit free PSD mockups from sites like Mockup World. Premium removes ads, from about $5/month. | V2 (S073), VL (S038) |
| 6 | **Pexels + Pixabay + Unsplash** | Stock photos and video | All free for commercial use with no attribution. **But** each has its own license (they are not CC0) with restrictions; see section 3.5. | V2 (S112-S114) |
| 7 | **Google Fonts + Lucide / Tabler icons** | Typography and icons | OFL/Apache fonts and ISC/MIT icons are safe for commercial client work. | V1 (S043, S002, S106) |
| 8 | **DaVinci Resolve (free)** or **CapCut** | Gig video, client video edits | Resolve's free version has "most of the functionality of Studio". Studio is $295 one-time. CapCut is faster for short vertical social clips. | V2 (S093, S027) |
| 9 | **OBS Studio** | Screen recording, walkthrough videos, Loom replacement | GPLv2+, free, Windows/macOS/Linux. No recording limits, unlike Loom Free. | V1 (S044) |
| 10 | **ChatGPT / Claude / Gemini free tiers** | Drafting gig copy, replies, research | Free versions exist. Fiverr allows AI in all categories, but you remain accountable and must honor a client's "no-AI" request (section 3.7). | V2 (S085, S086), S (S008-S010) |
| 11 | **LanguageTool (free)** + **Grammarly (free)** | Proofreading English/French client copy | LanguageTool is open source (LGPL) and covers 20+ languages including French. Reviewers say Grammarly is English-only. | V1 (S045), V2 (S076, S028) |
| 12 | **Google account (Docs/Sheets/Drive/Forms) + Tally** | Client onboarding questionnaires, shared deliverables | A personal Google account is free, and Workspace is optional ($7+/user/month). Tally free gives "unlimited forms, unlimited submissions". | VL (S038), V2 (S121, S080) |
| 13 | **Trello Free** or **ClickUp Free Forever** | Delivery pipeline per order | Trello free: "Unlimited Personal Boards, 10 Team Boards" (VL). ClickUp Free Forever has tasks, docs and basic automations. | VL (S038), V2 (S030, S064) |
| 14 | **Clockify** | Time tracking to price packages profitably | "Unlimited users, free forever" (VL). Note that the SourceForge summary said "up to 5 users" (conflict, section 7). | VL (S038), V2 (S031) |
| 15 | **Google marketing stack: GA4 + Search Console + Looker Studio + PageSpeed Insights/Lighthouse** | Delivering and reporting SEO/ads/social work | All free. They are the industry-standard proof of results for clients. | V2 (S082, S090, S091), V1 (S098) |

**Next five to add as the agency grows:**
- Meta Business Suite (free FB/IG scheduling and inbox);
- Screaming Frog SEO Spider (free up to 500 URLs);
- Zoho Invoice (free invoicing, multi-currency, Arabic/French UI);
- Payoneer (the most common way to get Fiverr earnings to Morocco; fees are the pain point);
- Upscayl (free AI image upscaling; needs a Vulkan-capable GPU).

**Why this stack:**
- It keeps client data on mainstream, reputable services.
- It avoids every Fiverr-specific browser extension. None were found that are both useful and clearly ToS-safe (section 5).
- It covers bilingual FR/EN delivery.
- Paid upgrades can wait until revenue justifies them.

---

## 2. Fiverr's own free (and not-free) resources

All Fiverr domains were blocked for fetching. Rows are from Help Center search snippets (S) or prior knowledge (PK).

| Resource | URL | What it gives a seller | Free? / limits | Source | Caveats |
|---|---|---|---|---|---|
| Fiverr Help Center | https://help.fiverr.com | Official rules: AI policy, community standards, off-platform policy, prohibited services | Free | S (S008-S010, S022-S024) | This is the source of truth for ToS questions. Quote article titles and link them. |
| AI usage guidelines | help.fiverr.com/hc/en-us/articles/34998793899665 | AI is allowed in all categories. Output must be high quality, original, and "meaningfully refined and customized". The freelancer is fully accountable. A client's explicit request for non-AI work must be honored, and the freelancer must then disclose their workflow. | Free policy | S (S008) | Disclosure is **triggered by the client's request**. It is not a blanket rule. One third-party GitHub summary (S117/S139) wrongly says AI content must always be disclosed. |
| Community Standards: AI-generated content | help.fiverr.com/hc/en-us/articles/37333179414289 | Bans deceptive AI: impersonation, violating consent, misleading users | Free policy | S (S009) | Relevant to AI UGC, voice-clone or avatar gigs. Get consent for likeness. |
| Prohibited services / third-party ToS rule | help.fiverr.com/hc/en-us/articles/49174165608593 | Services that "violate, or create a significant risk of violating, a third party's terms of service are prohibited" | Free policy | S (S022, S023) | Matters for agency gigs: fake followers, review manipulation, ad-account workarounds and scraping services all break platform ToS, so they break Fiverr's rules too. |
| Off-platform policy | help.fiverr.com/hc/en-us/articles/12792122691601 | Moving communication to third-party tools is allowed only after an order is placed | Free policy | S (S024) | So Calendly, Zoom or Tally links belong **after** an order starts, not in pre-order chats. |
| Fiverr Workspace (formerly AND.CO) | https://workspace.fiverr.com | Contracts (vetted by Freelancers Union), proposals, invoices, time tracking, expenses; tracks Fiverr and non-Fiverr projects | **Free plan = 1 client** with standard contracts | S (S013-S015) | Too limited for an agency. Use Zoho Invoice or Invoice Ninja for off-Fiverr clients. Do not use it to move Fiverr clients off-platform. |
| Seller Plus | help.fiverr.com/hc/en-us/articles/360017140717 | Advanced analytics, success manager (Premium), learning content | **Not free.** Kickstart $15/month (unleveled sellers), Standard $25/month ($128 per 6 months), Premium $49/month ($250 per 6 months) | S (S019-S021) | Prices come from a Help Center snippet plus a T4 blog; verify. No free trial was confirmed. |
| Fiverr Go (AI Creation Models / Personal Assistant) | help.fiverr.com/hc/en-us/articles/32545737221649 | AI assistant answering buyer inquiries in your tone | **Not free.** Personal Assistant about $29/month. Creation Models about $25/month. Level 2, Top Rated and Pro only. | S (S016-S018) | **Being shut down.** The Personal Assistant closed to new subscribers on 2026-09-01 and ends on 2026-10-01 (Help Center snippet). Do not plan around it. |
| Fiverr Learn | https://learn.fiverr.com | Courses and certifications (freelancing, marketing, design) | Mix of free and paid (PK) | Not verified: domain blocked, and no search results returned official pages | Open question: which Learn courses are free in 2026. See section 8. |
| Fiverr Community Forum | https://community.fiverr.com | Peer Q&A, staff announcements, algorithm discussions | Free | S (search results showed community.fiverr.com threads) | T3. Many myths circulate there, so check claims against the Help Center. |
| Fiverr seller mobile app | App stores | Inbox, order alerts, fast response rate | Free | PK | Replying promptly on mobile is the ToS-safe way to protect response metrics. Do **not** use "stay online" extensions (section 5). |
| Fiverr Briefs | Seller dashboard | Algorithm-matched buyer briefs. They replaced Buyer Requests in Oct 2022. | Free | V (S119, a third-party report, T4) | There is no open bidding surface to automate, which is another reason not to buy "buyer request" extensions. |
| Fiverr API | none | There is no general public seller API. The only sanctioned programmatic access is a read-only marketing Affiliate API. | n/a | T4 reports (S119, S120) | Any tool claiming to "pull your Fiverr data" is scraping or using your session. Treat it as risky. |

---

## 3. Directory by category

Column "Checked" = source ID and 2026-09-26 unless noted.

### 3.1 Keyword research (for gig titles, tags, descriptions and client SEO)
| Tool | URL | Use for a Fiverr seller | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| Fiverr search autocomplete | fiverr.com search bar | Type seed words ("facebook ads", "instagram manager") and record the suggestions. These are real buyer phrasings for titles and tags. | Free, unlimited | PK | Results may be personalized, so use a clean or logged-out browser. Do this manually; scraping it breaks ToS. |
| Google Trends | https://trends.google.com | Compare niche demand, check seasonality, compare countries (US/UK/FR/MA) | Free | V2 S101 | Relative index, not volumes. The unofficial Python API **pytrends was archived 2025-04-17** (V1 S052). Don't build workflows on it. |
| Google Keyword Planner | https://ads.google.com/home/tools/keyword-planner/ | Keyword ideas and volume ranges for client SEO/ads proposals | Free with a Google Ads account, no spend required | V2 S102, S097 (T3 list) | Exact volumes may need active spend (PK). It measures Google demand, not Fiverr demand. |
| Google Search Console | https://search.google.com/search-console | Real queries a client site already ranks for (audits, reports) | Free | V2 S091 | Requires site verification by the client. |
| AnswerThePublic | https://answerthepublic.com | Question-style keywords from autocomplete, for FAQ sections and content gigs | Free version with a small daily search cap (PK; the exact count was not verified) | V2 S069 (NP Digital) | The free cap is small. |
| AlsoAsked | https://alsoasked.com | "People Also Ask" question trees for FAQ and content strategy | Free tier exists (PK; limits not verified) | V2 S124 | No pricing data on SourceForge. |
| Ubersuggest | https://neilpatel.com/ubersuggest/ | Volume, difficulty, competitor keywords | Free version "with tight limitations on searches". Paid from $29/month. | V2 S068 | Small backlink index. Beginner-level data. |
| Keyword Surfer (Surfer SEO) | Chrome extension | Volume and similar keywords shown on Google SERPs | Listed as a free extension, but a reviewer says "pricing limits you pretty heavily until you subscribe" | V2 S104 | Surfer has changed the extension over time (PK). Verify what is free now. It is a browser extension, so check its permissions. |
| Semrush (free account) | https://www.semrush.com | Competitive research for client proposals | Free version plus a 7-day trial. Paid plans are "expensive" per reviews. | V2 S066 | Free daily request caps are small (PK). |
| Ahrefs Webmaster Tools | https://ahrefs.com/webmaster-tools | Free backlink and site-audit data for **verified owned sites** | Free for verified sites | S097 (T3 list). The SourceForge Ahrefs page lists no free plan (S067). | Main Ahrefs starts at $129/month (V2). AWT only covers sites you or your client verify. |
| Glimpse | Chrome extension on Google Trends | Adds absolute volume estimates to Trends | Freemium (PK) | not verified | Could not be fetched or searched. |
| Bing Webmaster Tools | https://www.bing.com/webmasters | Second search console; can import from GSC | Free | S097 | |

### 3.2 Gig image and cover design
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| Canva Free | https://www.canva.com | Gig thumbnails, social templates, client posts | Free version. Reviewers say about 5% of templates are free and premium items carry watermarks. Pro is about $120/year. | V2 S007 | **Licensing:** Canva's content license limits using stock elements in logos/trademarks (PK: check canva.com/policies/content-license-agreement). Don't sell template-based logos as unique trademarkable marks. Background remover and Magic Resize are Pro features (PK). |
| Figma (Starter) | https://www.figma.com | Pro layouts, brand kits, client review links | Free version exists. Reviewers note "gradual reduction in free functionality". free-for.dev says "unlimited files and viewers with a max of 2 editors and three projects". | V2 S026, VL S038 | The free-for.dev entry may be dated. Check current Starter limits. |
| Penpot | https://design.penpot.app | Open-source Figma alternative, free cloud or self-host | Free cloud. MPL-2.0. | V1 S046 | Smaller plugin and template ecosystem. |
| Photopea | https://www.photopea.com | PSD/XCF/Sketch editing in the browser, mockup PSDs | Free with ads. Premium from $5/month. | V2 S073, VL S038 | Ads in the free version. |
| Pixlr | https://pixlr.com | Quick browser edits, AI background removal | Free with ads. Paid from $2.49/month ($1.49/month annual). | V2 S072 | Ads are the main complaint. |
| Kittl | https://www.kittl.com | Typography-heavy designs, AI logo drafts, mockups | Free version. Paid from $10/month. | V2 S070 | Reviewer: Kittl **does not accept PayPal, Payoneer, gift or prepaid cards**, which matters for Moroccan payment methods. Check free-plan commercial-use terms (PK). |
| Adobe Express | https://www.adobe.com/express | Templates, resizing, "commercially-safe" Firefly AI | Free version. Paid from $9.99/month. Generative credits are limited on free (PK). | V2 S071 | "Commercially-safe AI" is Adobe's marketing claim. |
| Microsoft Designer | https://designer.microsoft.com | AI image and design generation | Pricing not listed | V2 S116 | A July 2026 review reports a sharp quality drop (1 review, weak signal). |
| GIMP | https://www.gimp.org | Free desktop raster editor | Free, GPL-3.0. 3.x series. | V1 S127 | Steeper learning curve. |
| Inkscape | https://inkscape.org | Free vector editor (logos, SVG) | Free, open source | V1 S005 | |
| Krita | https://krita.org | Illustration and painting | Free, GPL-3.0 | V1 S128 | |
| remove.bg | https://www.remove.bg | One-click background removal | Free version (low-res previews per PK). Paid from $9/month. API available. | V2 S100 | For HD output on the free tier use rembg (below) or Photopea. |
| rembg (open source) | https://pypi.org/project/rembg/ | Local, private background removal (CLI/Python) | Free, MIT | V1 S004 | **Model licenses differ.** The RMBG-2.0 model "requires a paid agreement for commercial use". Use u2net/isnet/birefnet models for client work. |
| Upscayl | https://github.com/upscayl/upscayl | Upscale low-res client logos and photos | Free desktop app. Backend AGPLv3. | V1 S001, S136 | **Needs a Vulkan-compatible GPU.** "Many iGPUs do not work." It "cannot de-blur". |
| Real-ESRGAN (portable) | https://github.com/xinntao/Real-ESRGAN | Engine behind Upscayl, command-line portable builds | Free, BSD-3-Clause | V1 S054 | |
| Excalidraw / tldraw | https://excalidraw.com | Quick diagrams for proposals and funnels | Free (MIT). Excalidraw+ is paid. | V1 S109, VL S038 | |

### 3.3 Mockups
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| Smartmockups (now inside Canva, per PK) | https://smartmockups.com | Device and print mockups for portfolio and gig gallery | Free version. $14/month listed on SourceForge. | V2 S099 | The Canva integration is PK; SourceForge doesn't mention it. |
| Mockup World | https://www.mockupworld.co | Free PSD mockups | Free and premium | Listed in awesome-stock-resources (S039) | Each mockup has its own license. Check attribution and commercial terms per file. Open the PSDs in Photopea. |
| Shots.so | https://shots.so | Browser/device screenshot mockups for landing-page and social gigs | Free tier (PK) | not verified (SourceForge 404) | |
| Mockuuups Studio | https://mockuuups.studio | Device mockups | Free tier (PK) | not verified | |
| Rotato alternatives | n/a | 3D device animations | Rotato is paid (PK) | not verified | Free workaround: Canva or Adobe Express animated mockups, or a DaVinci Resolve Fusion template. |

### 3.4 Gig video, screen recording and audio
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| DaVinci Resolve (free) | https://www.blackmagicdesign.com/products/davinciresolve | Full video editing, color, audio (Fairlight), motion (Fusion) | Free version; Studio $295 one-time | V2 S093 | Heavy hardware needs, steep learning curve. |
| CapCut | https://www.capcut.com | Fast short-form editing, auto-captions, templates | Free version. Paid from $7.99/month. | V2 S027 | HQ China. **Content-license and ToS changes were reported in 2025 (PK).** Read the terms before uploading confidential client footage. Some features and templates are Pro-only. |
| Clipchamp | https://clipchamp.com | Browser editor (Microsoft), easy for beginners | Free version. Paid from $9/month. | V2 S075 | Reviewers complain about free-version output quality. Check current free export resolution (PK: 1080p). |
| Canva video | https://www.canva.com | Animated gig intros and social reels | Included in Canva Free | V2 S007 | Same licensing caveats as Canva. |
| OBS Studio | https://obsproject.com | Screen and camera recording, walkthroughs, Loom replacement | Free, GPLv2+, no limits | V1 S044 | |
| Loom | https://www.loom.com | Async video replies to clients and audit walkthroughs | $0 plan exists. Free version has "fairly limited" recording time. | V2 S032 | Owned by Atlassian. Check current free length and count caps (PK: short videos, limited library). |
| Cap | https://cap.so | Open-source Loom alternative (instant links, local studio mode) | Free app; Cap Pro paid. MIT/AGPLv3. | V1 S048 | Self-host option for privacy. |
| ShareX | https://getsharex.com | Windows screenshots, GIFs, scrolling capture, OCR | Free, GPL-3.0, no ads | V1 S108 | Windows only. |
| Flameshot | https://flameshot.org | Screenshots with arrows, blur and text annotation | Free, GPLv3+ | V1 S131 | |
| Descript | https://www.descript.com | Edit video by editing the transcript, filler-word removal | Free version. Paid from $10/user/month. | V2 S033 | Free limits not stated. Voice cloning raises consent issues (Fiverr AI standards). |
| Shotcut / Kdenlive | https://shotcut.org / https://kdenlive.org | Free open-source NLE editors | Free, GPLv3 | V1 S047, S129 | |
| HandBrake | https://handbrake.fr | Compress videos to meet Fiverr upload size limits | Free, GPLv2 | V1 S130 | |
| Audacity | https://www.audacityteam.org | Voice-over cleanup | Free, GPL. v4 is in development; use 3.x for stability. | V1 S110 | |
| Whisper | https://github.com/openai/whisper | Local transcription and subtitles (multilingual) | Free, MIT. Needs about 1-10 GB VRAM depending on model. | V1 S053 | Local processing keeps client audio private. |
| Remotion | https://www.remotion.dev | Programmatic, templated videos (React) | **Free only for individuals, for-profit companies with ≤3 employees, and non-profits.** Others need a Company License. | V1 S111 (LICENSE verified) | If DESORA grows past 3 employees it must buy a license. |

**Fiverr gig video and image specs:** these are PK and must be checked on the Help Center before advising. Commonly cited: gallery images 1280×769 px, video up to 75 s. Verify.

### 3.5 Stock media (licensing is the main risk)
| Tool | URL | Use | Free-tier limits | Checked | Licensing caveats |
|---|---|---|---|---|---|
| Pexels | https://www.pexels.com | Photos and video for gig images and client posts | Free, "Pexels License", no attribution | V2 S113 | **Not CC0** since the license change (PK: 2018). awesome-stock-resources still wrongly lists it as CC0 (S039). PK restrictions: don't sell unaltered copies, don't imply endorsement by people or brands shown, don't redistribute on stock sites. |
| Unsplash | https://unsplash.com | High-end photos | Free under the "Unsplash license". 2M+ images. | V2 S112 | Not CC0 (PK). Can't compile photos into a competing service. Unsplash+ premium images are separate and paid (PK). |
| Pixabay | https://pixabay.com | Photos, vectors, video, music, SFX | Free, Pixabay License, commercial use without attribution | V2 S114 | Canva-owned since 2019. A contributor dispute was reported in a 2022 review. PK: the Pixabay license bars using content in trademarks/logos and selling unaltered copies. |
| Mixkit | https://mixkit.co | Free stock video, music, SFX, video templates | Free, no signup or attribution | V2 S115 | Envato-run. **Licenses vary per asset type**, so check each item's license. |
| Freepik (rebranded "Magnific" per SourceForge) | https://www.freepik.com | Vectors, PSDs, AI images | Free version. Paid from $9/month ($5.75/month annual). | V2 S074 | PK: the free license **requires attribution** and has download caps. Many "premium" assets can't go into logos or trademarks. Verify the rebrand claim. |
| Openverse | https://openverse.org | Meta-search across CC-licensed media | Free | S039 | License varies per item (CC BY needs credit). |
| Coverr, Videezy, Life of Vids | see S039 | Free stock video | Free | S039 (list) | Videezy mixes free and attribution-required items. |
| Free Music Archive, ccMixter, Freesound, Jamendo | see S039 | Music and SFX for gig videos | Free, per-track CC licenses | S039 | Many tracks are CC BY-NC (**non-commercial**), which is not allowed in client ads or Fiverr gig videos. Filter by license. |

### 3.6 Fonts, icons, colors
| Tool | URL | Use | License / limits | Checked | Caveats |
|---|---|---|---|---|---|
| Google Fonts | https://fonts.google.com | Brand and gig typography | SIL OFL 1.1 (most), Apache 2.0, Ubuntu Font License | V1 S043 | "Always read the license for every font". Some fonts have Reserved Font Names (don't rename modified versions). |
| Font Awesome Free | https://fontawesome.com | Icons for decks and sites | Icons **CC BY 4.0**, fonts OFL 1.1, code MIT. Attribution is embedded in the files; don't strip it. v7 current, v6 LTS. | V1 S041, S042, S137 | Not "MIT licensed" as some lists say (S039 is wrong). Brand icons may only represent their own brand. |
| Lucide | https://lucide.dev | Clean UI icons (1,600+) | **ISC** license | V1 S002, S003 | awesome-stock-resources says MIT, which is wrong. No brand logos. |
| Tabler Icons | https://tabler.io/icons | 6,220 icons, SVG/PNG/PDF/EPS | MIT | V1 S106 | |
| Simple Icons | https://simpleicons.org | 3,400+ brand logos (social icons on client materials) | CC0 **but trademarks stay with the brand owners** | V1 S105 | Follow each brand's guidelines, e.g., Meta and TikTok logo rules. |
| Coolors, Adobe Color, Color Hunt | coolors.co / color.adobe.com / colorhunt.co | Palettes for brand kits | Free (Coolors has paid features) | S040 | |
| Font Squirrel, Fontsource | fontsquirrel.com / fontsource.org | Commercial-use fonts, self-hosting | Free | S039, S038 | **DaFont** fonts are often personal-use only (PK). Don't use them in client commercial work without checking. |

### 3.7 AI assistants and Fiverr's AI rules
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| ChatGPT Free | https://chatgpt.com | Drafts of gig descriptions, FAQs, buyer replies, ad copy | Free version with limits; Pro $200/month | V2 S085 | Reviewers note hallucinated numbers and generic tone. Always edit before use. |
| Claude Free | https://claude.ai | Long documents, strategy drafts, reports; supports Arabic and French | Free. Pro and Max ("up to 20x" Pro usage) are paid. | V2 S086 | Heavy users hit limits quickly. |
| Gemini / Google AI Studio | https://gemini.google.com / https://aistudio.google.com | Drafting and research. AI Studio gives free API access. | AI Studio free tier: "Gemini 3.5 Flash, Gemini 3 Flash and Gemma 4… Flash offers 5 requests per minute, 20 requests per day" | VL S038 (raw-verified) | |
| Perplexity | https://www.perplexity.ai | Cited research for client briefs | Free tier (PK) | not verified (SourceForge 404) | Always open the cited source. |
| Groq console (free API keys) | https://console.groq.com | Used by some Fiverr AI extensions | Free keys (per S061 README) | V S061 (T3) | Anything you send goes to a third-party API. Don't paste client-confidential data. |

**Fiverr AI rules the advisor must apply** (S008-S010; Help Center snippets):
1. AI use is allowed in every category.
2. Output must be high quality, original and meaningfully customized. "Generic, unmodified, or reused AI output does not meet Fiverr's quality standards."
3. If a client explicitly asks for non-AI work, the seller must honor it and disclose their workflow.
4. The freelancer is fully accountable for what they deliver.
5. No deceptive AI: no impersonation, and no use of a person's likeness or voice without consent.

Rights in AI output depend on each tool's terms and on local copyright law (PK). Don't promise clients exclusive copyright over raw AI images.

### 3.8 Copywriting and grammar
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| LanguageTool | https://languagetool.org | Grammar/style for EN **and FR** (and 20+ languages) | Free version with limits; Premium from $59/year. Core is open source (LGPL 2.1+) and self-hostable. | V1 S045, V2 S076 | Best free option for a French/English agency. Arabic support is PK (unverified). |
| Grammarly Free | https://www.grammarly.com | English grammar and tone in the browser, Gmail, Docs | Free version. Paid from $12/month. | V2 S028 | Reviewers: English only, some unneeded suggestions. The company is now named Superhuman (per SourceForge). It is a browser extension that reads everything you type, so disable it on sensitive pages. |
| Hemingway Editor | https://hemingwayapp.com | Readability for gig descriptions and ad copy | Free web version; desktop $19.99 one-time | V2 S078 | English only. |
| QuillBot | https://quillbot.com | Paraphrasing, summarizing | Free version. Paid from $8/month. | V2 S077 | Paraphrasing other sellers' gig text is still copying. Don't do it. |

### 3.9 Productivity, onboarding and delivery management
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| Notion Free | https://www.notion.so | SOPs, client hubs, content calendars | Free version exists. A reviewer notes a 5 MB upload limit on free. | V2 S029 | Steep learning curve. Poor offline support. |
| Trello Free | https://trello.com | One card per Fiverr order, with checklists | "Unlimited Personal Boards, 10 Team Boards" | VL S038, V2 S030 | PK: Trello added a collaborator cap on free Workspaces in 2024. Verify. |
| ClickUp Free Forever | https://clickup.com | Agency-scale task management, docs, basic automations | Free Forever plan. Paid from $7/user/month (annual). | V2 S064 | Steep learning curve. PK: free storage is capped. |
| AppFlowy | https://appflowy.io | Open-source Notion alternative (privacy) | Free, AGPLv3, cloud or self-host | V1 S132 | |
| Airtable Free | https://airtable.com | Client and order database, content calendars | Free $0 with record, storage, automation and editor caps. Team $20/user/month. | V2 S126 | Free support is community-only. |
| Google account (Docs/Sheets/Drive/Forms/Calendar) | https://workspace.google.com | Deliverables, shared folders, onboarding forms | Personal Google account is free (storage cap, PK: 15 GB shared). Workspace from $7/user/month. | V2 S121 | Keep client folders tidy. Reviewers warn permissions sprawl fast. |
| Tally | https://tally.so | Post-order onboarding questionnaire (brand assets, logins checklist, goals) | Free: "unlimited forms, unlimited submissions, email notifications, form logic, collect payments, file upload…". Pro $29/month. | VL S038, V2 S080 | EU-hosted, GDPR. Send it only **after** an order starts (Fiverr off-platform rule). Never collect client passwords in forms; use platform-native access (Meta Business partner access, GA/GSC user invites). |
| Jotform Free | https://www.jotform.com | Alternative form builder | "5 forms, 100 monthly submissions, 10 e-sign documents, 10 payment submissions" | VL S038, V2 S125 | Tight limits. |
| Formbricks | https://formbricks.com | Open-source surveys (client satisfaction, NPS) | Free cloud tier; AGPLv3 | V1 S050 | |
| Calendly Free | https://calendly.com | Kickoff and review calls **after** order placement | "1 Calendar connection per user and Unlimited sessions" | VL S038, V2 S034 | Group and round-robin features are paid. |
| Cal.com | https://cal.com | Calendly alternative | Hosted Cal.com has a free tier (PK) | V1 S049, S134 | The GitHub repo is now "Cal.diy", self-host only and "recommended for personal, non-production use". Use hosted Cal.com or Calendly instead of self-hosting. |
| Clockify | https://clockify.me | Time per order, to learn real hourly rates per package | "Unlimited users, free forever" (VL) | VL S038, V2 S031 | The SourceForge summary said "free for teams up to 5 users", which contradicts this. Check clockify.me/pricing. |
| Toggl Track Free | https://toggl.com/track | Time tracking | Free plan "designed with freelancers in mind… unlimited tracking records, projects, clients…". Paid from $9/user/month. | VL S038, V2 S103 | PK: free is capped at a small team size. Verify. |
| Kimai | https://www.kimai.org | Open-source time tracking and invoicing | Free self-host, AGPL-3.0; kimai.cloud is paid | V1 S056 | |

### 3.10 Marketing-agency delivery tools (what DESORA delivers with)
| Tool | URL | Use | Free-tier limits | Checked | Caveats |
|---|---|---|---|---|---|
| Google Analytics 4 | https://analytics.google.com | Client traffic and conversion reporting | Free (GA360 is enterprise) | V2 S082 | Steep learning curve. Get **user access from the client**; never ask for their password. |
| Google Search Console | https://search.google.com/search-console | SEO audits and reporting | Free | V2 S091 | |
| Looker Studio (ex-Data Studio) | https://lookerstudio.google.com | Branded client dashboards | Free; 40+ connectors listed | V2 S090 | Third-party connectors (e.g., Meta Ads) are usually paid (PK). |
| PageSpeed Insights / Lighthouse | https://pagespeed.web.dev | Speed and Core Web Vitals audits | Free. Lighthouse is Apache-2.0 (in DevTools, CLI, extension). | V1 S098, S097 | |
| Screaming Frog SEO Spider | https://www.screamingfrog.co.uk/seo-spider/ | Technical SEO crawl audits | **Free up to 500 URLs** | S097 (T3 list); SourceForge 404 | The free cap is widely reported (PK too). Verify the current version. |
| seonaut / open-seo | github.com/stjudewashere/seonaut, github.com/every-app/open-seo | Open-source self-hosted audit and keyword platforms | Free (self-host); open-seo uses paid DataForSEO APIs | S096 (T3 list) | Technical setup needed. |
| Meta Business Suite | https://business.facebook.com | FB/IG scheduling, inbox, insights for client pages | "It's free" | V2 S092 | Use partner access to client assets, not their personal logins. |
| Buffer Free | https://buffer.com | Multi-network scheduling | Free version (PK: 3 channels, 10 queued posts each). Paid from $5/month. | V2 S035 | Reviewers note limited editing and no native IG Story scheduling. |
| Metricool Free | https://metricool.com | Scheduling and analytics, competitor tracking | Free version. Paid from $18/month. | V2 S036 | Free brand/profile limit is PK (1 brand). |
| Semrush free / Ahrefs Webmaster Tools | see 3.1 | Proposal research and audits | see 3.1 | | |
| Microsoft Clarity | https://clarity.microsoft.com | Heatmaps and session recordings for CRO gigs | Free, "no traffic limits" | VL S038 | Needs the client to install the script. |
| Hotjar Free | https://www.hotjar.com | Heatmaps and surveys | Per free-for.dev: "2000 pageviews/day… 3 surveys & 3 feedback widgets and collecting 20 responses per month" | VL S038 | May be dated; verify. |
| Umami | https://umami.is | Privacy-first analytics (GDPR clients) | MIT; cloud free tier; self-host free | V1 S057 | |
| Brevo / MailerLite | brevo.com / mailerlite.com | Client email campaigns | Brevo "9,000 emails/month, 300 emails/day free". MailerLite "1,000 subscribers/month, 12,000 emails/month free". | VL S038 | Free tiers shrink often; verify before promising a client. |

### 3.11 Finance and invoicing (Morocco context)
| Tool | URL | Use | Free / fees | Checked | Caveats |
|---|---|---|---|---|---|
| Payoneer | https://www.payoneer.com | Withdraw Fiverr earnings; receive from other marketplaces | Free account; fees on FX, withdrawals, cards, and annual inactivity (per reviews) | V2 S079 (3.7/5, 16 reviews) | Complaints: high FX conversion, long verification, limits for new users, **frozen funds**. Keep KYC documents consistent with the Fiverr profile. |
| Wise | https://wise.com | Multi-currency receiving, mid-market FX | Account types and fees vary by country | S094 (T4 list) | **Availability for Moroccan residents is not verified.** The SourceForge slug returned an unrelated product. Open question. |
| Zoho Invoice | https://www.zoho.com/invoice | Invoices for off-Fiverr retainers, estimates, time, client portal | "Completely free (perpetually)"; multi-currency; UI in Arabic and French | V2 S122 | Don't invoice Fiverr buyers off-platform (ToS). |
| Invoice Ninja | https://invoiceninja.com | Invoices, quotes, time, client portal | Hosted plan or self-host; **Elastic License** (source-available, not OSI open source); $40/year white-label | V1 S051 | |
| Fiverr Workspace | workspace.fiverr.com | Contracts and invoices | Free for 1 client | S S013 | |
| Stablecoin (USDT) payouts | various | Alternative payout rail | varies | S094 (T4, vendor list) | **Not recommended.** Moroccan legal status of crypto is unclear or restricted (PK: Bank Al-Maghrib warnings since 2017; a regulation bill was in progress). Wrong-network transfers are permanent losses (S094). |

### 3.12 Utilities
| Tool | URL | Use | Free | Checked |
|---|---|---|---|---|
| Stirling PDF | https://stirlingpdf.com | Merge, split, sign, redact, compress PDFs (proposals, reports) locally | Open-core; desktop and self-host free | V1 S055 |
| HandBrake | https://handbrake.fr | Compress videos | Free | V1 S130 |
| Excalidraw | https://excalidraw.com | Funnel diagrams, wireframes | Free | V1 S109 |

---

## 4. Workflows (tool combinations)

### (a) Keyword research for a new or refreshed gig
1. **Fiverr search bar (manual):** type 5-10 seed terms and record every autocomplete suggestion in a Google Sheet.
2. **Fiverr search results (manual reading, no scraping):** for each suggestion, note the top gigs' title patterns, starting prices and number of results. This shows competitiveness.
3. **Google Trends:** compare the 3-5 best phrases over 5 years and by country to spot rising or seasonal demand.
4. **Google Keyword Planner / Ubersuggest free / Keyword Surfer:** get Google volume ranges as a secondary signal. Do not treat these as Fiverr volumes.
5. **AnswerThePublic / AlsoAsked:** collect buyer questions and turn them into gig FAQ entries.
6. **ChatGPT/Claude free:** draft 3 title and tag variants, then edit them by hand. Fiverr requires meaningful human refinement.
7. **LanguageTool / Grammarly:** proofread.
8. After publishing, track impressions, clicks and conversion in **Fiverr seller Analytics** for 2-4 weeks before changing anything.

**Don't:** use rank-checker or scraper extensions or MCP servers against Fiverr (section 5).

### (b) Gig cover (gallery image) creation
1. Pick a proven layout with **Canva Free** (or Figma or Penpot for custom work).
2. Get assets: photos from **Pexels/Unsplash/Pixabay** (check the license rules in 3.5); icons from **Lucide/Tabler**; fonts from **Google Fonts**.
3. Use **Photopea** for PSD mockups (e.g., Mockup World files), or **Smartmockups/Canva** mockups to show deliverables on devices.
4. Cut out subjects with **rembg** (local, private) or **remove.bg** (free preview).
5. Upscale low-res client logos or screenshots with **Upscayl** (needs a GPU).
6. Export at Fiverr's current recommended size (verify on the Help Center; PK: 1280×769).
7. Keep every asset source and license in a "license log" sheet per gig. This protects you if a claim arrives.

### (c) Gig video
1. Write a 45-75 s script. Draft it in Claude or ChatGPT, then rewrite it in your own voice.
2. Record the screen with **OBS** (showing real dashboards or case studies, client data blurred) and the face with a phone.
3. Edit in **DaVinci Resolve** (full control) or **CapCut** (speed). Add B-roll from **Pexels/Mixkit** and music from **Pixabay/Mixkit**. Avoid CC BY-NC music.
4. Add captions with CapCut auto-captions, or **Whisper** locally for FR/EN accuracy.
5. Compress with **HandBrake** if you exceed Fiverr's size limit (verify limits).
6. Don't use AI avatars or cloned voices of real people without consent (Fiverr AI community standard).

### (d) Client onboarding (only after the order is placed)
1. The Fiverr order requirements (built in) collect the essentials.
2. Send a **Tally** (or Google Forms) questionnaire link inside the order chat: brand, goals, audience, competitors, asset uploads.
3. Request access through each platform's native sharing: Meta Business partner access, GA4/GSC user invites, Canva/Figma share links. **Never collect passwords.**
4. Offer a **Calendly/Cal.com** kickoff call if needed. Keep all agreements in the Fiverr order chat.
5. Open a **Trello/ClickUp** card from a template checklist and start **Clockify** tracking.
6. Create a **Google Drive** folder shared with the client for large files. Still deliver final files through Fiverr's delivery system, since that is what counts for order completion and disputes.

### (e) Delivery and reporting
- **SEO:**
  - Screaming Frog (≤500 URLs) plus PageSpeed Insights/Lighthouse for technical findings.
  - GSC for queries and indexing.
  - Ahrefs Webmaster Tools, if the client verifies the site.
- **Social:**
  - Meta Business Suite, Buffer or Metricool free for scheduling.
  - Canva for creatives.
- **Analytics and ads:**
  - GA4 plus Clarity.
  - Report in **Looker Studio** (free GA4 and GSC connectors).
- **Package:**
  - Put a summary PDF together with **Stirling PDF** or Google Docs.
  - Record a 3-5 min **Loom/Cap/OBS** walkthrough.
  - Deliver on Fiverr.
- **Bill:** use **Zoho Invoice** only for legitimate off-Fiverr clients, never for Fiverr buyers.

---

## 5. Risky or not recommended tools, and why

Evidence comes from READMEs fetched from GitHub. A GitHub search for "fiverr chrome extension" found 39 repos, and "fiverr scraper" found 60. Key READMEs were re-checked as raw text.

| Tool / type | Example (source) | What it does | Why DESORA should not use it |
|---|---|---|---|
| "Stay online" / online-status keepers | NadirAliOfficial/fiverr-pro-tools (S058): "Maintains active online status automatically"; installed only as an unpacked developer extension | Keeps you shown as "online" without you being there | Third-party reports say Fiverr's ToS "bans robots/scrapers", with escalation from "warnings → 60-day restriction → permanent suspension" (S119, T4; the official ToS couldn't be fetched). Faking availability misleads buyers. Unpacked extensions get no store review. |
| Auto-refresh "stealth" extensions | TharindaMarasingha/Refreshly (tags include "stealth"), asifulmamun auto-refresh "random time" (search results) | Reloads Fiverr pages on a timer | Same automation risk. The "stealth" and "random time" wording signals detection evasion. |
| Gig rank checkers that scrape Fiverr search | ALGOANHAF/fiverr-gig-rank-checker-pro (S059): sold for **$100 via Telegram**, "processes search result pages" | Automated scraping of Fiverr search | Scraping plus a closed, off-store sale channel with no permission disclosure. Credential and session hijack risk. Check ranking manually instead. |
| Restricted-word evaders | saidurrahmanmisket/Fiverr-Restricted-Words-Finder (S060, S138): replaces words like "pay" → "p-a-y" | Masks words that Fiverr's message filter flags | Fiverr's filters enforce the off-platform and payment policy. Deliberately evading them is exactly the behavior that gets accounts warned or banned. **Never use.** |
| Fiverr scrapers / MCP servers / Apify actors | KyuRish/fiverr-mcp-server (S062, S135) uses "curl_cffi for browser TLS fingerprint impersonation"; its README says "web scraping may violate Fiverr's Terms of Service". omar-elmaria/fiverr_scraper (S063) uses ScraperAPI to beat anti-bot. Multiple "Apify actor: fiverr-*-scraper" repos exist. | Harvest gig, seller and review data | Fiverr runs anti-bot protection (PerimeterX/HUMAN behind Cloudflare per S119). Bypassing it breaks ToS. Using it from the seller's own IP or account endangers the account. Do competitor research by hand. |
| Inbox / conversation exporters | royal-crisis/fiverr-conversation-extractor, rumman02/… (search results) | Bulk-export client chats and attachments | Needs broad access to your logged-in Fiverr session. Exports client personal data outside Fiverr, which is a privacy and data-protection risk. Use only Fiverr's own features. |
| AI gig autofill extensions | NadirAliOfficial/fiverr-ai-autofill "Fiverr Filla" (S061): only the `storage` permission, sends profile data to Groq, MIT license | Writes titles, tags, packages and FAQ with AI | **Low technical risk but a quality risk.** Output is generic unless edited, and Fiverr says generic AI output doesn't meet its standards. Prefer drafting in ChatGPT/Claude and editing by hand. |
| Any extension asking for your Fiverr password or "all sites" access | general | | Credential theft risk. Official extensions (Grammarly, LanguageTool) are acceptable. Unknown Fiverr "tools" are not. |
| pytrends and other unofficial Google Trends APIs | GeneralMills/pytrends (S052) | Programmatic Trends data | **Archived 2025-04-17**, unofficial, rate-limited (429s). Don't build on it. |
| Crypto (USDT) payout services | S094 | Alternative withdrawals | Moroccan legal and regulatory uncertainty (PK), irreversible network mistakes, not a Fiverr withdrawal method. |
| Remotion (for a company above 3 people) | S111 | Code-based video | Legal, but licensed. Needs a Company License once the for-profit has more than 3 employees. |
| Self-hosted Cal.diy for client bookings | S134 | Scheduling | The repo itself says "personal, non-production use". Use hosted Calendly or Cal.com. |
| Paraphrasing competitors' gig copy (QuillBot etc.) | S077 | | Still copying. Originality problems and possible reports. |
| Stock items under NC or attribution licenses used without compliance | S039 | | CC BY-NC music or images in client ads break the license. Freepik free items need attribution (PK). |
| Canva templates or elements delivered as "original logos" | S007 / PK | | Trademark and exclusivity limits in Canva's content license (PK; verify). Create logos from scratch in Figma, Illustrator or Inkscape. |

**Rule of thumb for the advisor:**
- If a tool automates anything *on fiverr.com* (clicking, refreshing, scraping, messaging, staying online), treat it as a ToS risk and say no.
- If it only helps you create things *off* Fiverr that you then upload by hand, it is generally fine, subject to license checks.

---

## 6. Free learning resources (with credibility notes)

| Resource | URL | What | Credibility | Checked |
|---|---|---|---|---|
| Fiverr Help Center | https://help.fiverr.com | Official policies (AI, community standards, levels, Seller Plus) | T1: the source of truth | S (S008-S025) |
| Fiverr Learn | https://learn.fiverr.com | Official courses, some free (PK) | T1, but **which courses are free was not verified** | not verified |
| Fiverr Community Forum | https://community.fiverr.com | Peer advice, staff posts | T3: mixed quality, lots of algorithm folklore | S |
| Coursera: "Fiverr Freelancing: Strategies To Become a Top-1% Freelancer" | https://www.coursera.org/learn/fiverr-freelancing | Third-party course | T2 platform, but the author is not Fiverr. Auditing may be free (PK). | S (S011) |
| Class Central Fiverr course index | https://www.classcentral.com/subject/fiverr | Directory of 70+ Fiverr courses (Udemy, Coursera, YouTube) | T2 aggregator. Course quality varies. Many Udemy "free" links are temporary coupons. | S (S012) |
| Google Skillshop | https://skillshop.withgoogle.com | Free GA4 and Google Ads certifications | T1 (PK) | not verified |
| Google Search Central docs | https://developers.google.com/search | Official SEO guidance | T1 | listed in S097 |
| Semrush Academy | https://www.semrush.com/academy | Free SEO/SEM courses | T2. A reviewer calls it a "great learning platform" | V2 S066 |
| HubSpot Academy / Meta Blueprint | academy.hubspot.com / facebook.com/business/learn | Free marketing and ads courses and certificates | T1/T2 (PK) | not verified |
| r/Fiverr, r/freelance | reddit.com/r/Fiverr, /r/freelance | Field reports: bans, policy changes, buyer behavior | T3. Useful for spotting enforcement trends. Verify against the Help Center. | listed in S095 |
| Double Your Freelancing | https://doubleyourfreelancing.com | Freelance business and pricing advice | T2/T3 (from the awesome-freelancing list, archived 2025-12) | S095 |
| free-for.dev | https://free-for.dev | Community-maintained list of free tiers (dev-leaning) | T2. Updated often, verbatim entries. Still verify on vendor pages. | S038 (raw-verified) |
| awesome-stock-resources | https://github.com/neutraltone/awesome-stock-resources | Huge list of free stock sources | T2. **Several license labels are outdated** (Pexels as CC0, Font Awesome as MIT, Lucide as MIT). | S039 |

**YouTube channels by credible top sellers:** not verified this session because search was unavailable. The advisor should not name specific creators as "credible" until someone checks them: seller level visible on Fiverr, channel age, and no promotion of ToS-violating tactics such as "stay-online" tools, fake reviews or off-platform payment.

---

## 7. Discrepancies found and cross-checks

1. **Clockify user limit.** free-for.dev (raw) says "Unlimited users, free forever". The SourceForge summary says "free for teams up to 5 users". Trust neither without checking clockify.me/pricing.
2. **Stock licenses are not CC0.** awesome-stock-resources lists Pexels under CC0. SourceForge/Pexels itself says "Pexels License". Unsplash and Pixabay also use custom licenses.
3. **Icon licenses mislabeled.**
   - Lucide: the list says MIT, but the official README and npm registry say **ISC**.
   - Font Awesome: the list says MIT, but the official LICENSE splits it into **CC BY 4.0 (icons) / OFL (fonts) / MIT (code)**.
4. **AI disclosure on Fiverr.** A third-party GitHub doc (S139) says AI content needs disclosure. The official Help Center snippet says disclosure is required **when the client asks for non-AI work** (or asks about workflow). Follow the Help Center.
5. **Summarizer fabrication.** A targeted WebFetch pass on free-for.dev produced invented limits (Figma "3 editor seats", Brevo "500 contacts", Mailchimp "1,000 emails/month"). The raw text shows Figma "max of 2 editors and three projects" and Brevo "9,000 emails/month, 300 emails/day"; the invented Mailchimp line does not exist. **Lesson for the advisor:** exact numbers need a first-hand source.
6. **Freepik rebrand.** SourceForge lists "Magnific, formerly Freepik". Verify before telling users the brand changed.
7. **Cal.com open-source repo** is now "Cal.diy", self-host only, and "recommended for personal, non-production use".
8. **Fiverr Go Personal Assistant** ends 2026-10-01 (Help Center snippet). Any advice that mentions it is stale.
9. **Grammarly** is listed as owned by "Superhuman" on SourceForge. The product name is unchanged.

---

## 8. Open questions (to verify when official pages are reachable)

1. **Fiverr Learn:** which courses and certifications are free in 2026? Is there still a free seller-onboarding course?
2. **Fiverr gig media specs** for 2026: gallery image size, video length and size, PDF limits.
3. **Seller Plus:** is there a free trial? Do the Kickstart/Standard/Premium prices apply in Morocco?
4. **Fiverr ToS wording** on automation, extensions and "stay online" tools: quote it directly from fiverr.com/legal-portal. It is currently cited only through T4 GitHub reports.
5. **Current free-tier limits** from official pages:
   - Canva Free (storage, background remover);
   - Figma Starter;
   - Loom Free (video length and count);
   - Buffer Free (channels and posts);
   - Metricool Free;
   - Semrush free (requests per day);
   - AnswerThePublic, AlsoAsked, Glimpse, Keyword Surfer;
   - Clipchamp free export resolution;
   - Trello free collaborator cap;
   - Toggl free user cap;
   - Hotjar;
   - Mailchimp.
6. **Stock licenses,** read in full from official pages: Pexels, Unsplash, Pixabay, Mixkit (per asset type), Freepik attribution rules, Canva content license (logo and trademark clause).
7. **CapCut 2025-2026 terms** on user-content licensing. Is it safe for confidential client footage?
8. **Money in Morocco:**
   - Wise availability for Moroccan residents;
   - PayPal receiving in Morocco;
   - Payoneer fees to Moroccan banks in 2026;
   - Fiverr's available withdrawal methods for MA sellers.
9. **Credible free YouTube channels and newsletters** from top Fiverr sellers, vetted as described in section 6.
10. **Perplexity and Gemini consumer free-tier limits** as of 2026.
