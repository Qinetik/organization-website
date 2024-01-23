import TimelineDocsContainer from "~/routes/docs/timeline/components/TimelineDocsContainer";

export default function TimelineDocsOrganize() {
    return (
        <TimelineDocsContainer>
            <h1>Adding Code or Math to a Note</h1>
            <p>In Timeline, you can add code or math to a note. Here's how:</p>

            <h2>Adding Code</h2>
            <ol>
                <li>Open a note.</li>
                <li>Click the plus (+) icon in the bottom bar. This opens a small popup underneath.</li>
                <li>Select 'Code' from the popup.</li>
                <li>You'll notice that a code block has appeared in the editor with a cog option. This allows you to
                    change the language that you are writing in.
                </li>
                <li>This code block provides basic syntax highlighting to make it easier to add code to your note.</li>
            </ol>

            <h2>Adding Math</h2>
            <ol>
                <li>Open a note.</li>
                <li>Click the plus (+) icon in the bottom bar. This opens a small popup underneath.</li>
                <li>Select 'Math' from the popup.</li>
                <li>A math block will appear in the editor. This block allows you to write LaTeX in a text field.</li>
                <li>The editor takes the LaTeX from this text field, converts it into an image, and displays it. This
                    makes it easy to add math equations to a note.
                </li>
            </ol>
        </TimelineDocsContainer>
    )
}