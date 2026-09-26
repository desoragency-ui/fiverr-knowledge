# Cluster 06: Client Communication, Inquiry-to-Order Sales, Delivery, Reviews & Repeat Business on Fiverr

> **Knowledge-base note (added 2026-09-26 during synthesis).** This is a raw research-cluster file. Where it conflicts with `../00-master-playbook.md`, the master playbook wins; the conflicts are resolved in its §3. Research limits: fiverr.com domains could not be fully read in this round, so [OFFICIAL] items here are search extracts. See `../README.md`.
>
> - Time-zone section and templates corrected to Morocco UTC+0 (since 20 Sep 2026).


**Prepared for:** DESORA (marketing agency in Morocco, selling on Fiverr). This is the knowledge base for the DESORA Fiverr-advisor subagent.
**Research date:** 2026-09-26
**Status:** v1, built under network restrictions. Read the next section before relying on it.

---

## 0. Research method, limits and how to read the tags

**Honest statement of limits.** This session's network policy blocked WebFetch for help.fiverr.com, community.fiverr.com, www.fiverr.com, blog.hubspot.com, gong.io, medium.com, wikipedia.org and reddit.com. Only github.com could be fetched. The shared WebSearch budget (200 calls across all agents) ran out after this agent's 26th search. As a result:
- Almost all Fiverr facts below come from **search-engine extracts of official Fiverr pages** (help.fiverr.com and Fiverr Community blogs written by Fiverr staff). The pages were not read end to end. Those sources are logged as `snippet`.
- 8 pages were fully fetched, all through GitHub: the Fiverr Terms of Service (archived copy, "Last Update: November 2020"), book notes on SPIN Selling and Never Split the Difference, a Challenger Sale summary, and several low-trust AI-generated Fiverr guides that were read to spot myths.
- A few general sales and linguistics points come from well-known published research that could not be re-fetched here (for example HBR 2011 on lead response). They carry the **[BACKGROUND]** tag and are lower confidence.

**Tags**
- **[OFFICIAL]**: stated by Fiverr, either in the Help Center, the ToS, or a Fiverr-staff community blog.
- **[OFFICIAL-2020]**: from the November 2020 ToS copy. Still the legal baseline, but details may be superseded; the doc notes where they are.
- **[CONSENSUS]**: 3 or more independent non-official sources agree.
- **[ANECDOTAL]**: 1 or 2 field reports.
- **[DISPUTED]**: sources conflict. Both sides and a verdict are given.
- **[BACKGROUND]**: established expert or published knowledge that was not re-verified in this session. Treat it as a strong hypothesis.

Source IDs (S1–S78) refer to `06-sources.tsv`.

---

## 1. Executive summary: the 22 most important insights, ranked

1. **Speed of the first reply is a ranking input and a conversion lever.** Fiverr measures **response rate**: the share of first replies to new messages sent within 24 hours, over the last 90 days. Only you can see it. It also measures **response time**: the average hours to reply, which buyers see. Fiverr says responsiveness "influences the traffic freelancers receive" and that buyers "often reach out to multiple freelancers at once". [OFFICIAL] (S1, S2) *Target an under-1-hour human reply during your buyers' business hours.*
2. **Keep everything on Fiverr: messages, files, calls and payment.** Sharing email addresses, phone numbers, WhatsApp, Discord, Skype or similar to move work off-platform is prohibited. Off-platform users lose Fiverr's protection. Personal information needed to do the job may be exchanged inside the Order Page. [OFFICIAL] (S7, S9, S10, S55)
3. **Cold messaging buyers is spam.** Fiverr's inbox exists for active orders and genuine project discussions. Cold messages promoting your Gigs, requests for free work, and automated or mass messages are not tolerated. [OFFICIAL] (S11, S55) Follow-ups inside a conversation the buyer started, about their project, are normal business. Promotional blasts to past buyers are not (see §9).
4. **Review manipulation is broadly defined and strictly enforced.** Fiverr prohibits: discounts, freebies or refunds in exchange for a positive review; asking a buyer to edit or remove a published review; making files, bonuses, discounts, delivery or refunds conditional on a rating; guilt or hardship appeals; and friends, family or fake accounts ordering to create reviews. [OFFICIAL] (S13, S12, S55) A neutral, no-pressure invitation to leave honest feedback is the safe form.
5. **Private ratings matter more than the stars buyers see.** About 24 hours after the public review, buyers are invited to an anonymous private review: 3 questions on delivery quality and on how well it met expectations. You never see it, and it feeds Client Satisfaction and the Success Score. A gig can show 4.9★ publicly and still have a low Success Score. [OFFICIAL] (S14, S40, S41) [ANECDOTAL] (S43, S72, S73)
6. **First-time Fiverr buyers and higher-priced orders weigh more in private ratings.** Give first-time buyers extra hand-holding, and never price above what you can deliver at premium quality. [OFFICIAL] (S41) [ANECDOTAL] (S43)
7. **Set expectations before the order.** Fiverr's own guidance on private ratings and revisions says the cause of low satisfaction and repeated revisions is usually mismatched expectations: an inflated portfolio, a vague package, or "aspirational" pricing. It is not usually bad work. [OFFICIAL] (S39, S41)
8. **Scattered revisions hurt the "conflict-free" metric. Clear revision limits and mid-order drafts reduce them.** A Fiverr Senior Success Manager (April 2026) says revisions, extensions and partial refunds are judged by their effect on overall satisfaction, so used well they help. Unmanaged revision loops hurt. [OFFICIAL] (S39, S42)
9. **Know the order clock.** The order stays *Incomplete* until requirements arrive, and you can "Skip requirements" to start. If requirements don't arrive and you don't skip, the order auto-cancels after 14 days. After delivery the buyer has 3 days to accept, request a revision, or extend the review period by up to 5 days; otherwise the order auto-completes (14 days for shipped gigs). [OFFICIAL] (S20, S21, S22, S78)
10. **Late becomes cancellable fast.** Once an order is Late, it turns *Very Late* 24 hours later. At that point the buyer can cancel without your approval, and that cancellation hurts your completion metrics. Freelancer-initiated cancellations also count against you. A cancellation by the buyer before requirements are submitted does not. [OFFICIAL] (S18, S19, S21)
11. **Answer every Resolution Center request within 48 hours.** Requests not accepted or declined within 48 hours are **automatically accepted**. Only the freelancer can request a delivery-date extension, up to 60 days per request, and the buyer can accept or decline it. [OFFICIAL] (S17, S18)
12. **Never press "Deliver" on unfinished work to stop the late clock.** The ToS says this may lead to cancellation, a hit to your rating, and a warning. [OFFICIAL-2020] (S55)
13. **Buyer Requests is gone; Briefs replaced it (phased out 2022–2023).** Briefs are matched by AI and sent to "only a few freelancers" whose services have a Success Score of 7 or higher. You have 72 hours to respond. You can ask questions first, and declining an irrelevant brief does not hurt you and improves future matching. Many sellers report few or no briefs in 2025–2026. Treat Briefs as a bonus channel. [OFFICIAL] (S4, S16) [CONSENSUS] (S34, S36, S47, S58, S59)
14. **Fiverr's AI Personal Assistant closed to new subscribers on 1 Sept 2026 and shuts down for everyone on 1 Oct 2026.** Fiverr says it is moving upmarket and wants direct communication between freelancer and buyer. Do not build DESORA's inquiry process on it. Built-in auto-replies and Quick Responses remain. [OFFICIAL] (S26, S28) [ANECDOTAL] (S27)
15. **Use Fiverr's built-in Zoom.** It is free, hosted and recorded by Fiverr (recordings kept 30 days). Pre-order calls run up to 30 minutes, for eligible sellers only. Post-order calls run up to 60 minutes. Handle the basics in chat first. Confirm the time in the buyer's timezone. [OFFICIAL] (S30, S31)
16. **Custom offers are the closing tool.** Build them from the inbox ("Create an offer"). They support a single payment, milestones or subscription (Briefs also support hourly), plus revision count and an optional expiry. With no expiry, the buyer can accept at any time. [OFFICIAL] (S33, S4, S67, S68, S69)
17. **Qualify before quoting and diagnose before pitching.** The SPIN research found that larger sales are won by developing problems into explicit needs through Implication and Need-payoff questions. Pushy closing techniques cut success in large sales (42% → 33% in one study). [BACKGROUND via fetched summary] (S49) For DESORA's $150+ packages, ask 2–4 sharp questions before you quote.
18. **Tactical empathy works in text too.** Label ("It sounds like the launch date is the real pressure here…"), use calibrated "What/How" questions, and ask no-oriented questions ("Would it be a bad idea to…?"). In chat there is no tone of voice, so warmth has to come from the wording. [BACKGROUND via fetched notes] (S50, S51)
19. **Don't discount straight away when a buyer pushes on price.** Trade scope, speed or package level instead of cutting price. Ask "What budget range were you working with?" and re-scope to fit it. [BACKGROUND] (S50, S51, S52)
20. **Tips: accept them, never ask.** Tips are allowed for 30 days after completion. The minimum is $5; orders under $25 can be tipped up to $25, and orders over $25 up to 100% of the order price. Fiverr advises freelancers not to ask for tips. [OFFICIAL] (S45)
21. **Repeat business comes from the end of the order.** Fiverr-staff content recommends a follow-up message after delivery and "thoughtful extra touches". Use subscriptions and milestones for recurring marketing work (monthly social media, ads management). [OFFICIAL] (S41, S48, S68, S69)
22. **Watch French false friends when writing English.** "Délai" means deadline or turnaround, not "delay". "Actuellement" means currently, not "actually". "Éventuellement" means possibly, not "eventually". These slips create real misunderstandings about deadlines. [BACKGROUND]

