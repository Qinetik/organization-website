import TimelineDocsContainer from "~/routes/docs/timeline/components/TimelineDocsContainer";

export default function TimelineDocsOrganize() {
    return (
        <TimelineDocsContainer>
            <h1>How to Organize Notes Using Tags in Timeline</h1>

            <p>Timeline is a powerful note-taking app that allows you to organize your notes efficiently using tags.
                Here's a step-by-step guide on how to do it:</p>

            <ol>
                <li>Open the Timeline app and navigate to the main screen.</li>
                <li>On the top bar, you will find selection options. Look for the label icon and tap on it.</li>
                <li>A tag dialog will appear. Select the notes you want to organize by applying tags.</li>
                <li>If there are no existing tags, you can create one by typing the tag title in the text field within
                    the dialog. Press the check icon next to it to create the tag.
                </li>
                <li>Make sure the tag is selected, then dismiss the dialog. The selected tags will now be applied to the
                    chosen notes.
                </li>
            </ol>

            <p>To find notes within a specific tag:</p>

            <ol>
                <li>Click on the search icon on the main screen.</li>
                <li>Filters will appear below the search bar. Click on the label filter.</li>
                <li>Select the desired tag, and your notes will be filtered accordingly.</li>
            </ol>

            <p>To display tags in the drawer:</p>

            <ol>
                <li>Open the main menu by either swiping left to right or pressing the hamburger icon in the top left
                    corner.
                </li>
                <li>In the menu, tap on "Settings."</li>
                <li>Open "User Interface Settings."</li>
                <li>Enable the "Display Tags in Drawer" option.</li>
            </ol>

        </TimelineDocsContainer>
    )
}