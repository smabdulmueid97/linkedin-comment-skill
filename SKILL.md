---
name: linkedin-comment-skill
description: Find LinkedIn posts from the past 24 hours, 3 days, and 7 days and comment on them in two modes the user chooses: draft-only (safe, default) or opt-in auto-posting with configurable rate limits. Use when the user asks to comment on LinkedIn, grow on LinkedIn, engage with posts, or work a 24h / 3-day / 7-day comment queue. Draft mode never auto-posts; auto mode only runs when the user explicitly chooses it and sets limits.
---

# LinkedIn Comment Skill

Grow on LinkedIn by commenting well, early, and on the right posts.

## Choose your mode — both options, your call

There are two modes. The user picks one. Default is **draft** unless the user explicitly says otherwise. Never switch modes on your own, and never assume auto mode from a vague "automate it".

| Mode | What happens | Risk | Who it's for |
|---|---|---|---|
| **A. Draft-only (default, recommended)** | The skill drafts comments. The user reads, edits, approves, and posts each one in LinkedIn. | Lowest. This is AI writing help with a human approving every action. | Everyone. Start here. |
| **B. Auto-post (opt-in)** | The skill posts comments on the user's behalf, within the rate limits in `templates/config.yaml`. | Higher. LinkedIn's User Agreement (8.2) bans bots and unauthorised automated methods to comment/like/share, and accounts risk restriction or shutdown. LinkedIn also blocks automated "slop" comments daily. The user accepts that risk by choosing auto. | Only users who explicitly choose it, understand the risk, and set their own limits. |

If the user asks for auto-posting, confirm three things before running it: (1) mode = auto, (2) the limits from `templates/config.yaml` (or the numbers they give in the prompt), (3) that they understand the restriction risk. Then run it exactly within those limits.

## Rate limits — the user sets the numbers

Limits live in `templates/config.yaml`, and the user can override them in the prompt ("3 comments per hour", "max 5 today"). Prompt numbers beat the config file for that run. Defaults:

```yaml
mode: draft
limits:
  comments_per_hour: 3
  comments_per_day: 10
  comments_per_window_24h: 10
  comments_per_window_3d: 5
  comments_per_window_7d: 3
  min_delay_seconds_between_comments: 1200  # 20 minutes
  max_comments_per_post_thread: 1
```

Presets in the config file: **cautious** (1/hr, 5/day), **standard** (3/hr, 10/day — the default), **aggressive** (5/hr, 20/day, higher risk).

Enforce the limits hard, in both modes:
- Never exceed `comments_per_hour` or `comments_per_day`. When a cap is hit, stop and say so — don't queue the rest for later without asking.
- Wait at least `min_delay_seconds_between_comments` between comments. No bursts.
- One comment per thread max.
- Stop immediately on any LinkedIn warning, restriction notice, or CAPTCHA — and tell the user. Never try to work around it.
- In auto mode, require human review of the first 3 drafts before the run starts, and log every posted comment (post URL, time, text) in `templates/comment-queue.csv`.

## The three time windows

Work the windows in order. Fresh beats old — a comment in the first 30 minutes earns roughly 4× the impressions of the same comment a day later, and posts older than ~6 hours have usually peaked.

| Window | What it is | Priority | Rule |
|---|---|---|---|
| **Past 24h** | Posts published in the last 24 hours | Highest — do this daily | Comment within the first 2 hours where possible. Target 5–10 posts. These are your daily queue. |
| **Past 3 days** | Posts 1–3 days old you missed | Medium — sweep every 3 days | Only if the thread is still alive (replies in the last few hours) or the post is evergreen. Don't repeat what 20 people already said — read the thread first. |
| **Past 7 days** | Posts 4–7 days old | Lowest — sweep weekly | Only for a key target author, an evergreen post, or a thread that's still getting replies. A dead post is worth nothing — skip it, don't comment for the sake of it. |

## Before you draft