---

## 2. Platform rules that govern all communication

### 2.1 Off-platform contact and payments
- Sharing personal contact details (email, phone, Skype/IM usernames) **to communicate outside Fiverr to circumvent the platform** is not permitted. [OFFICIAL-2020] (S55, S56) This was reaffirmed in the 2025 Community Standards, which name WhatsApp and Discord explicitly. [OFFICIAL] (S7, S9, S10)
- Fiverr gives two reasons: it cannot review conversations that happened elsewhere, so it cannot help in a dispute, and off-platform deals raise the risk of fraud, scams and privacy breaches. [OFFICIAL] (S9, S10)
- "All information and file exchanges must be performed exclusively on Fiverr's platform." Any "necessary exchange of personal information required to continue a service may be exchanged within the Order Page". Example: a login needed to set up an ad account. [OFFICIAL-2020] (S55)
- Proposing to contract or be paid outside Fiverr with anyone introduced through Fiverr is prohibited. [OFFICIAL-2020] (S55)
- **Practical rule for DESORA:** keep every word, file, link and call inside Fiverr. If a buyer offers WhatsApp or email, decline politely (Template 9). Do not put DESORA's website, Instagram handle or email in messages, files, watermarks or delivery PDFs.
- **Automated keyword filters** [CONSENSUS-background, not verified this session]: sellers widely report that messages containing emails, phone numbers, or words like "WhatsApp", "Skype", "PayPal", "email me" or "pay outside" trigger a warning banner or a manual review. Fiverr does not publish a word list, and the "forbidden words" lists online are unofficial. The safe practice is to avoid those words even in innocent contexts: write "the Fiverr order page" instead of "email", and "via Fiverr" instead of naming a payment method. (S54 lists this as a critical risk; it is T4 but consistent with the official policy.)

### 2.2 Spam and unsolicited messages
- Fiverr defines spam as "messaging activity that is unwanted, repeatedly occurring, and disruptive". The inbox exists "to facilitate active orders and genuine project discussions". Cold-messaging users to promote your Gigs "is not tolerated". [OFFICIAL] (S11)
- The three spam categories are: unwanted offers or solicitations that drive traffic to a Fiverr page or external site; messages promoting services or asking for donations or free work; and automated mass messages or irrelevant inquiries. [OFFICIAL] (S11)
- The 2020 ToS language still frames the rule well: do not contact members "with offers, questions, suggestions or anything which is not directly related to their Gigs or orders". [OFFICIAL-2020] (S55)
- **Spam you receive:** report it within 24 hours and it does not count against your response rate. [OFFICIAL] (S11) You can also block users. [OFFICIAL] (S57)
- **Don't pressure past buyers about reviews or cancellations.** Spamming or soliciting past buyers to change reviews or cancel orders is prohibited. [OFFICIAL-2020] (S55)

### 2.3 Conduct and penalties
- Rude, abusive or improper language can lead to a warning or suspension, and so can discrimination. [OFFICIAL-2020] (S55)
- Warnings arrive by email and are shown on the site. They "do not limit account activity" on their own but can cost you your seller level or get the account disabled, depending on severity. [OFFICIAL-2020] (S55) Current enforcement details are in "Policy Violations Explained" and "How we enforce policies". [OFFICIAL] (S6)
- **Third-party automation is a risk.** Chrome extensions that auto-reply or keep you "online" (e.g., S64) are not Fiverr tools. Community reports and T4 guides say keep-online or refresh bots get accounts flagged. [ANECDOTAL] (S54) Verdict: avoid them. Use the official mobile app for fast replies.

---

## 3. Responding to inquiries

### 3.1 How the metrics work
| Metric | Definition | Who sees it | Window | Source |
|---|---|---|---|---|
| Response rate | % of **first** responses to new messages sent within 24 h | Freelancer only | Last 90 days | [OFFICIAL] S1 |
| Response time | Average hours to respond to a new message | **Buyers see it** | Rolling | [OFFICIAL] S1 |
| Spam exemption | Spam reported within 24 h doesn't hurt response rate | – | – | [OFFICIAL] S11 |

- Fiverr says responsiveness influences traffic. [OFFICIAL] (S1)
- **[BACKGROUND]** Most leveled tiers require a response rate of 90% or more (new level system, 2023). This was not re-verified in this session; cluster 04/metrics should confirm it.
- **[BACKGROUND]** Lead-response research (Oldroyd, McElheran & Elkington, HBR 2011, "The Short Life of Online Sales Leads") found that firms replying within an hour were about 7× more likely to qualify a lead than firms replying an hour later, and about 60× more likely than those replying after 24 hours. That research is on web leads, not Fiverr, but the direction matches Fiverr's own statement that buyers contact several sellers at once (S2).

### 3.2 Auto-replies and Quick Responses
- **Auto-reply:** a pre-written message sent automatically the **first time** a buyer contacts you. Use it to acknowledge the inquiry, set response-time expectations, or collect project details. [OFFICIAL] (S3)
- **Quick Responses:** saved message templates you insert by hand. [OFFICIAL] (S3)
- **[DISPUTED/UNVERIFIED] Does an auto-reply count as your "response" for response rate and time?** Many sellers believe it does not, and that only a manual reply counts. This could not be verified here. **Verdict:** use the auto-reply to hold the buyer's attention, and always send a human reply within the hour anyway.
- **Anti-pattern:** long, generic auto-replies that read like a bot ("Dear Sir/Madam, Thank you for contacting…"). Fiverr's Briefs guidance warns against generic templates (S5), and the same logic applies to the inbox. Keep auto-replies to 2–4 lines. Put the personalization in the human reply.

