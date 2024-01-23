import TimelineDocsContainer from "~/routes/docs/timeline/components/TimelineDocsContainer";

export default function TimelineDocsSketch() {
    return (
        <TimelineDocsContainer>
            <h1>Adding sketch to a Note</h1>
            <p>In Timeline, you can add sketch or drawing to a note. Here's how:</p>
            <ol>
                <li>Open a note.</li>
                <li>Click the plus (+) icon in the bottom bar. This opens a small popup underneath.</li>
                <li>Select 'Sketch' from the popup.</li>
                <li>The editor will open a sketch window, for you to create the drawing</li>
                <li>You'll notice The sketch window is really similar to our other app, Sketchable</li>
                <li>Once you are done press the back button, your sketch will be added</li>
            </ol>
        </TimelineDocsContainer>
    )
}