Ask for (or confirm) in one short question if missing:
- **Mode:** draft or auto? (Default: draft.)
- **Limits:** if auto, or if the user gives numbers — comments per hour / per day. (Default: 3/hr, 10/day.)
- Your 2–3 topic pillars (e.g. AI engineering, freelancing, Claude skills). Every comment must stay on-pillar.
- Who to comment on: 20–30 target accounts — people your audience already reads, ideally 2–10× your follower size.
- The posts: links, or a feed/search to work from. Never invent a post, author, or quote.

## How to pick a post worth commenting on

Comment only if it passes all three:
1. **On-pillar** — in your 2–3 topics.
2. **Right author** — a target account, an ICP, or a peer your audience reads.
3. **Still alive** — for 24h posts: fresh and picking up traction. For 3d/7d posts: replies still coming in, or evergreen. Skip posts with 200+ comments where you'd be comment #201 saying the same thing.

## How to write a comment that gets a reply

Formula: **specific reference + one insight + one question.** 15–40 words is the sweet spot for a reply; 50–200 words (3–5 sentences) for a standalone value-add comment. Never under 15 words — one-liners get ignored by the algorithm and by readers.

1. Read the post **and the thread** before writing. Saying what four people already said is the fastest way to be forgettable.
2. Pick **one line** in the post and react to that line, in your own words.
3. Add one thing the post didn't cover: an example, a number, a counterpoint, a lesson from your own work.
4. End with a genuine question — not "Agree?" and not a link to your own stuff.
5. No links in the comment. No hashtags unless they add discovery. No "Great post! 🔥" and no generic praise.

### Template

```
[Name / specific line]: that [observation] matches what I saw when [your example].
One thing I'd add: [insight the post didn't cover].
[Question for the author]?
```

### Example — good

> "The 2-hour window is the part most people miss. I commented on a post 3 days late once and it got 12 impressions; the same comment early got 2,000. Do you check the thread before you comment, or just the post?"

### Example — bad (never write these)

> "Great post! 🔥" / "Totally agree!" / "Thanks for sharing!" / "Check out my profile for more!"

## Steps

1. **Confirm mode + limits.** Draft by default; auto only if the user chose it, with limits from the config or prompt.
2. **Build the queue.** Sort posts into the 24h / 3d / 7d windows (see `templates/comment-queue.csv`). Drop anything off-pillar, dead, or already saturated.
3. **Draft.** One comment per post, using the formula above. Show the post link, author, post age, and draft together — never a draft without its post.
4. **Draft mode:** the user edits or approves each draft, then posts it in LinkedIn. **Auto mode:** post only approved-style drafts, within the limits, with the minimum delay between them, logging each one. Stop at the cap.
5. **Track.** Mark each comment in the queue: drafted / approved / posted / author replied. If the author replies, reply back — replies under a comment can lift its reach ~2.4×.
6. **Review weekly.** Check comment impressions in LinkedIn (each comment shows its own impressions). Keep what worked, drop what didn't. Judge by profile views and conversations started, not likes.

## Daily / weekly routine

- **Daily (20 min):** 24h window — 5–10 comments on fresh posts from target accounts.
- **Every 3 days:** 3-day sweep — missed posts that are still alive.
- **Weekly:** 7-day sweep — only key authors / evergreen posts. Plus: reply to every comment on your own posts.

## Don't

- Don't auto-post in draft mode. Don't switch to auto mode without the user explicitly choosing it.
- Don't exceed the user's limits, and don't run while the user is commenting manually.
- Don't use engagement pods, or agree to like/share each other's content in advance.
- Don't scrape LinkedIn, and don't log in as the user.
- Don't comment on a post you haven't read, or a thread you haven't skimmed.
- Don't pitch, link-drop, or self-promote in someone else's thread.
- Don't copy-paste the same comment to multiple posts — LinkedIn and readers both spot it.
- Don't promise followers, reach, or leads. Commenting compounds slowly; anyone promising fast growth is selling something.