### 3.3 Structure of a winning first reply (DESORA framework: **A-M-Q-N**)
1. **Acknowledge and mirror.** Restate the buyer's goal in their own words, e.g. "You want more booked calls from Instagram, not just followers." This is Voss's mirror/summary move. It shows you read the message and invites a "that's right". [BACKGROUND] (S50, S51)
2. **Micro-proof.** One line of relevant evidence, such as a similar project or a result, never a paragraph about yourself. Fiverr's Briefs guidance asks for "relevant past experience" and "information that would help clients make a decision". [OFFICIAL] (S4)
3. **Qualifying questions.** Ask 2–4 targeted questions, not 10. SPIN research shows that too many Situation questions bore buyers. Prefer Problem and Implication questions. [BACKGROUND] (S49)
4. **Next step.** Propose one concrete step: "Once you answer these I'll send a custom offer within [X] hours", or "If it's easier, we can do a 15-minute Fiverr Zoom call". SPIN calls this an **Advance**, as opposed to a **Continuation** like "let me know". [BACKGROUND] (S49)

**Qualifying question bank for marketing services** (pick 2–4):
- Goal: "What result would make this project a clear win for you in 90 days (leads, sales, followers, awareness)?"
- Current state: "What have you already tried, and what happened?" (SPIN Problem)
- Implication: "What happens if this isn't fixed before [launch/season]?" (SPIN Implication)
- Constraints: "Is there a deadline or launch date we're working toward?"
- Budget, asked calibrated-style: "What budget range did you have in mind, so I can recommend the right package rather than guess?"
- Assets: "Do you have brand guidelines, logins or past content I'd need?" Credentials are shared in the order page only, after ordering.
- Decision: "Is anyone else involved in approving the work?" (Voss "behind-the-table players") [BACKGROUND] (S50)

### 3.4 Mirroring the buyer's language
- Use the buyer's own nouns ("reels", not "short-form video assets") and match their register. A formal buyer gets full sentences; a casual buyer gets a lighter tone but still correct grammar. [BACKGROUND] (S50, S51)
- Match message length. A 2-line inquiry does not deserve a 400-word reply. Answer briefly, then ask one or two questions.

### 3.5 Buyer types (Voss styles adapted to Fiverr chat) [BACKGROUND] (S51)
| Style | Chat signals | How to respond |
|---|---|---|
| Analyst | Long spec, numbered questions, asks "how exactly" | Answer point by point with data and process. Give them time. No pressure deadlines. |
| Accommodator | Friendly, chatty, "no rush" | Build rapport, then **pin down specifics** in writing. They agree too easily and discover issues later. |
| Assertive | Short, blunt, "price? how fast?" | Answer the price and timeline first, in 3 lines. Offer options. Be efficient. |

---

## 4. Converting messages into orders

### 4.1 Consultative selling adapted to Fiverr
- **SPIN in chat** [BACKGROUND] (S49):
  - Situation: keep to a minimum; read their gig brief or website first.
  - Problem: "What's not working with the current ads?"
  - Implication: "How is the low ROAS affecting your stock or cash-flow planning?"
  - Need-payoff: "If we cut your cost per lead by a third, what would that free up?"
  - Buyers who state the benefit themselves persuade themselves. In the research, top performers asked more than 10× as many Need-payoff questions.
  - **Caveat:** the SPIN data comes from large B2B sales. Fiverr orders under $100 are closer to "small sales", where brief, direct answers and a clear package win. Use full SPIN only on higher-ticket custom work.
- **Challenger "Teach-Tailor-Take control"** [BACKGROUND] (S52): share one insight the buyer didn't know ("Most small brands post daily but never test the hook; the first 2 seconds decide 80% of reach…"). Tailor it to their role. Take control of the process kindly: "I could just send a price, but I've seen quotes without a 10-minute scope check lead to rework. Can I ask three quick questions first?"
  - *Critical note:* the claim that 39% of top performers are Challengers comes from CEB's B2B study. It does not transfer directly to marketplaces. Borrow the "teach, then recommend" posture, not the confrontational edge.
- **Proposing commitment beats "closing".** SPIN's four steps are: investigate; check for remaining concerns ("Is there anything else you'd like me to clarify before I send the offer?"); summarize benefits; and propose the logical next step. [BACKGROUND] (S49)

### 4.2 Custom offers: mechanics and writing
- Mechanics: in the conversation, choose Create an offer, select the Gig, choose the order type (single payment, subscription or milestones), pick a package or customize it, then set an optional expiry and revision count. [OFFICIAL] (S33)
- Briefs responses additionally support hourly. [OFFICIAL] (S4, S67)
- Use **milestones** for multi-phase projects such as a brand strategy → content → ads launch. [OFFICIAL] (S69)
  - [OFFICIAL-2020] Under the 2020 ToS, a milestone auto-completes 8 days after delivery if there is no response, and then the order **stops**. The buyer must fund the next milestone within 10 days of accepting the previous one. Re-check the current values.
- Use **subscriptions** for recurring retainers, e.g. monthly social media management. [OFFICIAL] (S68)
- **Offer structure (scope-proof):** outcome in one sentence → deliverables list (quantities, formats) → what's NOT included → timeline → revisions (number and definition) → what you need from the buyer to start. This is the best defense against scope creep. [ANECDOTAL] (S53, S54) [OFFICIAL, principle] (S39)
- **Expiry:** optional. Without one, the buyer can accept at any time. [OFFICIAL] (S33) Use a short but real expiry (3–7 days) tied to your capacity. Do not use a fake scarcity countdown. [BACKGROUND] (S49: pressure-based closing lowers satisfaction in large sales)
- **Request to Order** (Seller Plus Premium only): buyers must request, and the seller approves before any order starts. Useful for DESORA to prevent mismatched package purchases. [OFFICIAL] (S24, S25)

### 4.3 Handling price objections [BACKGROUND] (S50, S51, S52)
Principles:
1. **Label first, then ask:** "It sounds like the budget is tighter than the package I suggested." Then stay quiet and let them explain.
2. **Get their range:** "What range were you working with?" Voss advises letting the other side anchor when you lack information (S50).
3. **Trade, don't cave.** Keep the price and change the scope: fewer posts, no ad management, a longer timeline, or the Basic package. Dropping the price straight away tells the buyer the original number was inflated.
4. **Reframe to cost of inaction** (loss aversion): "Running ads without tracking usually costs more in wasted spend than the setup fee."
5. **Precise numbers feel calculated** (S50, S51): $185 reads as "costed out"; $200 reads as negotiable. This is mild and not proven on Fiverr [BACKGROUND].
6. **Walk away gracefully** from buyers whose budget doesn't fit even your smallest scope. Low-budget, high-demand buyers drive revisions, low private ratings and cancellations, which Fiverr's own guidance links to expectation mismatch (S41). This is a *judgment*, not a rule.

### 4.4 Follow-ups ("just checking")
- **What's allowed:** following up within an **existing conversation the buyer started**, about **their** project. That is "directly related to their Gigs or orders". [OFFICIAL-2020 principle] (S55)
- **What's risky:** repeated follow-ups (Fiverr's spam definition includes "repeatedly occurring"), generic promotional messages, or messaging buyers who never contacted you. [OFFICIAL] (S11)
- **DESORA rule:** one value-adding follow-up 24–48 hours after sending an offer. Optionally a final "close the loop" message 5–7 days later. Then stop.
- Use a **no-oriented** question (Voss): "Have you decided to put this project on hold for now?" People find it easier to answer "No, I'm just busy" than to say yes to a push. [BACKGROUND] (S51) Cross-cultural caution: the blunt "Have you given up on this project?" can read as rude. Use the softer version.

### 4.5 Fiverr Zoom and consultations
- **Free built-in Zoom** [OFFICIAL] (S30, S31):
  - Start it from the inbox video icon.
  - Pre-order calls last up to **30 minutes**; post-order calls up to **1 hour**.
  - Calls are recorded and **kept 30 days**, and Fiverr covers the cost.
