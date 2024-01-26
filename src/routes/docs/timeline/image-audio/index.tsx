import TimelineDocsContainer from "~/solid/components/timeline/TimelineDocsContainer";

export default function TimelineDocsOrganize() {
    return (
        <TimelineDocsContainer>
            <section>
                <h2>Adding Attachments</h2>
                <p>To add images or audio to a note, follow these simple steps:</p>
                <ol>
                    <li>Open the note to which you want to add an attachment.</li>
                    <li>Click on the plus icon located in the bottom bar of the note interface.</li>
                    <li>This action opens a small popup underneath with options to add an image or audio.</li>
                </ol>
            </section>

            <section>
                <h2>Adding Images</h2>
                <p>To add an image to your note:</p>
                <ol>
                    <li>Click on the "Image" option in the popup.</li>
                    <li>You will be presented with options to either select a photo from your gallery or take a new
                        photo.
                    </li>
                    <li>If you want to add an existing image, choose the "Select from Gallery" option.</li>
                    <li>If you prefer to capture a new photo, select the "Take a Photo" option.</li>
                    <li>Once you have made your selection, press the back button to save the note.</li>
                </ol>
            </section>

            <section>
                <h2>Adding Audio</h2>
                <p>To add audio to your note:</p>
                <ol>
                    <li>Click on the "Audio" option in the popup.</li>
                    <li>You will be presented with options to either record a new audio or select an existing audio
                        file.
                    </li>
                    <li>If you want to record a new audio, choose the "Record Audio" option.</li>
                    <li>If you have an existing audio file, select the "Select Audio File" option.</li>
                    <li>Once you have added the audio, press the back button to save the note.</li>
                </ol>
            </section>
        </TimelineDocsContainer>
    )
}