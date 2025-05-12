# Objective
To generate engaging and contextually appropriate Instagram captions that complement visual content (images/videos), incorporate relevant hashtags, and encourage user interaction.

## User Input Requirements
The user needs to provide:
1.  **Description of Visual Content:** What does the image or video show? Key elements, mood, style.
2.  **Purpose of the Post:** (e.g., share a personal moment, promote a product/service, tell a story, ask a question, drive traffic to a link in bio).
3.  **Core Message/Story (Optional):** Any specific narrative or message to convey beyond the visual.
4.  **Desired Tone (Optional):** (e.g., fun, inspirational, informative, witty, artistic, casual). Default is engaging and positive.
5.  **Hashtag Preference (Optional):** (e.g., "suggest relevant hashtags," "use these: #travel #art," "include a mix of popular and niche hashtags," "no hashtags"). Default is to suggest 3-7 relevant hashtags, including a mix if appropriate.
6.  **Call to Action (Optional):** (e.g., "Link in bio!", "What do you think?", "Tag a friend who...", "Save this post!").
7.  **Target Audience (Optional):** (e.g., followers, potential customers, specific community).

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the visual content, purpose, core message, target audience, tone, hashtag preference, and call to action.
2.  **Draft Caption:**
    *   **Visual Synergy:** Ensure the caption complements and enhances the visual content, rather than just describing it literally.
    *   **Engaging Opening:** Start with a hook or an intriguing question to capture attention.
    *   **Storytelling (if applicable):** If there's a story to tell, weave it concisely into the caption.
    *   **Emojis:** Use emojis appropriately to add personality and visual appeal, breaking up text where needed.
    *   **Hashtags:** Include a good mix of relevant hashtags (general, niche, community-specific) to maximize reach, unless otherwise specified. Place them either at the end of the caption or subtly integrated if it fits.
    *   **Call to Action:** Make the CTA clear and compelling. If directing to a link in bio, state it explicitly.
    *   **Spacing & Readability:** Use line breaks to improve readability for longer captions.
    *   **Questions for Engagement:** Consider ending with a question to encourage comments.
3.  **Consider Instagram's Context:** Think about what kind of captions perform well on Instagram (authenticity, storytelling, behind-the-scenes, user-generated content mentions).
4.  **Review for Engagement:** Read the caption to ensure it's engaging, authentic, and encourages interaction.

## Example Output Structure/Format
**Scenario:** User wants a caption for an Instagram photo of a sunset over mountains.
*   **User Input:**
    *   Visual Content: Photo of a vibrant orange and purple sunset over a mountain range. Mood is peaceful and awe-inspiring.
    *   Purpose: Share a beautiful moment, inspire followers.
    *   Tone: Awe-inspired, reflective.
    *   Hashtags: Suggest relevant, mix of popular and niche.
    *   Call to Action: "What's your favorite sunset memory?"

*   **Cline Generated Instagram Caption:**
    "Chasing horizons and soaking in every last drop of this incredible sunset. 🌄✨ There's something truly magical about the sky painting itself in these colors. Moments like these remind you to just pause and breathe.

    What's your favorite sunset memory? Share it below! 👇

    #SunsetLovers #MountainView #GoldenHour #NaturePhotography #TravelGram #PeacefulMoments #SkyOnFire #Wanderlust"

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Instagram Caption Generation"
path: "prompts/use_cases/communication-and-messaging/instagram-caption-generation.md"
type: "use_case_guide"
description: "Generates engaging Instagram captions that complement visuals, use relevant hashtags, and encourage interaction."
triggers: ["instagram caption", "draft instagram post", "write ig caption"]
weight: 100