- **Who can start a call** [OFFICIAL] (S30, S31): every seller can call once an order exists. Pre-order calls from the inbox are limited to eligible sellers. Per the help-center extract, leveled freelancers need an **average selling price ≥ $50 and at least 1 order in the past 60 days**, and any freelancer can start a call with Fiverr Pro or Select clients. (The eligibility wording in the extract was slightly ambiguous; check it in the product.)
- Best practice [OFFICIAL] (S30, S31):
  - Confirm availability and timezone before creating the meeting.
  - Handle the basics in chat so the 30 minutes go on diagnosis and fit.
  - Send a written recap afterwards; Voss's "rule of three" is to confirm agreement in writing (S51).
- **Paid video consultations** [OFFICIAL] (S32, S65):
  - Available to Level 2, Top Rated and Pro sellers, in 30- or 60-minute slots at prices you set.
  - Needs a Google or Microsoft calendar (not iCloud). Web only.
  - Treated like a Gig for reviews, cancellations and refunds.
  - DESORA idea: a paid "Marketing audit call" that credits toward the main project.
- Community experience: sellers report that calls raise conversion for high-ticket or complex work [ANECDOTAL] (S38, S70, S71). No Fiverr data was found.

---

## 5. Fiverr Briefs (Buyer Requests replacement)

- **Buyer Requests is deprecated.** It was phased out across 2022–2023 and replaced by Briefs. [CONSENSUS] (S34, S58, S59, S60) No official reinstatement has been seen.
- **How Briefs work (2025–2026):**
  - The buyer posts a structured brief (service, budget range, timeline, details), with AI help. Fiverr then shortlists matching freelancers. [OFFICIAL] (S16)
  - Briefs are matched to your expertise, pricing and profession, and go only to **services with a Success Score of 7 or higher**. You are "one of only a few freelancers" who receive each brief. [OFFICIAL] (S4)
  - **72 hours** to respond, with a notification sent. [OFFICIAL] (S4)
  - You can **"Ask questions"** before you make an offer. [OFFICIAL] (S4)
  - **Declining irrelevant briefs doesn't hurt you** and improves matching. [OFFICIAL] (S4, S5)
  - Offers can be single payment, subscription, milestones or hourly. Track them in "Responses sent"; you get an email when a buyer accepts. [OFFICIAL] (S4)
  - Write a personalized intro plus a custom offer, and avoid generic templates. [OFFICIAL] (S4, S5)
- **Volume reality:**
  - Many sellers in 2024–2026 report few or no briefs. [CONSENSUS] (S36, S47, S61, S77)
  - Some find them low-budget or poorly matched (S35).
  - An August 2026 thread asked whether briefs were discontinued (S36). No official discontinuation was found. **Verdict:** the feature is live, but volume is unpredictable. Keep a strong Success Score (≥7) to stay eligible, and never rely on Briefs as the main pipeline.
- **"Enable briefs as a new seller" threads** (S77) suggest there is no toggle that guarantees briefs. Eligibility is driven by the Success Score and matching.

---

## 6. Order lifecycle: kickoff to completion

### 6.1 Official timings
| Stage | Rule | Source |
|---|---|---|
| Order placed, requirements missing | Status *Incomplete*, shows "Requirements Needed" | [OFFICIAL] S20, S21 |
| Seller has enough info | "Skip requirements" moves the order to *In Progress* | [OFFICIAL] S20 |
| Requirements never submitted | Auto-cancel after **14 days** from order creation, unless you skip them | [OFFICIAL] S20, S21 |
| Delivery made | Buyer has **3 days** to accept, request revision, or extend review | [OFFICIAL] S21, S22 |
| Review-period extension | Buyer can extend by up to **5 days** (no re-delivery needed) | [OFFICIAL] S22, S78 |
| No buyer action | Auto-complete after **3 days** (14 for shipping gigs) | [OFFICIAL] S21, S22 |
| Revision requested | Order status changes; seller must re-deliver | [OFFICIAL] S22 |
| Due date passed | *Late* | [OFFICIAL] S19 |
| 24 h after Late | *Very Late*: buyer can cancel **without seller approval** | [OFFICIAL] S19, S21 |
| Very late and undelivered | Must deliver within 30 days of the order, or it auto-cancels | [OFFICIAL] S19 |
| Resolution Center request | **48 h** to respond, otherwise auto-accepted | [OFFICIAL] S17, S18 |
| Delivery extension | Freelancer only; up to **60 days** per request; buyer accepts or declines | [OFFICIAL] S17 |
| Public review window | **14 days** after completion (most categories) | [OFFICIAL] S14 |
| Private review | Invitation ~**24 h** after completion/public review | [OFFICIAL] S14, S40 |
| Tip window | **30 days** after completion | [OFFICIAL] S45 |

**Outdated values to ignore:** the Nov 2020 ToS gives a **10-day** review window (S55). The current Help Center says 14 days (S14). [DISPUTED → verdict: 14 days is current]

### 6.2 Kickoff message (first 1–2 hours after an order)
1. Thank them, and confirm the package and delivery date **in the buyer's timezone**.
2. Summarize what you understood in 3 bullets. This is Voss's "that's right" test (S50).
3. List any missing inputs, each with a deadline.
4. Say when their next update will come.
- Fiverr staff recommend periodic check-ins and rough drafts during the order, so there is time to adjust before final delivery. [OFFICIAL] (S39, S41)

### 6.3 Requirements clarification
- Put the must-have questions in the **Gig requirements form** so the order can't start without them. Ask anything else in the order page.
- Skipping requirements starts the clock. Only do it when you truly have enough information. [OFFICIAL] (S20)

### 6.4 Scope creep
- **Prevention:** an explicit deliverables list, exclusions, and a precise revision definition in the package or custom offer. [OFFICIAL principle] (S39) [ANECDOTAL] (S53, S54)
- **Response:** acknowledge → state what's in scope → offer the add-on as a Gig Extra or a separate custom offer → let the buyer choose. Never refuse in a way that sounds punitive; that feeds low private ratings. Never hold back the in-scope deliverable to force an upsell. The ToS prohibits "withholding the delivery of services, files, or information required to complete the Gig's service with the intent to gain favorable reviews or additional services". [OFFICIAL-2020] (S55)

### 6.5 Progress updates
- Send one at a natural midpoint (for example day 2 of a 5-day order): what's done, what's next, any decision needed.
- Share drafts early for subjective work such as brand visuals, captions and ad creatives. [OFFICIAL] (S39)
- **Silence plus a surprise at delivery is the main cause of revision loops.** Fiverr's staff guidance treats scattered revisions as friction that hurts conflict-free. [OFFICIAL] (S39, S42)

### 6.6 Extensions and late deliveries
- If a delay is likely, request an extension **before** the due date, with a reason and a new date. Only freelancers can request, up to 60 days, and the buyer decides. [OFFICIAL] (S17)
- If the buyer declines, deliver what you can on time, or discuss options honestly.
- **Never** use the Deliver button for incomplete work (it can mean cancellation and a warning). [OFFICIAL-2020] (S55)
- If you're already Late, apologize once, give an exact delivery time, and deliver. Very Late lets the buyer cancel without your approval. [OFFICIAL] (S19)

### 6.7 Delivery message structure
1. **What** was delivered: a list of files, versions and formats.
2. **How to use it:** where each file goes, a short Loom-style walkthrough uploaded as a video file, and specs.
3. **Decisions and rationale:** 2–3 bullets on why the key choices were made (Challenger "teach"). [BACKGROUND] (S52)
4. **Next steps:** what to do in the first 7 days, and what to measure.
5. **Revision path:** "If anything needs adjusting, use Request Revision and list the changes in one message."
6. **Soft, neutral feedback invitation** that is allowed (§7.2).
- Upload deliverables to the Fiverr delivery. External links such as Google Drive may be needed for large files, but files uploaded to Fiverr are what Fiverr can verify in a dispute, and the ToS wants file exchange on-platform. [OFFICIAL-2020] (S55)

