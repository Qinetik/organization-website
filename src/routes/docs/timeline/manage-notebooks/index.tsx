import TimelineDocsContainer from "~/solid/components/timeline/TimelineDocsContainer";

export default function TimelineDocsOrganize() {
    return (
        <TimelineDocsContainer>
            <h1>Manage Notebooks in Timeline</h1>

            <p>Notebooks in Timeline act as categories to help you organize your notes efficiently. Follow the steps
                below to manage your notebooks:</p>

            <h2>Selecting Notes for Categorization</h2>

            <p>Before you can manage notebooks, you need to select the notes you want to categorize. In the main
                interface, use the selection options available in the top bar to choose the notes you want to
                organize.</p>

            <h2>Categorizing Notes</h2>

            <p>Once you've selected the notes, press the "More Options" menu button. From the options menu, select the
                "Notebook" or "Categorize" option. A dialog will appear, allowing you to choose a notebook for your
                selected notes.</p>

            <h3>Creating a New Notebook</h3>

            <p>If you don't have any existing notebooks, you can create a new one by typing a name in the text field
                within the selection dialog. Press the checkmark next to it to confirm the creation of the new
                notebook.</p>

            <h2>Managing Notebooks</h2>

            <p>Within the notebook selection dialog, you can manage your notebooks in various ways:</p>

            <ul>
                <li>Create a new notebook</li>
                <li>Update the name of an existing notebook</li>
                <li>Delete an existing notebook</li>
            </ul>

            <h2>Accessing Notebooks Page</h2>

            <p>You can access the notebooks page from the main menu. Open the drawer and press "Edit" next to the
                "Notebooks" section. This will allow you to view, create, update, and delete notebooks.</p>

            <h2>Categorizing Notes in Editor Screen</h2>

            <p>You can also categorize notes directly from the editor screen. In the options menu, choose the
                "Categorize" or "Notebook" option. This will open the same notebook selection dialog, allowing you to
                assign a category to the note you are currently editing.</p>

        </TimelineDocsContainer>
    )
}