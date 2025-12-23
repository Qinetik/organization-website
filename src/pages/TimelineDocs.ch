public func TimelineDocsLayout(page : &mut HtmlPage, currentPath : std::string_view, contentFn : std::function<(p : &mut HtmlPage) => void>) {
    
    GlobalStyles(page);

    const containerClass = #css {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    const mainContentClass = #css {
        display: flex;
        flex: 1;
        @media (max-width: 768px) {
            flex-direction: column;
        }
    }

    const sidebarClass = #css {
        width: 300px;
        background-color: var(--surface-color);
        padding: 2em;
        border-right: 1px solid #eee;
        @media (max-width: 768px) {
            width: 100%;
            border-right: none;
            border-bottom: 1px solid #eee;
            padding: 1em;
        }
    }

    const contentAreaClass = #css {
        flex: 1;
        padding: 2em;
        max-width: 800px;
        margin: 0 auto;
        @media (max-width: 768px) {
            padding: 1em;
        }
        h2, h3 { margin-top: 1.5em; }
        p, li { line-height: 1.6; opacity: 0.8; }
        ul, ol { margin-left: 1.5em; margin-bottom: 1em; }
    }

    const sidebarLinkClass = #css {
        display: block;
        padding: 0.8em 1em;
        text-decoration: none;
        color: var(--text-color);
        border-radius: 8px;
        margin-bottom: 0.5em;
        &:hover { background-color: #f5f5f5; }
        &.active {
            background-color: var(--primary-color);
            color: white;
        }
    }

    const sidebarLinkClassView = std::string_view(sidebarLinkClass)

    #html {
        <div class={containerClass}>
            { WebAppBar(page) }
            <div class={mainContentClass}>
                <aside class={sidebarClass}>
                    <h3>Documentation</h3>
                    { TimelineDocsNavLink(page, "Create, Update, Delete", "/docs/timeline/create/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Organize Notes", "/docs/timeline/organize/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Manage Notebooks", "/docs/timeline/manage-notebooks/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Archive, Color", "/docs/timeline/archive-color/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Image, Audio", "/docs/timeline/image-audio/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Code, Math", "/docs/timeline/code-math/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Drawing", "/docs/timeline/sketch/", currentPath, sidebarLinkClassView) }
                    { TimelineDocsNavLink(page, "Export", "/docs/timeline/export/", currentPath, sidebarLinkClassView) }
                </aside>
                <main class={contentAreaClass}>
                    { contentFn(page) }
                </main>
            </div>
            { Footer(page) }
        </div>
    }
}

func TimelineDocsNavLink(page : &mut HtmlPage, label : std::string_view, href : std::string_view, currentPath : std::string_view, linkClass : std::string_view) {
    const isActive = href.equals(currentPath)
    var finalClass = std::string()
    finalClass.append_view(linkClass)
    if(isActive) {
        finalClass.append_view(" active")
    }
    #html {
        <a href={href.data()} class={finalClass.data()}>{ label.data() }</a>
    }
}

public func TimelineDocsIndex(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/", (page : &mut HtmlPage) => {
        #html {
            <h1>Timeline Documentation</h1>
            <p>
                We have a note taking app named timeline. Here you can find instructions on how to use its various features, from creating basic notes to adding complex attachments like sketches and audio recordings.
            </p>
            <p>Select a topic from the sidebar to get started.</p>
        }
    })
}

public func TimelineDocsCreate(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/create/", (page : &mut HtmlPage) => {
        #html {
            <h2>How to Create, Update, and Delete a Note</h2>

            <h3>Create a Note</h3>
            <ul>
                <li>Press the fab button located in the bottom right corner of the main screen. This will launch the editor.</li>
                <li>In the editor, write your note's title and the actual note.</li>
                <li>To save the note, press the back button located on the top left of the top bar. The system back of android also works.</li>
            </ul>

            <h3>Update a Note</h3>
            <ul>
                <li>Tap the desired note on the main screen to launch the editor.</li>
                <li>Make your changes in the editor.</li>
                <li>Press the back button to save. Saving is automatic.</li>
                <li>Alternatively, press the options menu button located at the top right of the editor screen and select 'Exit'. This will present a dialog with the options 'Save and Exit', 'Exit without Saving', and 'Cancel'.</li>
            </ul>

            <h3>Delete a Note</h3>
            <ul>
                <li>Long press the desired note on the main screen. Selection options will appear in the top bar.</li>
                <li>Press the 'More' menu button and select 'Delete'.</li>
                <li>Alternatively, open the note in the editor and select 'Delete' from the options menu.</li>
            </ul>
        }
    })
}

