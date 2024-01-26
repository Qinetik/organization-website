import TimelineDocsContainer from "~/solid/components/timeline/TimelineDocsContainer";

export default function TimelineDocsCreate() {
    return (
        <TimelineDocsContainer>
            <h2>How to Create, Update, and Delete a Note</h2>

            <h3>Create a Note</h3>
            <ul>
                <li>Press the fab button located in the bottom right corner of the main screen. This will launch the
                    editor.
                </li>
                <li>In the editor, write your note's title and the actual note.</li>
                <li>To save the note, press the back button located on the top left of the top bar. The system back of
                    android also works.
                </li>
            </ul>

            <h3>Update a Note</h3>
            <ul>
                <li>Tap the desired note on the main screen to launch the editor.</li>
                <li>Make your changes in the editor.</li>
                <li>Press the back button to save. Saving is automatic.</li>
                <li>Alternatively, press the options menu button located at the top right of the editor screen and
                    select 'Exit'. This will present a dialog with the options 'Save and Exit', 'Exit without Saving',
                    and 'Cancel'.
                </li>
            </ul>

            <h3>Delete a Note</h3>
            <ul>
                <li>Long press the desired note on the main screen. Selection options will appear in the top bar.</li>
                <li>Press the 'More' menu button and select 'Delete'.</li>
                <li>Alternatively, open the note in the editor and select 'Delete' from the options menu.</li>
            </ul>
        </TimelineDocsContainer>
    )
}