### 6.8 Revisions management
- Revision requests can be made only while the order is Delivered. The 2020 ToS frames them as for work that doesn't match the Gig description or the requirements sent at the start. [OFFICIAL-2020] (S55) That is the basis for a **fair-use revision policy**: revisions fix what was agreed; new requests are new scope.
- Offer a clear revision count in packages. Unlimited revisions invite endless loops. [OFFICIAL] (S39)
- **Batch revisions:** ask buyers to send all changes in one list, which cuts down scattered requests. [OFFICIAL principle] (S39)
- Will a single revision request hurt your Success Score? Community opinion is split (S66). Fiverr staff say revisions are judged by their effect on satisfaction and that scattered revision requests are the problem (S39). **Verdict:** one clean revision round is normal. Repeated rejections indicate an expectations problem.

---

## 7. Reviews, feedback and the Success Score

### 7.1 How reviews work now
- Both sides have **14 days** after completion to leave a public review (most categories). [OFFICIAL] (S14)
- You can publicly reply to the buyer's review once both reviews are published. [OFFICIAL] (S14)
- The **private review** is anonymous and never shown to you. It is used for internal quality measurement and focuses on the quality of the delivery and how well it matched expectations (3 questions). [OFFICIAL] (S14, S40)
- Reviews are removed only for clear violations of the ToS or Community Standards (S55, S13). A bad review you disagree with generally stays.
- Success Score components, per non-official sources, include client satisfaction (private ratings), communication, order quality or conflict-free orders, delivery time and revision handling. [ANECDOTAL] (S43, S44, S62, S63) The official article (S46) could not be read in full. **Treat the exact component list as unverified.** What *is* confirmed: private ratings drive Client Satisfaction; conflict-free orders is a metric; first-time buyers and higher-priced orders weigh more. [OFFICIAL] (S40, S41, S42)

### 7.2 Asking for reviews: allowed vs prohibited
| ✅ Generally safe | ❌ Prohibited or high-risk |
|---|---|
| Neutral invitation after delivery: "Your honest feedback helps me improve and helps other clients decide." | Offering a discount, freebie, bonus or refund in exchange for a positive review [OFFICIAL] S13 |
| Explaining how to leave feedback on the order page (for first-time buyers) | Making files, delivery, bonus content or future discounts conditional on a rating [OFFICIAL] S13, S55 |
| Thanking buyers for reviews | Asking a buyer to edit, change or remove a published review [OFFICIAL] S13 |
| Asking, *before* completion, whether anything should be adjusted | Guilt, hardship or emotional appeals ("my account will be ruined…") [OFFICIAL] S13 |
| | Friends, family or extra accounts ordering to create reviews (permanent suspension) [OFFICIAL] S13, S55 |
| | Proposing mutual cancellation to remove a bad review [OFFICIAL-2020] S55 |
| | Repeated "please review" messages after completion (spam risk) [OFFICIAL] S11 |

**[DISPUTED] Explicitly asking for "5 stars".** No official source extract shows a word-for-word ban on asking for "5 stars". But Fiverr defines manipulation as any attempt to "artificially influence" a review "through pressure, coercion, incentives…" (S13), and asking for a specific rating outcome sits close to that line. **Verdict:** never ask for a specific rating. Ask for "honest feedback".

### 7.3 Responding to negative reviews publicly
- Your reply is written for **future buyers**, not to win the argument. It should be calm and specific, and show your process.
- Formula: thank → acknowledge their experience without admitting to false claims → one factual line of context → what you do or changed → end on a positive note. Voss: "Empathy is not agreement." [BACKGROUND] (S51)
- Never reveal the buyer's private details or files. Never insult. Never ask for removal (that is prohibited, S13).
- Fiverr describes the reply as a way to "share your perspective, clarify details, and show potential clients how you handle challenges". [OFFICIAL] (S14)

### 7.4 Protecting private ratings
- Set expectations honestly before the order:
  - Portfolio must match your price point.
  - Don't over-claim expertise.
  - Price "strategically, not aspirationally".
  [OFFICIAL] (S41)
- During the order: clear language, no jargon, fast answers, drafts. [OFFICIAL] (S41)
- After the order: a follow-up message and thoughtful extras, where the extras are *never* tied to reviews. [OFFICIAL] (S41)
- Extra care for first-time Fiverr buyers, whose ratings weigh more (S41): explain the order page, the revision button and how completion works.

---

## 8. Difficult buyers, disputes and cancellations

### 8.1 Resolution Center etiquette
- Fiverr encourages both parties to settle conflicts themselves first, then use the Resolution Center, then Customer Support. [OFFICIAL-2020] (S55) [OFFICIAL] (S17)
- Respond to every request within **48 hours**; unanswered requests are auto-accepted. [OFFICIAL] (S17)
- Before opening a request, message the buyer first. Keep messages factual. Quote the agreed scope from the offer or requirements.
- Cancellation impact:
  - Buyer cancels before submitting requirements: no effect on your completion rate.
  - Seller-initiated cancellations and Very Late forced cancellations: they count against you. [OFFICIAL] (S18)
- **Cancel only when the fit is truly wrong.** The ToS says sellers "may not cancel orders on a regular basis or without cause". [OFFICIAL-2020] (S55)

### 8.2 Difficult-buyer decision tree
```
Buyer unhappy / conflict
├─ Is it a quality or expectation gap within agreed scope?
│   ├─ YES → Label emotion ("It sounds like the tone isn't what you pictured") → ask 1–2 calibrated Qs
│   │        ("What would make this feel right for your brand?") → propose a specific fix + date → re-deliver.
│   └─ NO (new scope) → Acknowledge → quote original scope → offer add-on via custom offer/extra (never withhold in-scope files).
├─ Is the buyer abusive (insults, threats, discrimination)?
│   ├─ Set one calm boundary message (Template 20) → keep the facts in the order page
│   └─ If it continues → Report via Fiverr (Report an issue / Customer Support); block if not in active order (S57, S12). Don't retaliate.
├─ Is the buyer asking to go off-platform / free work / review-for-discount?
│   └─ Decline politely, cite "Fiverr's policies", keep chatting on Fiverr (Templates 8, 9). Report if repeated.
├─ Is the order unsalvageable (wrong fit, impossible deadline, missing inputs)?
│   ├─ Deadline issue → Request extension BEFORE due date (S17)
│   └─ Fit issue → propose a mutual cancellation respectfully (Template 21), no review talk; respond to RC within 48h
└─ Buyer silent after delivery?
    └─ One friendly nudge; auto-completion after 3 days handles the rest (S21). Do NOT chase for reviews.
```

### 8.3 De-escalation techniques in text [BACKGROUND] (S50, S51)
- **Accusation audit:** name their likely objection before they say it. "You may feel this took longer than it should have, and that the first draft missed the mark."
- **Labeling plus silence:** in chat, silence means sending the label plus one question and then *waiting*, rather than sending three more messages.
- **Calibrated questions instead of "no":** "How am I supposed to deliver 30 posts within the 10-post package budget?"
- **Remove "fair" as a weapon in advance:** "I want you to feel this is completely fair; if at any point it doesn't, tell me."
- **Myth warning:** the "7-38-55 rule" (words 7%, tone 38%, body 55%) is often quoted in negotiation summaries (S50, S51). It is widely considered a misapplication of Mehrabian's narrow experiments on inconsistent emotional messages [BACKGROUND]. **On Fiverr chat, words are 100% of the channel**, so wording, formatting and response speed carry all the tone.

---

## 9. Repeat business

