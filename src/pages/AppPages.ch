public func AppTimelinePage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet Timeline", 
        "A Note Taking Tool", 
        "/assets/apps/timeline/screenshots/demo-1.png", 
        1000,
        "var(--surface-color)",
        (p : &mut HtmlPage) => {
            AppDemoSection(p, "Sketch Out Your Thoughts", "Timeline provides most features required to draw out multiple images into one note, that can be shared & exported.", "/assets/apps/timeline/screenshots/demo-2.png");
            AppDemoSection(p, "Intuitive Easy To Understand", "Timeline makes it easy to access the items you need. Everything will feel under your control.", "/assets/apps/timeline/screenshots/demo-3.png", true);
        },
        (p : &mut HtmlPage) => { AppFeaturesRow(p) },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(p, "https://qinetik.github.io/timeline-web", "https://play.google.com/store/apps/details?id=com.wakaztahir.timeline", "https://github.com/codeckle/timeline-kmp/releases/download/1.0.19/Timeline-1.0.19.msi", "/docs/timeline/");
        }
    )
}

public func AppEasyToDoPage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet easyToDo", 
        "Task Management Tool", 
        "/assets/apps/easytodo/screenshots/demo (1).png", 
        450,
        "var(--surface-color)",
        (p : &mut HtmlPage) => {
            AppDemoSection(p, "Create Lists Fast", "Since easyToDo is literally easy, its very fast to create tasks and lists on the app.", "/assets/apps/easytodo/screenshots/demo (2).png");
            AppDemoSection(p, "Organize and Prioritize", "You can prioritize items, mark them as important and even add due dates.", "/assets/apps/easytodo/screenshots/demo (3).png", true);
        },
        (p : &mut HtmlPage) => { AppFeaturesRow(p) },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(p, "", "https://play.google.com/store/apps/details?id=com.wakaztahir.easytodo", "", "");
        }
    )
}

public func AppMindNodePage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet 123Mind", 
        "A MindMapping Tool", 
        "/assets/apps/123mind/screenshots/demo (1).png", 
        450,
        "var(--surface-color)",
        (p : &mut HtmlPage) => {
            AppDemoSection(p, "Draw Inside A MindMap", "If you ever want to make a note, Just draw it inside the MindMap.", "/assets/apps/123mind/screenshots/demo (2).png");
            AppDemoSection(p, "Import Images", "You can import images into your drawing and your MindMap.", "/assets/apps/123mind/screenshots/demo (3).png", true);
        },
        (p : &mut HtmlPage) => { AppFeaturesRow(p) },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(p, "", "https://play.google.com/store/apps/details?id=com.wakaztahir.mindnode", "", "");
        }
    )
}

public func AppSketchablePage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet Sketchable", 
        "A Sketching / Drawing Tool", 
        "/assets/apps/sketchable/screenshots/demo (1).jpg", 
        400,
        "var(--surface-color)",
        (p : &mut HtmlPage) => {
            AppDemoSection(p, "Sketch Out Your Thoughts", "Sketchable provides most features required to draw out multiple images into one canvas, that can be shared & exported.", "/assets/apps/sketchable/screenshots/demo (2).jpg");
            AppDemoSection(p, "Intuitive Easy To Understand", "Sketchable's color picker and infinite canvas are two standout features that elevate the drawing experience.", "/assets/apps/sketchable/screenshots/demo (3).jpg", true);
        },
        (p : &mut HtmlPage) => { AppFeaturesRow(p) },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(p, "", "https://play.google.com/store/apps/details?id=com.wakaztahir.sketchapp", "", "");
        }
    )
}

public func AppQuiznetikPage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet Quiznetik", 
        "A Quiz App", 
        "", 
        0,
        "var(--surface-color)",
        (page : &mut HtmlPage) => {
            var centeredContainer = #css {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 2em;
                padding: 4em 2em;
            }
            var buttonClass = #css {
                background-color: var(--primary-color);
                color: white;
                text-decoration: none;
                padding: 1em 2em;
                border-radius: 50px;
                font-weight: 600;
                &:hover { opacity: 0.9; }
            }
            #html {
                <div class={centeredContainer}>
                    <a href="https://quiz.qinetik.org" class={buttonClass}>Try Quiznetik</a>
                </div>
            }
        },
        () => {},
        () => {},
    )
}