public func TimelineDocsOrganize(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/organize/", (page : &mut HtmlPage) => {
        #html {
            <h1>How to Organize Notes Using Tags in Timeline</h1>

            <p>Timeline is a powerful note-taking app that allows you to organize your notes efficiently using tags. Here's a step-by-step guide on how to do it:</p>

            <ol>
                <li>Open the Timeline app and navigate to the main screen.</li>
                <li>On the top bar, you will find selection options. Look for the label icon and tap on it.</li>
                <li>A tag dialog will appear. Select the notes you want to organize by applying tags.</li>
                <li>If there are no existing tags, you can create one by typing the tag title in the text field within the dialog. Press the check icon next to it to create the tag.</li>
                <li>Make sure the tag is selected, then dismiss the dialog. The selected tags will now be applied to the chosen notes.</li>
            </ol>

            <p>To find notes within a specific tag:</p>

            <ol>
                <li>Click on the search icon on the main screen.</li>
                <li>Filters will appear below the search bar. Click on the label filter.</li>
                <li>Select the desired tag, and your notes will be filtered accordingly.</li>
            </ol>

            <p>To display tags in the drawer:</p>

            <ol>
                <li>Open the main menu by either swiping left to right or pressing the hamburger icon in the top left corner.</li>
                <li>In the menu, tap on "Settings."</li>
                <li>Open "User Interface Settings."</li>
                <li>Enable the "Display Tags in Drawer" option.</li>
            </ol>
        }
    })
}

public func TimelineDocsManageNotebooks(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/manage-notebooks/", (page : &mut HtmlPage) => {
        #html {
            <h1>Manage Notebooks in Timeline</h1>

            <p>Notebooks in Timeline act as categories to help you organize your notes efficiently. Follow the steps below to manage your notebooks:</p>

            <h2>Selecting Notes for Categorization</h2>

            <p>Before you can manage notebooks, you need to select the notes you want to categorize. In the main interface, use the selection options available in the top bar to choose the notes you want to organize.</p>

            <h2>Categorizing Notes</h2>

            <p>Once you've selected the notes, press the "More Options" menu button. From the options menu, select the "Notebook" or "Categorize" option. A dialog will appear, allowing you to choose a notebook for your selected notes.</p>

            <h3>Creating a New Notebook</h3>

            <p>If you don't have any existing notebooks, you can create a new one by typing a name in the text field within the selection dialog. Press the checkmark next to it to confirm the creation of the new notebook.</p>

            <h2>Managing Notebooks</h2>

            <p>Within the notebook selection dialog, you can manage your notebooks in various ways:</p>

            <ul>
                <li>Create a new notebook</li>
                <li>Update the name of an existing notebook</li>
                <li>Delete an existing notebook</li>
            </ul>

            <h2>Accessing Notebooks Page</h2>

            <p>You can access the notebooks page from the main menu. Open the drawer and press "Edit" next to the "Notebooks" section. This will allow you to view, create, update, and delete notebooks.</p>

            <h2>Categorizing Notes in Editor Screen</h2>

            <p>You can also categorize notes directly from the editor screen. In the options menu, choose the "Categorize" or "Notebook" option. This will open the same notebook selection dialog, allowing you to assign a category to the note you are currently editing.</p>
        }
    })
}

public func TimelineDocsArchiveColor(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/archive-color/", (page : &mut HtmlPage) => {
        #html {
            <h1>Archive or Color a Note in Timeline</h1>

            <p>Timeline is a powerful note-taking app that offers various features to help you organize and personalize your notes. One of the key functionalities is the ability to archive and color your notes. This document will guide you through the process of archiving notes and applying colors to them.</p>

            <h2>Archiving a Note</h2>

            <p>The Archive is a special section where you can store important documents or notes for better organization. To access the Archive:</p>
            <ul>
                <li>On the main screen, swipe left or open the hamburger menu in the top left corner.</li>
                <li>Inside the Archive, you can manage and retrieve your archived notes easily.</li>
            </ul>

            <p>To archive a note from the main screen:</p>
            <ul>
                <li>Select the note(s) you want to archive.</li>
                <li>Top bar options will appear, press the archive button to move the selected notes to the Archive.</li>
            </ul>

            <p>If you are on the Archive page and want to unarchive a note:</p>
            <ul>
                <li>Select the note(s).</li>
                <li>The unarchive icon button will appear in the top bar. Press it to bring the note(s) back to the main screen.</li>
            </ul>

            <p>If you prefer archiving or unarchiving directly from the note editor:</p>
            <ul>
                <li>Open the note.</li>
                <li>Look for the option in the top bar or press the more menu button to find the archive option.</li>
            </ul>

            <h2>Coloring a Note</h2>

            <p>Next to the archive button, you'll find a color button. Clicking it opens a bottom sheet with Timeline's provided colors.</p>

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

            <p>With these simple steps, you can efficiently archive and color your notes in Timeline, making it easier to stay organized and find your important information.</p>
        }
    })
}