- **Official guidance:** a follow-up message after completion, personalized communication and thoughtful extra touches. There is also a Fiverr-staff guide on improving your repeat buyer rate (S48). [OFFICIAL] (S41, S48)
- **Allowed mechanics:**
  - Buyers can reorder directly.
  - Custom offers can be sent in an existing conversation.
  - Subscriptions (S68) and milestones (S69) suit ongoing marketing work.
  - Tips are allowed but never requested (S45).
  - Buyers can save sellers and gigs, but sellers cannot message people based on that.
- **Boundary:** a **single, relevant, personalized** check-in in the existing thread, tied to their past order, is "directly related to their orders". Examples: "The campaign we set up launches next week — want me to draft the next month's content?", or "It's been 30 days since the launch — here's what to look at in your ads dashboard". Mass promotional messages to past buyers ("20% off Black Friday!") match Fiverr's spam definition. [OFFICIAL basis] (S11, S55) [Verdict: judgment call, keep it rare and specific]
- **DESORA repeat-business system:**
  1. At delivery, include a "next 30 days" plan. This creates a natural next project without a hard sell.
  2. For retainer-type services, propose a subscription at delivery of the first order.
  3. Log every buyer in a private CRM (in-house, no buyer contact info taken off Fiverr): order date, service, natural next step, check-in date.
  4. Send one check-in 21–30 days after completion if there is a natural next step. Otherwise don't.
  5. Returning buyers get priority response and a named account lead.
- **[BACKGROUND] Relationship caution:** Challenger research argues that relationship-building alone underperforms (S52). What makes buyers come back is *insight and results*, not friendliness.

---

## 10. Cultural, timezone and non-native English communication

### 10.1 Timezones [BACKGROUND]
- **Corrected 2026-09-26:** Morocco moved to **UTC+0 with no DST on 20 Sep 2026** (Decree 2.26.530; IANA tz database). Relative to Morocco:
  - US Eastern is 4 h behind (summer) / 5 h behind (winter).
  - US Pacific is 7 h / 8 h behind.
  - The UK is the same clock in winter and 1 h ahead in summer.
  - Paris/Madrid/Brussels are 1 h ahead in winter and 2 h ahead in summer.
  - The Gulf (UAE) is 4 h ahead.
  Check each date with a converter.
- Implications:
  - US buyers message in DESORA's late afternoon and evening. A rotating afternoon/evening shift (roughly 14:00–22:00 Morocco time) protects response time for US traffic.
  - Always state deadlines in the buyer's timezone, or use Fiverr's order due date/time, which the platform shows each party.
  - Fiverr's Zoom guidance explicitly says to account for time zones before scheduling. [OFFICIAL] (S30)

### 10.2 Writing clear English as a non-native seller [BACKGROUND]
- Short sentences (15–20 words). One idea per line. Bullets for lists. Bold only for key dates and prices.
- Avoid stock phrases that read as templated or foreign: "Dear Sir/Ma'am", "Hello dear", "Kindly do the needful", "Revert back", "I will do [X] for you" (gig-title speak), "Greetings of the day". Use "Hi [Name]," and "Thanks," instead.
- Emojis: at most one, and only if the buyer uses them.
- **French false friends** (for a Moroccan team whose working language is French):
  - délai = deadline or turnaround. Say "timeline", not "delay". "Delay" means lateness in English.
  - actuellement = currently, not "actually".
  - éventuellement = possibly, not "eventually".
  - préciser = specify.
  - assister = attend.
  - sensible = sensitive.
  - formation = training.
  - "I propose you" → "I suggest".
  - "Normally it's done" → "It should be done".
- Darija and French directness can read as abrupt in US-English when softeners are missing. Add "Could you…", "Would it help if…", "Just to confirm…".
- Use a grammar checker on every custom offer, delivery message and public review reply (see §13).
- **AI drafting caution:** Fiverr's Briefs guidance warns against generic templates (S5). AI-written messages that ignore the buyer's specifics read as spam. Use AI for grammar, not for the content of the message.

### 10.3 Cultural cues [BACKGROUND]
- US and UK buyers expect directness about price and timeline, with friendliness.
- Gulf buyers often value relationship and respect signals, and may negotiate more.
- Germans and the Dutch value precision and literal commitments. "Tomorrow" means tomorrow.
- Holidays: Ramadan and Eid in Morocco affect capacity. Communicate any away period in advance, using Fiverr's availability setting.

---

## 11. Myths vs reality

