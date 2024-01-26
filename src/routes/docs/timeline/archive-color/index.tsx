import TimelineDocsContainer from "~/solid/components/timeline/TimelineDocsContainer";

export default function TimelineDocsOrganize() {
    return (
        <TimelineDocsContainer>
            <h1>Archive or Color a Note in Timeline</h1>

            <p>Timeline is a powerful note-taking app that offers various features to help you organize and personalize
                your notes. One of the key functionalities is the ability to archive and color your notes. This document
                will guide you through the process of archiving notes and applying colors to them.</p>

            <h2>Archiving a Note</h2>

            <p>The Archive is a special section where you can store important documents or notes for better
                organization. To access the Archive:</p>
            <ul>
                <li>On the main screen, swipe left or open the hamburger menu in the top left corner.</li>
                <li>Inside the Archive, you can manage and retrieve your archived notes easily.</li>
            </ul>

            <p>To archive a note from the main screen:</p>
            <ul>
                <li>Select the note(s) you want to archive.</li>
                <li>Top bar options will appear, press the archive button to move the selected notes to the Archive.
                </li>
            </ul>

            <p>If you are on the Archive page and want to unarchive a note:</p>
            <ul>
                <li>Select the note(s).</li>
                <li>The unarchive icon button will appear in the top bar. Press it to bring the note(s) back to the main
                    screen.
                </li>
            </ul>

            <p>If you prefer archiving or unarchiving directly from the note editor:</p>
            <ul>
                <li>Open the note.</li>
                <li>Look for the option in the top bar or press the more menu button to find the archive option.</li>
            </ul>

            <h2>Coloring a Note</h2>

            <p>Next to the archive button, you'll find a color button. Clicking it opens a bottom sheet with Timeline's
                provided colors.</p>

            <p>To change the color of a note:</p>
            <ul>
                <li>Press the color button next to the archive button.</li>
                <li>Select a color from the bottom sheet.</li>
                <li>The note(s) will now be displayed in the chosen color.</li>
            </ul>

            <h2>Viewing Colored Notes</h2>

            <p>To view notes based on their color:</p>
            <ul>
                <li>Go to the main screen.</li>
                <li>Press the search icon in the top bar.</li>
                <li>Filters will appear below the search bar.</li>
                <li>Click on 'Color' and select a color.</li>
                <li>Only notes with the selected color will be visible on the main screen.</li>
            </ul>

            <p>With these simple steps, you can efficiently archive and color your notes in Timeline, making it easier
                to stay organized and find your important information.</p>

        </TimelineDocsContainer>
    )
}