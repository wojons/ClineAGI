# Use Case Definition: Interactive Fiction/Choose-Your-Own-Adventure Scripting

**Objective:** To generate the branching narrative script for a piece of interactive fiction (IF) or a choose-your-own-adventure (CYOA) story, including descriptions of situations/scenes, player choices, and the corresponding consequences or next story segments.

## 1. Core Requirements & Quality Indicators

*   **Branching Narrative Structure:**
    *   Clearly defines different paths and outcomes based on player/reader choices.
    *   Story segments (nodes/pages) are logically connected through choices.
*   **Meaningful Choices:**
    *   Player choices have a tangible impact on the story's direction, character development, or outcomes.
    *   Choices are not illusory (i.e., leading to the same outcome regardless of selection, unless intentionally designed for a specific narrative effect).
*   **Engaging Story & Scenarios:**
    *   Presents interesting situations, conflicts, and dilemmas for the player to navigate.
*   **Clear Descriptions & Options:**
    *   Each story segment clearly describes the current situation.
    *   Player choices are presented unambiguously.
*   **Consistent Tone & World:**
    *   Maintains a consistent tone, style, and adherence to the established fictional world across all branches.
*   **Varied Outcomes & Replayability (Often):**
    *   Different choices lead to genuinely different experiences, encouraging replay.
    *   May include multiple endings.
*   **Logical Consequences:**
    *   The results of player choices are logical within the context of the story and world.
*   **Clarity for Implementation (if for a game engine):**
    *   Script is structured in a way that can be implemented in IF authoring tools (e.g., Twine, Inform) or game engines, often involving clear labeling of nodes/passages and links.

## 2. Key Stages & Processes Involved

1.  **Understand Core Premise, Setting, and Player Role:**
    *   What is the basic story or situation? What is the setting? Who is the player character (or what role does the reader take)?
2.  **Outline Main Story Arcs & Potential Endings:**
    *   Sketch out the major possible paths the story can take and the different ways it might conclude.
3.  **Design Key Choice Points (Decision Nodes):**
    *   Identify critical moments where the player will make a significant decision.
4.  **Develop Story Segments (Nodes/Passages):**
    *   For each part of the story:
        *   Write descriptive text setting the scene and current situation.
        *   If it's a choice point, present 2-4 clear options to the player.
        *   If it's a consequence of a choice, describe the outcome.
5.  **Map Choices to Subsequent Segments:**
    *   Clearly link each choice to the next story segment or outcome it leads to. This forms the branching structure.
    *   (Conceptual for AI: This might involve using labels like `[[Go to Scene A]]` or `[[Choice 1 -> Node_1B]]`).
6.  **Write Content for All Branches:**
    *   Ensure all paths stemming from choices are fleshed out with narrative content.
7.  **Incorporate Variables & Conditions (Advanced):**
    *   (If the system supports it) Plan for variables that track player stats, inventory, or past choices, which can then affect future options or outcomes. AI can describe the logic.
8.  **Ensure Narrative Cohesion Across Branches:**
    *   Even with branching, maintain consistency in character, world, and tone.
9.  **Review & "Playtest" (Conceptual for AI):**
    *   Read through different paths to check for logical flow, engaging choices, and satisfying (or appropriately unsatisfying) outcomes.
    *   Check for dead ends (unless intentional) or broken links.

## 3. Inputs Required from User/System

*   **Story Premise/Starting Situation:**
*   **Genre:** (e.g., fantasy, sci-fi, mystery, horror).
*   **Player Character Concept (Optional):**
*   **Desired Level of Branching/Complexity (Optional):** (e.g., "a few major choices," "many small branches").
*   **Key Themes or Messages (Optional):**
*   **Specific Choices or Outcomes to Include (Optional):**
*   **Target IF System/Format (Optional):** (e.g., "for Twine," "general CYOA text format"). This can influence how choices/links are described.
*   **Desired Tone/Mood:**

## 4. Potential Challenges & Considerations

