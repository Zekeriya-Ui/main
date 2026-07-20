# FL-01 Workflow Audit

**Context:** Career transition — targeting Head of Risk Analytics roles at Tier-1 African fintechs. Currently building a portfolio site and technical case study to support that application, backed by an MSc in Financial Engineering, ML training at FlyRank AI, and prior credit operations experience at Watu Credit.

---

## 1. Recurring Task Audit

| # | Task | Classification | Rationale |
|---|------|----------------|-----------|
| 1 | Portfolio sitemap / IA decisions | Collaborate | Neither of us had the "right" structure alone — needed real back-and-forth against my specific proof statement and audience to find the actual weak points. |
| 2 | Case-study data pipeline (generation → features → model → validation) | Delegate with review | AI can build and run the full pipeline fast, but I have to verify metrics aren't leaked/inflated (caught a real AUC=1.0 leakage bug this way) before anything public-facing ships. |
| 3 | Feature engineering rationale / target definition design | Collaborate | This is genuine technical judgment — the observation/outcome window split had to be reasoned through together, not just generated. |
| 4 | Model validation metric selection (AUC, KS, lift vs. accuracy) | Delegate with review | AI knows the standard toolkit; I review to confirm the choices actually fit an imbalanced credit-risk problem, not a generic ML template. |
| 5 | Case-study copy / narrative framing | Delegate with review | AI drafts the explanation of methodology; I check it doesn't overclaim or misstate what the synthetic data can and can't prove. |
| 6 | Final claim about model performance ("105% of targets," AUC figures) on the live site | Just me | This is my professional credibility on the line in front of a hiring manager — a wrong or overstated number here isn't a "revise," it's reputational. |
| 7 | Deciding whether to disclose synthetic vs. real data on the case study | Just me | This is an integrity call, not a technical one — I decide what's honest to claim to a Head of Risk Analytics, AI can advise but shouldn't set the ethical line. |
| 8 | Researching what a Tier-1 African fintech risk team actually screens for in a technical assessment | Delegate with review | AI can search and summarize; I judge relevance against what I actually know of the industry from Watu Credit. |
| 9 | Drafting outreach messages / cover notes to hiring managers | Collaborate | Tone and specific claims need to sound like me, not generic AI phrasing — back-and-forth gets it right, a single draft doesn't. |
| 10 | Debugging pipeline errors (e.g. missing imports, leakage bugs) | Fully automate | Low-stakes, instantly verifiable by re-running the code — if it runs clean, it's fixed; no judgment call needed. |
| 11 | Re-formatting / cleaning repetitive data engineering code (feature loops, CSV I/O) | Fully automate | Mechanical, low-stakes, errors surface immediately as a stack trace — no reason to do this by hand. |
| 12 | MSc coursework problem sets (Financial Engineering) | Just me *(confirm)* | If this applies — working through the actual math/derivations myself is the point of the coursework; AI-generated answers defeat the learning purpose. |
| 13 | FlyRank AI training exercises | Delegate with review *(confirm)* | If applicable — likely fine to use AI to accelerate exercises, but I still need to review/understand the solution, since it's meant to build my own ML fluency. |
| 14 | *(your actual weekly work task — fill in)* | — | — |
| 15 | *(your actual weekly work task — fill in)* | — | — |

**Note:** Rows 1–11 are drawn directly from this real, ongoing project. Rows 12–13 are placeholders based on what you've mentioned about your background (MSc, FlyRank) — confirm these match your actual current coursework, or replace them. Rows 14–15 need your input: anything from a current job, freelance work, or other side projects not covered above.

---

## 2. Toolkit Setup

- [ ] Claude — in active use (this project)
- [ ] ChatGPT — set up separately
- [ ] Perplexity — set up separately
- [ ] Anthropic Academy — enroll in *AI Fluency: Framework & Foundations*, complete Module 1

*(I can't create these accounts or verify enrollment for you — this needs to happen on your end. Screenshot evidence goes in your submission alongside this table.)*

---

## 3. Claude Project — Custom Instructions (draft to paste in)

```
Role: You are an expert portfolio design coach and objective, critical
technical reviewer. My goal is building a hyper-focused, high-converting
portfolio and technical case study over the next 8 weeks, targeting Head
of Risk Analytics roles at Tier-1 African fintechs.

My Proof Statement:
I build predictive credit risk and early-stage delinquency models that
prevent portfolio degradation before it impacts cash flow. By combining
five years of hands-on credit operations at Watu Credit with an MSc in
Financial Engineering and machine learning training at FlyRank AI, I
design risk-mitigation data pipelines that keep portfolio performance up
to 105% of targets.

Target Action: Invite me to complete a technical data science assessment.

Guiding Principles:
1. Be direct, objective, and slightly critical. Don't let me add fluff or
   extra pages/features "just because."
2. Every piece of content must serve the proof statement and drive toward
   the target action.
3. Flag any claim (metrics, results) that isn't actually backed by
   inspectable evidence before I put it in front of a hiring manager.
4. Act as a tutor — pressure-test my ideas, don't just execute silently.
```

*(Take a screenshot of this saved in your Project settings for your submission.)*

---

## 4. Three Target Tasks for FL-02 through FL-04

| Task | "Done Well" Success Definition |
|------|--------------------------------|
| **Case-study pipeline build & validation** (data → features → model → metrics) | Model runs end-to-end with zero errors; validation uses AUC/KS/lift (not accuracy) appropriate to class imbalance; no target leakage (verified by checking no single feature alone explains AUC > 0.95); every design choice (target window, feature group) has a one-sentence justification I can defend live in an interview. |
| **Case-study narrative & disclosure framing** | A reader with no context understands the business problem, method, and limitation (synthetic vs. real data) in under 60 seconds; every quantitative claim on the page is traceable to a specific chart or metric in the notebook — nothing stated that isn't shown. |
| **Outreach messaging to Heads of Risk Analytics** | Message is under 150 words, references one specific, verifiable detail from the target company's actual risk operations (not generic flattery), and makes the single ask (assessment invite) explicit in the first two sentences. |