public func TimelineDocsImageAudio(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/image-audio/", (page : &mut HtmlPage) => {
        #html {
            <h2>Adding Attachments</h2>
            <p>To add images or audio to a note, follow these simple steps:</p>
            <ol>
                <li>Open the note to which you want to add an attachment.</li>
                <li>Click on the plus icon located in the bottom bar of the note interface.</li>
                <li>This action opens a small popup underneath with options to add an image or audio.</li>
            </ol>

            <h2>Adding Images</h2>
            <p>To add an image to your note:</p>
            <ol>
                <li>Click on the "Image" option in the popup.</li>
                <li>You will be presented with options to either select a photo from your gallery or take a new photo.</li>
                <li>If you want to add an existing image, choose the "Select from Gallery" option.</li>
                <li>If you prefer to capture a new photo, select the "Take a Photo" option.</li>
                <li>Once you have made your selection, press the back button to save the note.</li>
            </ol>

            <h2>Adding Audio</h2>
            <p>To add audio to your note:</p>
            <ol>
                <li>Click on the "Audio" option in the popup.</li>
                <li>You will be presented with options to either record a new audio or select an existing audio file.</li>
                <li>If you want to record a new audio, choose the "Record Audio" option.</li>
                <li>If you have an existing audio file, select the "Select Audio File" option.</li>
                <li>Once you have added the audio, press the back button to save the note.</li>
            </ol>
        }
    })
}

public func TimelineDocsCodeMath(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/code-math/", (page : &mut HtmlPage) => {
        #html {
            <h1>Adding Code or Math to a Note</h1>
            <p>In Timeline, you can add code or math to a note. Here's how:</p>

            <h2>Adding Code</h2>
            <ol>
                <li>Open a note.</li>
                <li>Click the plus (+) icon in the bottom bar. This opens a small popup underneath.</li>
                <li>Select 'Code' from the popup.</li>
                <li>You'll notice that a code block has appeared in the editor with a cog option. This allows you to change the language that you are writing in.</li>
                <li>This code block provides basic syntax highlighting to make it easier to add code to your note.</li>
            </ol>

            <h2>Adding Math</h2>
            <ol>
                <li>Open a note.</li>
                <li>Click the plus (+) icon in the bottom bar. This opens a small popup underneath.</li>
                <li>Select 'Math' from the popup.</li>
                <li>A math block will appear in the editor. This block allows you to write LaTeX in a text field.</li>
                <li>The editor takes the LaTeX from this text field, converts it into an image, and displays it. This makes it easy to add math equations to a note.</li>
            </ol>
        }
    })
}

public func TimelineDocsSketch(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/sketch/", (page : &mut HtmlPage) => {
        #html {
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
        }
    })
}

public func TimelineDocsExport(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/export/", (page : &mut HtmlPage) => {
        #html {
            <h1>Exporting a Note</h1>
            <p>Timeline allows you to export your notes in various formats including HTML, Markdown, Text, Zipped HTML, and Zipped Markdown. The zipped formats include the attachments with relative paths to them in the markdown or html file.</p>

            <h2>Steps to Export a Note</h2>
            <ol>
                <li>Open the note you want to export.</li>
                <li>Once the note is opened in the editor, locate the 'More' menu button in the top right app bar and click on it.</li>
                <li>A menu will open. Look for the 'Export' option and click on it.</li>
                <li>This will open a dialog with options to select the format you want to export to (HTML or Markdown). Select the desired format.</li>
                <li>Finally, you can save your note as a file in the selected format.</li>
            </ol>

            <h2>Sharing a Note</h2>
            <p>If you want to directly share your note to WhatsApp or using other apps, the steps are similar to exporting a note. Instead of clicking on 'Export' in the note options menu, click on 'Share'.</p>
        }
    })
}
