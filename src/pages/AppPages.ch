public func AppTimelinePage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet Timeline", 
        "A Note Taking Tool", 
        "/assets/apps/timeline/screenshots/demo-1.png", 
        1000,
        "var(--surface-color)",
        (p : &mut HtmlPage) => {
            // First demo section
            AppDemoSection(
                p, 
                "Sketch Out Your Thoughts", 
                "Timeline provides most features required to draw out multiple images into one note, that can be shared & exported. Features like undo, redo, background color change, pointer color, zoom & pan and the ability to toggle between them easily. But most prominent feature of sketch is that it exports to SVG.", 
                "/assets/apps/timeline/screenshots/demo-2.png"
            );
            
            // Second demo section (reversed)
            AppDemoSection(
                p, 
                "Intuitive Easy To Understand", 
                "Timeline makes it easy to access the items you need. Everything will feel under your control. It will save you a lot of time to do everything else and help you to be more productive. The app will suit your needs.", 
                "/assets/apps/timeline/screenshots/demo-3.png", 
                true
            );
        },
        (p : &mut HtmlPage) => { 
            // Features section
            AppFeaturesRow(p) 
        },
        (p : &mut HtmlPage) => {
            // Available links
            AppAvailableLinks(
                p, 
                "https://qinetik.github.io/timeline-web", 
                "https://play.google.com/store/apps/details?id=com.wakaztahir.timeline", 
                "https://github.com/codeckle/timeline-kmp/releases/download/1.0.19/Timeline-1.0.19.msi", 
                "/docs/timeline/"
            );
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
            AppDemoSection(
                p, 
                "Create Lists Fast", 
                "Since easyToDo is literally easy, it's very fast to create tasks and lists on the app. The intuitive interface allows you to quickly add, edit, and organize your tasks with just a few taps.", 
                "/assets/apps/easytodo/screenshots/demo (2).png"
            );
            
            AppDemoSection(
                p, 
                "Organize and Prioritize", 
                "You can prioritize items, mark them as important, and even add due dates. The app helps you stay on top of your tasks with reminders and notifications for upcoming deadlines.", 
                "/assets/apps/easytodo/screenshots/demo (3).png", 
                true
            );
        },
        (p : &mut HtmlPage) => { 
            AppFeaturesRow(p) 
        },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(
                p, 
                "", 
                "https://play.google.com/store/apps/details?id=com.wakaztahir.easytodo", 
                "", 
                ""
            );
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
            AppDemoSection(
                p, 
                "Draw Inside A MindMap", 
                "If you ever want to make a note, just draw it inside the MindMap. The app provides a seamless experience for visual thinking and brainstorming with an intuitive interface that makes mind mapping effortless. Create connections, add text, and organize your thoughts in a visual way that makes sense to you.", 
                "/assets/apps/123mind/screenshots/demo (2).png"
            );
            
            AppDemoSection(
                p, 
                "Import and Customize", 
                "Enhance your mind maps by importing images and customizing every aspect. You can import images into your drawing and your MindMap, change colors, adjust styles, and create a visual representation that truly reflects your thought process. The app supports various export options to share your mind maps with others.", 
                "/assets/apps/123mind/screenshots/demo (3).png", 
                true
            );
        },
        (p : &mut HtmlPage) => { 
            AppFeaturesRow(p) 
        },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(
                p, 
                "", 
                "https://play.google.com/store/apps/details?id=com.wakaztahir.mindnode", 
                "", 
                ""
            );
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
            AppDemoSection(
                p, 
                "Sketch Out Your Thoughts", 
                "Sketchable provides most features required to draw out multiple images into one canvas, that can be shared & exported. The app offers a variety of brushes, layers, and tools to bring your ideas to life with precision and creativity. Whether you're a professional artist or just getting started, Sketchable has the tools you need to express yourself.", 
                "/assets/apps/sketchable/screenshots/demo (2).jpg"
            );
            
            AppDemoSection(
                p, 
                "Intuitive Color Picker and Tools", 
                "Sketchable's color picker and infinite canvas are two standout features that elevate the drawing experience. The intuitive interface makes it easy to select the perfect colors and create stunning artwork with ease. With features like layers, blending modes, and pressure sensitivity, you'll have everything you need to create professional-quality artwork on the go.", 
                "/assets/apps/sketchable/screenshots/demo (3).jpg", 
                true
            );
        },
        (p : &mut HtmlPage) => { 
            AppFeaturesRow(p) 
        },
        (p : &mut HtmlPage) => {
            AppAvailableLinks(
                p, 
                "", 
                "https://play.google.com/store/apps/details?id=com.wakaztahir.sketchapp", 
                "", 
                ""
            );
        }
    )
}

public func AppQuiznetikPage(page : &mut HtmlPage) {
    SharedAppLayout(
        page, 
        "Meet Quiznetik", 
        "Interactive Quiz Platform", 
        "/assets/apps/quiznetik/logo.png", 
        200,
        "var(--surface-color)",
        (page : &mut HtmlPage) => {
            var centeredContainer = #css {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                padding: 4em 2em;
                max-width: 800px;
                margin: 0 auto;
                
                h2 {
                    color: var(--primary-color);
                    margin-bottom: 1em;
                    font-size: 2.5rem;
                }
                
                p {
                    font-size: 1.2em;
                    line-height: 1.6;
                    margin-bottom: 2em;
                    opacity: 0.9;
                }
            }
            
            var buttonClass = #css {
                display: {"inline-flex"};
                align-items: center;
                justify-content: center;
                gap: 0.5em;
                background-color: var(--primary-color);
                color: white;
                text-decoration: none;
                padding: 1em 2em;
                border-radius: 50px;
                font-weight: 600;
                font-size: 1.1em;
                transition: all 0.2s ease;
                border: none;
                cursor: pointer;
                
                &:hover { 
                    opacity: 0.9;
                    transform: translateY(-2px);
                    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                }

            }
            
            #html {
                <div class={centeredContainer}>
                    <h2>Test Your Knowledge with Quiznetik</h2>
                    <p>
                        Quiznetik is a powerful quiz application that helps you test your knowledge on various topics. 
                        With a wide range of categories and difficulty levels, you can challenge yourself and learn new things every day. 
                        Perfect for students, teachers, and lifelong learners who want to expand their knowledge in an engaging way.
                    </p>
                    <a href="https://quiz.qinetik.org" class={buttonClass} target="_blank" rel="noopener noreferrer">
                        <span>Launch Quiznetik</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5 12H19M19 12L12 5M19 12L12 19" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </a>
                </div>
            }
        },
        (p : &mut HtmlPage) => { 
            // Features section
            AppFeaturesRow(p) 
        },
        (p : &mut HtmlPage) => {
            // Available links
            AppAvailableLinks(
                p, 
                "https://quiz.qinetik.org", 
                "", 
                "", 
                ""
            );
        }
    )
}
