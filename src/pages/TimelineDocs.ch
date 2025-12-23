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
                <li>Press the fab button located in the bottom right corner.</li>
                <li>Write your note's title and content.</li>
                <li>Press the back button to save.</li>
            </ul>
            <h3>Update a Note</h3>
            <ul>
                <li>Tap a note on the main screen to edit.</li>
                <li>Changes are saved automatically when you exit.</li>
            </ul>
            <h3>Delete a Note</h3>
            <ul>
                <li>Long press a note on the main screen and select 'Delete' from the menu.</li>
            </ul>
        }
    })
}

public func TimelineDocsOrganize(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/organize/", (page : &mut HtmlPage) => {
        #html {
            <h2>How to Organize Notes in Timeline</h2>
            <p>Timeline provides several ways to keep your notes organized, including search, sorting, and notebooks.</p>
        }
    })
}

public func TimelineDocsImageAudio(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/image-audio/", (page : &mut HtmlPage) => {
        #html {
            <h2>Adding Images and Audio</h2>
            <h3>Adding Images</h3>
            <ul>
                <li>Click the plus icon and select 'Image'.</li>
                <li>Choose from gallery or take a new photo.</li>
            </ul>
            <h3>Adding Audio</h3>
            <ul>
                <li>Click the plus icon and select 'Audio'.</li>
                <li>Record new audio or select a file.</li>
            </ul>
        }
    })
}

public func TimelineDocsSketch(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/sketch/", (page : &mut HtmlPage) => {
        #html {
            <h2>Adding Sketches / Drawings</h2>
            <p>You can add hand-drawn sketches to your notes using the sketch tool available in the attachment menu.</p>
        }
    })
}

public func TimelineDocsExport(page : &mut HtmlPage) {
    TimelineDocsLayout(page, "/docs/timeline/export/", (page : &mut HtmlPage) => {
        #html {
            <h2>Exporting Notes</h2>
            <p>Notes can be exported to various formats, including PDF and plain text, to share with others or keep as backups.</p>
        }
    })
}