*   **Managing Complexity:** Branching narratives can quickly become very complex to design and write.
*   **Ensuring All Paths are Engaging:** Some branches might be less interesting than others if not carefully planned.
*   **"Choice Overload":** Presenting too many options at once can be overwhelming.
*   **Meaningful Consequences:** Making choices feel like they genuinely matter.
*   **Avoiding Dead Ends (Unintentional):** Ensuring all paths lead to some form of conclusion.
*   **Balancing Freedom with Narrative Control:** Giving the player agency while still telling a coherent story.
*   **Testing All Branches:** Thoroughly checking every possible path is time-consuming.

## 5. Metrics for Success (How to Evaluate Output)

*   **Clarity of Choices & Consequences:** Can the player understand their options and the likely impact of their decisions?
*   **Branching Logic:** Is the narrative structure sound, with choices leading to distinct and logical paths?
*   **Engagement of Story Segments:** Is each part of the story interesting to read?
*   **Sense of Agency:** Does the player feel like their choices matter?
*   **Narrative Cohesion:** Does the overall story (across potential paths) feel coherent?
*   **Replayability Potential:** Would a player be motivated to try different choices?
*   **Completeness:** Are all described branches followed through to some form of outcome?
*   **Adherence to Prompt:** Does it fulfill the user's requirements for the interactive story?

## 6. Example Output Structure/Format
**Scenario:** User wants a short interactive scene where the player explores a cave.
*   **User Input:**
    *   Premise: Player is an explorer who has just found the entrance to a dark cave.
    *   Genre: Adventure/Exploration.
    *   Desired Format: Twine-like (using `[[Link Text->Target Node]]` for choices).

*   **Cline Generated Interactive Fiction Script (Excerpt):**

    **:: Start**
    You stand at the mouth of a dark cave. A cool, damp breeze issues from within, carrying the scent of wet stone and something else... something ancient and unknown. The opening is just large enough to squeeze through.
    *   [[Enter the cave cautiously.->CaveEntrance]]
    *   [[Light a torch before entering.->LightTorch]]
    *   [[Decide it's too risky and turn back.->TurnBack]]

    **:: CaveEntrance**
    The darkness inside is almost total. You take a few hesitant steps forward, your hands outstretched. The ground is uneven. You hear a faint dripping sound echoing from deeper within.
    *   [[Try to find your way by touch.->TouchAhead]]
    *   [[Call out to see if anyone (or anything) is there.->CallOut]]
    *   [[Attempt to light your emergency flare.->LightFlare_Entrance]]

    **:: LightTorch**
    You fumble for your tinderbox and torch. After a few tries, the torch catches, casting flickering orange light on the rough-hewn cave walls. The entrance passage seems to narrow ahead.
    *   [[Proceed into the narrowing passage.->NarrowPassage_Torch]]
    *   [[Examine the cave mouth more closely with the torchlight.->ExamineMouth_Torch]]

    **:: TurnBack**
    Wisdom, or perhaps caution, gets the better of you. This cave has waited for centuries; it can wait a little longer. You turn away from the dark opening and head back towards the sunlight.
    **(Ending: Safe Retreat)**

    **:: TouchAhead**
    Your hands brush against something cold and slimy on the wall. Further ahead, you stumble, your foot catching on a loose rock.
    *   [[Try to regain your balance.->RegainBalance_Stumble]]
    *   [[Fall.->Fall_Darkness]]

    *(...and so on for other nodes like CallOut, LightFlare_Entrance, NarrowPassage_Torch, etc.)*

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Interactive Fiction/CYOA Scripting"
path: "prompts/use_cases/content-creation-and-management/creative-writing-storytelling/interactive-game-narrative/interactive-fiction-choose-your-own-adventure-scripting.md"
type: "use_case_guide"
description: "Generates branching narrative scripts for interactive fiction or choose-your-own-adventure stories."
triggers: ["interactive fiction script", "choose your own adventure story", "cyoa writing", "branching narrative", "Twine story script"]
weight: 100
