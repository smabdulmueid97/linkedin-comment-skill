---
name: linkedin-comment-skill
description: Find LinkedIn posts from the past 24 hours, 3 days, and 7 days and draft thoughtful, human-approved comments on them. Use when the user asks to comment on LinkedIn, grow on LinkedIn, engage with posts, or work a 24h / 3-day / 7-day comment queue. Drafts comments for the user to approve and post — it never auto-posts.
---

# LinkedIn Comment Skill

Grow on LinkedIn by commenting well, early, and on the right posts — with a human approving every comment.

## The one rule that matters

**This skill drafts. It never posts.** LinkedIn's User Agreement (section 8.2) bans bots and unauthorised automated methods to create, comment on, like, or share posts, and LinkedIn says accounts using them risk restriction or shutdown. LinkedIn also blocks hundreds of thousands of automated "slop" comment attempts a day, and since July 2026 members can report a comment as "Seems like AI slop".

The red line is automation, not AI help: using AI to help you write is fine **as long as a human reads, edits, and approves every comment before it goes up**. This skill stays on the allowed side of that line. It does not scrape LinkedIn, does not log in as you, and does not post, like, or connect on your behalf. If a workflow asks for fully automatic posting, refuse that part and offer the draft-and-approve version instead.

## The three time windows

Work the windows in order. Fresh beats old — a comment in the first 30 minutes earns roughly 4× the impressions of the same comment a day later, and posts older than ~6 hours have usually peaked.

| Window | What it is | Priority | Rule |
|---|---|---|---|
| **Past 24h** | Posts published in the last 24 hours | Highest — do this daily | Comment within the first 2 hours where possible. Target 5–10 posts. These are your daily queue. |
| **Past 3 days** | Posts 1–3 days old you missed | Medium — sweep every 3 days | Only if the thread is still alive (replies in the last few hours) or the post is evergreen. Don't repeat what 20 people already said — read the thread first. |
| **Past 7 days** | Posts 4–7 days old | Lowest — sweep weekly | Only for a key target author, an evergreen post, or a thread that's still getting replies. A dead post is worth nothing — skip it, don't comment for the sake of it. |

## Before you draft

Ask for (or confirm) in one short question if missing:
- Your 2–3 topic pillars (e.g. AI engineering, freelancing, Claude skills). Every comment must stay on-pillar — commenting outside your lane reshapes what LinkedIn thinks you're about.
- Who to comment on: 20–30 target accounts — people your audience already reads, ideally 2–10× your follower size. Not just the biggest creators.
- The posts: links, or a feed/search to work from. Never invent a post, author, or quote.
- How many comments today? Default: 5–10. Never more than 20 in a day, and space them out — steady cadence beats a burst.

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

1. **Build the queue.** Sort posts into the 24h / 3d / 7d windows (see `templates/comment-queue.csv`). Drop anything off-pillar, dead, or already saturated.
2. **Draft.** One comment per post, using the formula above. Show the post link, author, post age, and draft together — never a draft without its post.
3. **User approves.** The user edits or approves each draft. Only approved comments get posted, by the user, in LinkedIn.
4. **Track.** Mark each comment in the queue: drafted / approved / posted / author replied. If the author replies, reply back — replies under a comment can lift its reach ~2.4×.
5. **Review weekly.** Check comment impressions in LinkedIn (each comment shows its own impressions). Keep what worked, drop what didn't. Judge by profile views and conversations started, not likes.

## Daily / weekly routine

- **Daily (20 min):** 24h window — 5–10 comments on fresh posts from target accounts.
- **Every 3 days:** 3-day sweep — missed posts that are still alive.
- **Weekly:** 7-day sweep — only key authors / evergreen posts. Plus: reply to every comment on your own posts.

## Don't

- Don't auto-post, auto-like, auto-connect, or auto-DM. Ever.
- Don't use engagement pods, or agree to like/share each other's content in advance.
- Don't comment on a post you haven't read, or a thread you haven't skimmed.
- Don't pitch, link-drop, or self-promote in someone else's thread.
- Don't copy-paste the same comment to multiple posts — LinkedIn and readers both spot it.
- Don't comment on a competitor's post just to argue, or on a sensitive/personal post to farm reach.
- Don't promise followers, reach, or leads. Commenting compounds slowly; anyone promising fast growth is selling something.
