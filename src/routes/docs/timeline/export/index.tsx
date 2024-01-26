import TimelineDocsContainer from "~/solid/components/timeline/TimelineDocsContainer";

export default function TimelineDocsSketch() {
    return (
        <TimelineDocsContainer>
            <h1>Exporting a Note</h1>
            <p>Timeline allows you to export your notes in various formats including HTML, Markdown, Text, Zipped HTML,
                and Zipped Markdown. The zipped formats include the attachments with relative paths to them in the
                markdown or html file.</p>

            <h2>Steps to Export a Note</h2>
            <ol>
                <li>Open the note you want to export.</li>
                <li>Once the note is opened in the editor, locate the 'More' menu button in the top right app bar and
                    click on it.
                </li>
                <li>A menu will open. Look for the 'Export' option and click on it.</li>
                <li>This will open a dialog with options to select the format you want to export to (HTML or Markdown).
                    Select the desired format.
                </li>
                <li>Finally, you can save your note as a file in the selected format.</li>
            </ol>

            <h2>Sharing a Note</h2>
            <p>If you want to directly share your note to WhatsApp or using other apps, the steps are similar to
                exporting a note. Instead of clicking on 'Export' in the note options menu, click on 'Share'.</p>
        </TimelineDocsContainer>
    )
}