| # | Myth | Reality | Evidence |
|---|---|---|---|
| 1 | "New sellers get orders from Buyer Requests." | Buyer Requests was removed in 2022–23. Briefs are AI-matched, need a Success Score ≥ 7, and volume is unreliable. | [OFFICIAL] S4; [CONSENSUS] S34, S58, S59 |
| 2 | "A 5★ average means buyers are satisfied." | Private ratings can differ sharply and they drive the Success Score. | [OFFICIAL] S40, S41; [ANECDOTAL] S72, S73 |
| 3 | "Asking for reviews is forbidden." | Neutral invitations are fine. Incentives, conditions, pressure and requests to edit or remove are prohibited. | [OFFICIAL] S13 |
| 4 | "If I fix the issue, I can ask the buyer to update their review." | Asking to edit or remove a published review is prohibited. | [OFFICIAL] S13 |
| 5 | "Mutual cancellation is a clean way to erase a bad review." | Soliciting review removal through cancellation is prohibited, and cancellations hurt completion metrics. | [OFFICIAL-2020] S55; [OFFICIAL] S18 |
| 6 | "Hit Deliver early to stop the late timer." | It can lead to cancellation, a rating hit and a warning. | [OFFICIAL-2020] S55 |
| 7 | "Unlimited revisions sell more." | They invite scattered revisions that hurt conflict-free. Fiverr staff recommend clear revision limits. | [OFFICIAL] S39 |
| 8 | "Any revision request damages my Success Score." | Revisions are judged by their effect on satisfaction. One clean round is normal. | [OFFICIAL] S39; [DISPUTED] S66 |
| 9 | "The buyer has 10 days to review." | 14 days in most categories (current Help Center). 10 days was the 2020 ToS. | [OFFICIAL] S14 vs S55 |
| 10 | "If I ignore a cancellation request it can't go through." | It is auto-accepted after 48 hours. | [OFFICIAL] S17 |
| 11 | "Late orders can't be cancelled while I'm working." | From Very Late (24 h after Late), the buyer can cancel without your approval. | [OFFICIAL] S19 |
| 12 | "Fiverr's AI assistant can answer my inquiries." | Personal Assistant shuts down 1 Oct 2026 (closed to new subscribers since 1 Sept 2026). | [OFFICIAL] S26, S28 |
| 13 | "A buyer asked for WhatsApp, so it's allowed." | It's prohibited regardless of who asks, and you lose Fiverr protection. | [OFFICIAL] S7, S10, S55 |
| 14 | "Politely asking for a tip is fine." | Fiverr advises freelancers not to ask. | [OFFICIAL] S45 |
| 15 | "Staying online 24/7 with refresh tools boosts ranking." | These are third-party automation risks. Response speed matters, not "online" status. | [ANECDOTAL] S54, S64 |
| 16 | "7-38-55: words barely matter." | That's a misapplied study. In chat, words are the whole message. | [BACKGROUND] |
| 17 | "Auto-replies count as your response." | Unverified. Send a human reply within the hour anyway. | [DISPUTED/UNVERIFIED] S3 |
| 18 | "AI-generated 'research packs' on GitHub or blogs are reliable." | Some cite fabricated sources: S54 lists YouTube URLs like `watch?v=fiverr_seo_guide_2025` that are clearly invented, and gives a "600-word" bio limit (Fiverr's limit is in characters [BACKGROUND]). | [T4 reviewed] S53, S54 |

---

## 12. Playbooks

### 12.1 Inquiry response framework (A-M-Q-N) SOP
1. **0–15 minutes:** the auto-reply fires (2–4 lines: thanks, when a human will reply, 2 prep questions).
2. **Under 60 minutes during buyer hours:** human reply:
   - Acknowledge and mirror the goal.
   - Micro-proof.
   - 2–4 qualifying questions.
   - One Advance (offer a quote once answered, or a Zoom call).
3. **After the answers:** send a custom offer with outcome, deliverables, exclusions, timeline, revisions, inputs needed, and a 3–7 day expiry.
4. **24–48 hours of silence:** one follow-up with one new piece of value or one clarifying question.
5. **5–7 days of silence:** a close-the-loop message with a no-oriented question. Then stop.
6. **Log it:** inquiry source (search, Brief, repeat), outcome, and the reason for any loss (price, timing, fit, no reply).

### 12.2 Objection-handling bank
| Objection | Move | Script (adapt) |
|---|---|---|
| "Too expensive" | Label → range → re-scope | "It sounds like this is more than you planned for. What range were you working with? I can shape a version that fits it — for example 8 posts instead of 15 — so you still get results you can measure." |
| "X seller does it for $20" | Don't bash. Reframe to risk and outcome | "That's a fair comparison to make. The difference is [strategy/targeting/reporting]. If a cheaper option works for you, no problem. If the goal is [their KPI], this is what I'd need to include to hit it." |
| "Can you do a free sample?" | Decline, offer a paid starter | "I don't do free samples, but you can start with the Basic package, a small paid test with full revisions, and upgrade once you're happy." |
| "I need it tomorrow" | Calibrated Q + trade-off | "How flexible is that date? I can deliver [reduced scope] by tomorrow, or the full package by [date]." |
| "Let me think about it" | No-oriented Q | "Of course. Would it be unreasonable to ask what's holding you back, the price, the timeline, or the approach?" |
| "Discount if I give you 5 stars?" / "Discount for a review" | Decline per policy | "Thanks for offering! Fiverr doesn't allow reviews to be linked to pricing, so I'll keep the price as quoted. Your honest feedback at the end is always welcome." |
| "Can we talk on WhatsApp?" | Decline, offer Fiverr Zoom | Template 9 |
| "I'll give you lots of work later, so do this one cheap" | Label + protect the anchor | "I appreciate that, and I'd love to work together long term. Let's start at the standard rate. If we move to a monthly plan, I can offer a better per-unit rate through a subscription." |
| "Just send the price" | Challenger take-control, gently | "Happy to. So the price is accurate rather than a guess, can you tell me [1 key question]? It takes 30 seconds and avoids surprises for you later." |

### 12.3 Order lifecycle SOP (DESORA)
| When | Action |
|---|---|
| T+0 (order in) | Kickoff message within 2 h. If requirements are missing, list them. Skip requirements only when you have enough to start. |
| T+24 h, no requirements | Friendly reminder. Offer a 10-minute Zoom to gather them. (Auto-cancel happens at 14 days; S20.) |
| ~40–50% of timeline | Progress update plus draft or direction check for subjective work. |
| Risk of slipping | Extension request **before** the due date (S17). |
| Delivery | Delivery message per §6.7. Files uploaded to Fiverr. |
| Revision request | Acknowledge within 2 h. Confirm the list of changes. Re-deliver with a change log. |
| Completion | Thank-you. Neutral feedback invitation (only if not already sent). |
| Review posted | Public reply within 48 h, positive or negative. |
| +21–30 days | One relevant check-in, only if there is a natural next step. |
| Any RC request | Respond within 24 h (hard limit 48 h; S17). |

### 12.4 Revision policy wording (for Gig description or FAQ)
> **Revisions:** Each package includes [N] revision rounds. A revision is a change to the delivered work that stays within the original brief (for example copy tweaks, color or layout adjustments, swapping a visual). New deliverables, new directions after approval, or extra quantities are new scope, and I'll happily quote them as an extra or custom offer. To make revisions fast, please send all your changes in one message.

### 12.5 Brief proposal template (under 900 characters; personalize every line)
> Hi [Name], I read your brief for [project]. Your main goal seems to be [goal in their words], ideally before [date].
> Relevant: we recently [similar result, e.g., "set up Meta lead ads for a clinic, 38 leads in 21 days at €6.40 CPL"]. You can see it in my portfolio.
> My approach: 1) [step] 2) [step] 3) [step].
> The attached offer covers [deliverables], delivered in [X] days with [N] revisions.
> One question so I get it right: [single sharpest question].
- Use "Ask questions" first if the brief is ambiguous (S4).
- Decline irrelevant briefs (S4, S5).
- Respond within the 72-hour window, and early is better (S4).

### 12.6 Repeat-business system
See §9. KPI: repeat buyer share and subscription conversions, tracked monthly.

---

## 13. Message templates (ToS-safe; replace [brackets])

All templates avoid contact-info words, payment-method names, rating requests and review incentives.

**T1: First reply, vague inquiry**
> Hi [Name], thanks for reaching out! Happy to help with [their words, e.g., "growing your Instagram"].
> To recommend the right package (and not guess), could you tell me:
> 1) What result would make this a win for you in the next 90 days?
> 2) What have you tried so far, and how did it go?
> 3) Any deadline or launch date?
> Once I have that, I'll send a tailored offer within [X] hours.

**T2: First reply, detailed inquiry**
> Hi [Name], thanks for the clear brief. If I understood correctly, you need [summary in 1 line], mainly to [goal], by [date]. Is that right?
> We've done something close to this for [similar client/type]: [1-line result].
> Two quick questions before I send the offer:
> • [Question 1]
> • [Question 2]
> If it's easier, we can also do a 15-minute Fiverr video call.

**T3: Auto-reply (first contact)**
> Hi, thanks for your message! A member of the DESORA team will reply personally within [1–3] hours ([hours] Morocco time, GMT). To speed things up, tell us: your goal, your deadline, and a link to your brand's page or product (if public).

**T4: Qualifying questions, marketing services**
> To scope this properly:
> • Which platform matters most (Instagram, TikTok, Meta Ads, Google)?
> • Who is your ideal customer?
> • What's your monthly ad budget (if ads are included)?
> • Do you have brand guidelines or past content we should follow?

**T5: Custom offer description**
> **Goal:** [outcome].
> **Included:** [deliverable 1 with quantity/format]; [deliverable 2]; [deliverable 3].
> **Not included:** [exclusions, e.g., ad spend, product photography].
> **Timeline:** [X] days from receiving [inputs].
> **Revisions:** [N] rounds (changes within this scope; please send them in one message).
> **To start, I'll need:** [inputs].

**T6: Price objection, "too expensive"**
> I understand. It sounds like the budget is tighter than this package. What range were you planning for? I can adjust the scope (for example [smaller option]) so it fits and still gives you something measurable.

**T7: "Another seller is cheaper"**
> That's a fair comparison to make. The main difference in my offer is [specific: strategy + reporting + revisions]. If your priority is [their KPI], that's what gets you there. If a lighter version works, I can offer [Basic option] at [price].

**T8: Free sample request**
> Thanks for considering us! We don't do free samples, but our Basic package is designed as a low-risk first step, with [N] revisions included. Many clients start there and upgrade once they've seen the results.

**T9: Buyer asks to move off-platform**
> I appreciate it! To keep your payment and files protected, we keep all communication and work here on Fiverr. It's also against Fiverr's policies to move elsewhere. If a live conversation helps, I can start a Fiverr video call right from this chat.

**T10: Follow-up after an offer (sent once)**
> Hi [Name], just a quick note on [project]: I realized [one new useful idea or clarification]. Would it be a bad idea to [small next step, e.g., "start with the audit first"]? No pressure either way.

**T11: Close-the-loop (final)**
> Hi [Name], I haven't heard back, so I'll assume the timing isn't right, which is totally fine. Should I close this out on my end for now? The offer stays available until [date] if you want to pick it up.

