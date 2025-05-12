# Objective
To generate concise and engaging posts suitable for X (formerly Twitter), considering character limits, the common use of hashtags, and the platform's fast-paced nature.

## User Input Requirements
The user needs to provide:
1.  **Core Message/Topic:** What is the main point of the post?
2.  **Purpose of the Post:** (e.g., share an opinion, ask a question, promote a link, announce something, engage in a trend).
3.  **Key Information/Links:** Any specific details, URLs, or user mentions to include.
4.  **Desired Tone (Optional):** (e.g., witty, informative, provocative, humorous, serious). Default is engaging and concise.
5.  **Hashtag Preference (Optional):** (e.g., "suggest relevant hashtags," "use these specific hashtags: #example1 #example2," "no hashtags"). Default is to suggest 1-3 relevant hashtags.
6.  **Call to Action (Optional):** (e.g., "What do you think?", "Read more here:", "RT if you agree!").
7.  **Image/Video Context (Optional):** If the post is meant to accompany an image or video, briefly describe it so the text can be synergistic.

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the core message, purpose, key information, tone, hashtag preference, and any call to action.
2.  **Draft Post:**
    *   **Brevity is Key:** Craft the message to be well within X's character limits. Use concise language.
    *   **Engaging Hook:** Start with a hook to grab attention quickly.
    *   **Clarity:** Ensure the main point is clear despite the brevity.
    *   **Hashtags:** Include 1-3 relevant and potentially trending hashtags to increase visibility, unless requested otherwise.
    *   **Mentions:** If user mentions (`@username`) are provided, incorporate them correctly.
    *   **Links:** If a URL is provided, ensure it's included (it will be shortened by X).
    *   **Call to Action:** Integrate the call to action smoothly.
    *   **Tone:** Reflect the desired tone.
3.  **Consider Alternatives (Optional):** Offer 1-2 variations if the message allows for different angles or hashtag strategies.
4.  **Review for Impact:** Read the post to ensure it's impactful and suitable for the X platform.

## Example Output Structure/Format
**Scenario:** User wants to share a blog post about AI ethics on X.
*   **User Input:**
    *   Core Message: New blog post on the ethical implications of advanced AI.
    *   Purpose: Promote blog post, encourage discussion.
    *   Key Information/Link: [link_to_blog_post]
    *   Tone: Thought-provoking, slightly serious.
    *   Hashtags: Suggest relevant.
    *   Call to Action: "Read the full post and share your thoughts."

*   **Cline Generated X Post:**
    "Just published a new piece exploring the complex ethical landscape of advanced AI. 🤔 What are the biggest challenges we face? Read the full post here: [link_to_blog_post] and share your thoughts! 👇 #AIethics #ResponsibleAI #FutureTech"

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "X (Twitter) Post Generation"
path: "prompts/use_cases/communication-and-messaging/twitter-x-post-generation.md"
type: "use_case_guide"
description: "Generates concise and engaging posts for X (formerly Twitter), including hashtags and calls to action."
triggers: ["twitter post", "draft tweet", "write X post", "tweet generation"]
weight: 100
