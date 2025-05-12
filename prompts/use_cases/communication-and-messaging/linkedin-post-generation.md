# Objective
To generate professional and insightful posts suitable for LinkedIn, focusing on industry insights, professional achievements, networking, or sharing valuable content.

## User Input Requirements
The user needs to provide:
1.  **Core Message/Topic:** What is the main subject of the post?
2.  **Purpose of the Post:** (e.g., share an article with commentary, announce a professional achievement, offer an industry insight, ask a professional question, start a discussion).
3.  **Key Information/Links:** Any specific details, URLs (e.g., to an article, portfolio, company page), or individuals/companies to mention (though LinkedIn's @mention works differently, the names can be included for context).
4.  **Desired Tone (Optional):** (e.g., formal, informative, thought-provoking, encouraging, professional). Default is professional and insightful.
5.  **Hashtag Preference (Optional):** (e.g., "suggest relevant professional hashtags," "use these: #leadership #innovation," "no hashtags"). Default is to suggest 2-4 relevant professional hashtags.
6.  **Call to Action (Optional):** (e.g., "What are your thoughts?", "Read the full article here:", "Let's connect!", "Looking for collaborators on...").
7.  **Target Audience (Optional):** (e.g., peers in [industry], potential employers, clients, general professional network).

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the core message, purpose, target audience, key information, tone, hashtag preference, and any call to action.
2.  **Draft Post:**
    *   **Professional Tone:** Maintain a professional and respectful tone throughout the post.
    *   **Value Proposition:** Ensure the post offers value to the reader (e.g., insight, useful information, a point for discussion).
    *   **Structure for Readability:** Use short paragraphs, bullet points if appropriate for lists, and clear language. LinkedIn posts can be longer than X posts.
    *   **Hashtags:** Include 2-4 relevant professional hashtags to increase visibility within relevant professional communities.
    *   **Links:** If a URL is provided, incorporate it naturally.
    *   **Call to Action:** Integrate the call to action clearly.
    *   **Opening Hook:** Start with an engaging sentence to capture attention.
3.  **Consider LinkedIn's Context:** Think about what kind of content performs well on LinkedIn (e.g., career advice, industry trends, personal success stories with lessons, insightful questions).
4.  **Review for Professionalism:** Ensure the language, tone, and content are appropriate for a professional networking platform.

## Example Output Structure/Format
**Scenario:** User wants to share an insightful article about remote work trends on LinkedIn.
*   **User Input:**
    *   Core Message: Sharing an article about the future of remote work and its impact on company culture.
    *   Purpose: Share article, offer commentary, and spark discussion.
    *   Key Information/Link: [link_to_article], main point of commentary: "Flexibility is key, but maintaining a strong culture requires deliberate effort."
    *   Tone: Insightful, professional.
    *   Hashtags: Suggest relevant.
    *   Call to Action: "What strategies have you found effective for remote team culture?"

*   **Cline Generated LinkedIn Post:**
    "Fascinating read on the evolving landscape of remote work and its profound impact on company culture: [link_to_article]

    My key takeaway is that while flexibility is becoming a standard expectation, building and maintaining a strong, cohesive team culture in a distributed environment requires deliberate and innovative strategies. It's not just about the tools, but the human connection.

    What strategies have your organizations found effective in nurturing culture with remote or hybrid teams? Would love to hear your thoughts and experiences in the comments below.

    #RemoteWork #FutureOfWork #CompanyCulture #Leadership #HR"

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "LinkedIn Post Generation"
path: "prompts/use_cases/communication-and-messaging/linkedin-post-generation.md"
type: "use_case_guide"
description: "Generates professional and insightful posts for LinkedIn, suitable for sharing articles, achievements, or starting discussions."
triggers: ["linkedin post", "draft linkedin", "write linkedin update"]
weight: 100
