# linkedin-comment-skill

A Claude Code skill for growing on LinkedIn by commenting well — on posts from the **past 24 hours, past 3 days, and past 7 days**.

It finds the right posts, drafts thoughtful comments in your voice, and queues them for you to approve. **It never auto-posts.**

## Why this exists

Comments carry far more weight than likes on LinkedIn — and early comments win. A comment in the first 30 minutes earns roughly 4× the impressions of the same comment a day later. But most comments are generic ("Great post! 🔥"), and LinkedIn now blocks automated slop comments and lets members report them.

This skill is the human-in-the-loop version: AI drafts, you approve, you post.

## The three windows

| Window | When | Rule |
|---|---|---|
| **Past 24h** | Daily | Highest priority. Comment within the first 2 hours where possible, 5–10 posts a day. |
| **Past 3 days** | Every 3 days | Only if the thread is still alive or the post is evergreen. |
| **Past 7 days** | Weekly | Only for key authors or evergreen posts. A dead post is worth nothing — skip it. |

## Install (30 seconds)

```bash
git clone https://github.com/smabdulmueid97/linkedin-comment-skill.git
./install.sh
# copies this skill to ~/.claude/skills/linkedin-comment-skill/
```

Or manually: copy `SKILL.md` to `~/.claude/skills/linkedin-comment-skill/SKILL.md`.

## Use it

```
comment on LinkedIn posts from the past 24 hours in AI engineering and freelancing
run the 3-day sweep — what did I miss that's still alive?
run the 7-day sweep for my top 5 target authors only
```

Before the first run, set your 2–3 topic pillars and your 20–30 target accounts (see `templates/daily-plan.md`). The skill will ask if they're missing.

## A good comment, in one line

**Specific reference + one insight the post didn't cover + one genuine question.** 15–40 words for a reply, 50–200 for a value-add comment. Never under 15 words.

## The safety line

LinkedIn's User Agreement bans bots and unauthorised automated methods to comment, like, or share — accounts risk restriction or shutdown. This skill does not scrape, log in as you, or post on your behalf. It drafts; you read, edit, approve, and post. That's the allowed side of the line, and the skill refuses fully automatic posting.

## Layout

```
SKILL.md                        # the skill
templates/daily-plan.md         # pillars, targets, routine
templates/comment-queue.csv     # 24h / 3d / 7d queue tracker
install.sh                      # copies the skill to ~/.claude/skills/
```

## License

MIT