**T12: Order kickoff**
> Hi [Name], thanks for your order! Here's what we'll deliver:
> • [Deliverable 1]
> • [Deliverable 2]
> Delivery: [date/time in their timezone].
> To start, we still need: [missing input] by [date].
> You'll get a progress update on [date]. Did I miss anything?

**T13: Missing requirements reminder**
> Hi [Name], just a reminder that we need [item] to start. The order timer begins once we have it. If it's easier, share what you have now and we'll work with it.

**T14: Progress update**
> Quick update on your order:
> ✅ Done: [items]
> ⏳ Next: [items]
> ❓ Decision needed: [1 question, with a recommended option]
> We're on track for [date].

**T15: Scope-creep response**
> Great idea. [New request] isn't part of the current package (which covers [scope]), but I can add it. It would be [price/time] as an extra, and I'll send the offer here if you'd like. Either way, your current deliverables stay on schedule for [date].

**T16: Extension request (sent before the due date)**
> Hi [Name], I want to be transparent: [brief, honest reason]. To deliver the quality you're paying for, I'm requesting [X] extra days, with the new delivery on [date]. If that doesn't work for you, tell me and I'll prioritize [core deliverable] for the original date.

**T17: Late apology (already late)**
> I'm sorry, this is later than promised and that's on us. Your delivery will be uploaded by [exact time, their timezone]. [Optional: what we're adding to make up for it, NOT tied to reviews.]

**T18: Delivery message**
> Hi [Name], your order is ready!
> **What's included:** [file list with formats].
> **How to use it:** [2–3 steps, or "see the walkthrough video in the files"].
> **Why we made these choices:** [2 bullets].
> **Next 7 days:** [recommended actions and what to measure].
> If anything needs adjusting, click "Request revision" and list all changes in one message.
> When the order is complete, your honest feedback helps us improve and helps other clients decide. Thank you for working with DESORA!

**T19: Revision acknowledgment**
> Thanks for the feedback. Let me confirm the changes:
> 1) [change] 2) [change] 3) [change]
> Anything else before we start? The updated version will arrive by [date/time].

**T20: Out-of-scope revision**
> I see what you mean. This is a new direction compared with the brief we agreed on ([quote key requirement]). I'm happy to do it as a new custom offer ([price/time]). Or, within your current revisions, I can [closest in-scope alternative]. Which do you prefer?

**T21: Unhappy buyer, de-escalation**
> I'm sorry this isn't what you expected. It sounds like [label their concern, e.g., "the style feels too formal for your audience"]. What would need to change for this to feel right for your brand? Once I know, I'll send a revised version by [date].

**T22: Boundary with an abusive buyer**
> I want to help resolve this, and I'm committed to finishing your order. To do that, let's keep our messages respectful and focused on the work. Here's what I can do next: [specific option].

**T23: Mutual cancellation proposal (fit issue)**
> I've thought about this carefully. It seems this project needs [what's needed], which is outside what I can deliver at the quality you deserve. Rather than waste your time, I suggest we cancel through the Resolution Center so you get a full refund. I'm sorry it wasn't the right fit.

**T24: Public reply to a negative review**
> Thank you for your feedback, [Name]. We're sorry the result didn't meet your expectations. For context, the order covered [scope], delivered on [date], with [N] revisions offered. We've since [improvement, e.g., "added a style-confirmation step before design starts"]. We wish you success with your project.

**T25: Public reply to a positive review**
> Thank you, [Name]! It was a pleasure helping [brand] with [project]. Good luck with the launch. We'll be here when you're ready for the next step.

**T26: Post-completion check-in (one-time, same thread, relevant)**
> Hi [Name], it's been about a month since we delivered [project]. How is it performing? If helpful, the natural next step would be [specific next step]. I'm happy to put together an offer, or simply share a few tips if you're handling it in-house.

**T27: Fiverr Zoom invitation**
> Would a quick 20-minute Fiverr video call help? I'm free [time options in THEIR timezone] (that's [Morocco time] for me). I'll send the call link here in the chat.

**T28: Timezone and availability expectations**
> Just so you know our hours: we're based in Morocco (GMT, same clock as London) and reply from [hours] your time. For anything urgent during your evening, send it here and it'll be the first thing we handle.

---

## 14. Free tools and resources

| Tool | URL | Purpose | Free tier? | Note |
|---|---|---|---|---|
| Fiverr Quick Responses and auto-reply | in-app (see S3) | Consistent, fast first replies | Yes | Official |
| Fiverr custom offers, milestones, subscriptions | in-app (S33, S68, S69) | Scoping and closing | Yes | Official |
| Fiverr built-in Zoom | in-app (S30) | Pre- and post-order calls, recorded | Yes (Fiverr pays) | Pre-order calls need eligibility |
| Fiverr mobile app | app stores | Fast responses away from the desk | Yes | [BACKGROUND] |
| Fiverr Help Center | https://help.fiverr.com/hc/en-us | Official rules | Yes | T1 |
| Fiverr Community blogs (staff) | https://community.fiverr.com/public/blogs | Staff guidance (e.g., S39–S42, S48) | Yes | T1 when written by staff |
| Grammarly | https://www.grammarly.com | Grammar and tone check | Free tier | [BACKGROUND] |
| LanguageTool | https://languagetool.org | Grammar check, handles FR/EN switching | Free tier | [BACKGROUND] |
| Hemingway Editor | https://hemingwayapp.com | Readability, sentence length | Free web version | [BACKGROUND] |
| DeepL | https://www.deepl.com | FR/AR→EN translation with nuance | Free tier | [BACKGROUND] |
| timeanddate / World Time Buddy | https://www.timeanddate.com, https://www.worldtimebuddy.com | Timezone conversion for deadlines and calls | Free | [BACKGROUND] |
| Loom (recording only) | https://www.loom.com | Delivery walkthrough videos. **Upload the video file to the Fiverr delivery; don't rely on an external link.** | Free tier (limited) | [BACKGROUND] |
| Third-party "Fiverr reply assistant" Chrome extensions | e.g. S64 | Auto-replies | Varies | **Avoid**: automation and ToS risk |

---

## 15. Open questions (not verified in this session)

1. Whether auto-replies count toward response rate or response time. Check the full text of S3.
2. The exact current Success Score components and their weights. Read S46 in full.
3. The exact eligibility rules for **pre-order** Zoom calls (the extract of S30 was ambiguous).
4. Whether Fiverr publishes any list of flagged words, or how automated contact-info detection works. The community consensus is not verified.
5. Whether asking explicitly for "5 stars" is itself named as a violation, as opposed to the broader manipulation rule. Read S13 in full.
6. Current milestone auto-completion and next-milestone funding windows. The 2020 ToS says 8 and 10 days; re-check against S69.
7. Briefs volume trends and whether Fiverr is reducing or restructuring Briefs in late 2026 (S36).
8. The content of Fiverr's staff blog on repeat buyer rate (S48) and on conflict-free orders (S42). Only the titles and extracts were seen.
9. Whether custom-offer character limits and price minimums or maximums changed in 2025–2026.
10. The full current ToS (post-2020). The archived copies read here are from November 2020. Pull the current ToS from www.fiverr.com/legal-portal once network access allows.
11. HubSpot and Gong research on response speed and discovery (talk-to-listen ratios, question counts) could not be fetched. The speed-to-lead figures cited are from HBR 2011 [BACKGROUND].

**Next step for full verification:** allow the hosts help.fiverr.com, community.fiverr.com and www.fiverr.com in the environment's network settings, then re-run fetches of S1, S3, S13, S14, S17, S30, S33, S42, S46 and S48 end to end. Those ten pages would upgrade most [snippet] claims to fully-read [OFFICIAL] ones.
