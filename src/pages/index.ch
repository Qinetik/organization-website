public func MainPage(page : &mut HtmlPage) {

    GlobalStyles(page);

    var containerClass = #css {
        width: 100%;
        display: flex;
        flex-direction: column;
        gap: 3em;
    }

    var heroSectionClass = #css {
        width: 100%;
        padding: 5em 2.5em;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
    }

    var titleClass = #css {
        margin: 0;
        max-width: 600px;
        font-size: 3rem;
        font-weight: 700;
        color: var(--text-color);
    }

    var subtitleClass = #css {
        margin-top: 1.5em;
        line-height: 1.8;
        max-width: 520px;
        font-size: 1.1rem;
        color: var(--text-color);
        opacity: 0.8;
    }

    var subscribeRowClass = #css {
        display: flex;
        gap: 1em;
        margin-top: 2em;
        flex-wrap: wrap;
    }

    var inputClass = #css {
        padding: 12px 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
        min-width: 300px;
        font-size: 1rem;
    }

    var buttonClass = #css {
        background-color: var(--primary-color);
        color: white;
        border: none;
        padding: 12px 24px;
        border-radius: 4px;
        cursor: pointer;
        font-weight: 600;
        font-size: 1rem;
        &:hover { opacity: 0.9; }
    }

    var centeredColumnClass = #css {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 4em 2em;
        box-sizing: border-box;
        text-align: center;
    }

    var serviceContainerClass = #css {
        display: flex;
        flex-direction: column;
        gap: 4em;
        margin-top: 3em;
        @media (min-width: 768px) {
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
        }
    }

    var splitSectionClass = #css {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 2em;
        padding: 4em 2.5em;
        @media (min-width: 768px) {
            flex-direction: row;
            text-align: left;
        }
    }

    var responsiveImageClass = #css {
        width: 100%;
        max-width: 500px;
        object-fit: contain;
    }

    var appCardsContainerClass = #css {
        display: grid;
        gap: 2em;
        margin-top: 2em;
        @media (min-width: 600px) { gap: 2em 4em; }
        @media (min-width: 900px) { gap: 2em 6em; }
    }

    var whyChooseSectionClass = #css {
        background-color: var(--text-color);
        color: var(--bg-color);
        padding: 4em 2em;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    var newsletterSectionClass = #css {
        background-color: var(--primary-color);
        color: white;
        padding: 4em 2.5em;
        margin: 2em;
        border-radius: 12px;
        display: flex;
        flex-direction: column;
        gap: 1.5em;
    }

    var timelineIcon = (p2 : &mut HtmlPage) => { TimelineIcon(p2) };
    var mindNodeIcon = (p2 : &mut HtmlPage) => { MindNodeIcon(p2) };
    var quiznetikIcon = (p2 : &mut HtmlPage) => { QuiznetikIcon(p2) };
    var sketchableIcon = (page : &mut HtmlPage) => { 
        #html {
            <img src="assets/apps/icons/sketchable.png" alt="Sketchable Icon" width="48" height="48" />
        }
    };
    var easyToDoIcon = (page : &mut HtmlPage) => { 
        #html {
            <img src="assets/apps/icons/easy_to_do.png" alt="EasyToDo Icon" width="48" height="48" />
        }
    };
    var photoEditorIcon = (p2 : &mut HtmlPage) => { PhotoEditorIcon(p2) };

    #html {
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={containerClass}>
                
                <section class={heroSectionClass}>
                    <h1 class={titleClass}>Be Productive and Get more done with our Apps</h1>
                    <p class={subtitleClass}>
                        Our easy to use apps provide you with tools to work smarter and faster with less mistakes.
                        We create tools for creative people to hack their productivity.
                    </p>
                    <div class={subscribeRowClass}>
                        <input type="email" placeholder="Enter your email address" class={inputClass} />
                        <button class={buttonClass}>Subscribe</button>
                    </div>
                </section>

                <section class={centeredColumnClass}>
                    <h1 style="margin-bottom: 0.5em;">Built For Everyone</h1>
                    <p style="max-width: 42em; opacity: 0.8;">
                        Our apps span multiple platforms & systems, We are constantly growing & Welcome everyone.
                    </p>
                    <div class={serviceContainerClass}>
                        { Service(page, "1.png", "individual icon", "For Individuals", "We offer a variety of apps to help individuals manage their personal tasks, notes and ideas.") }
                        { Service(page, "2.png", "teams icon", "For Teams", "Our apps are also perfect for teams looking to collaborate and increase productivity.") }
                        { Service(page, "3.png", "companies icon", "For Companies", "We understand the unique needs of companies and offer enterprise solutions to streamline operations.") }
                    </div>
                </section>

                <section class={splitSectionClass}>
                    <img src="assets/apps/123mind/screenshots/mindnode_screen.png" alt="MindNode Screenshot" class={responsiveImageClass} />
                    <div>
                        <h1>Qinetik - Innovative App Development</h1>
                        <p style="opacity: 0.8; line-height: 1.6;">
                            Welcome to Qinetik, a leading app development company. We specialize in creating innovative apps for individuals, teams, and companies.
                        </p>
                        { SimpleAccordion(page, "Welcome to Qinetik!", "We're the company behind those apps you've never heard of, like Timeline, easyToDo, Sketchable, and ShareAnything.") }
                        { SimpleAccordion(page, "Our Services", "We specialize in creating apps. if you're looking for a to-do list app or a sketching app, we've got you covered.") }
                        { SimpleAccordion(page, "Our Process", "It's simple really. We come up with an idea, spend a ton of money and time developing it, and release it to the world.") }
                    </div>
                </section>

                <section class={splitSectionClass}>
                    <div>
                        <h1>Simplify Your Workflow</h1>
                        <p style="opacity: 0.8; line-height: 1.6;">
                            At Qinetik, we understand the importance of working smartly and efficiently. Our apps are designed to help you work smarter, not harder.
                        </p>
                        <div class={appCardsContainerClass}>
                            { AppCard(page, "Timeline", "/apps/timeline/", timelineIcon) }
                            { AppCard(page, "123Mind", "/apps/123mind/", mindNodeIcon) }
                            { AppCard(page, "Quiznetik", "/apps/quiznetik/", quiznetikIcon) }
                            { AppCard(page, "Sketchable", "/apps/sketchable/", sketchableIcon, "sketchable.png") }
                            { AppCard(page, "EasyToDo", "/apps/easytodo/", easyToDoIcon, "easy_to_do.png") }
                            { AppCard(page, "PhotoEditor", "", photoEditorIcon) }
                        </div>
                    </div>
                    <img src="assets/images/app_dev_flow_chart.png" alt="Illustration" class={responsiveImageClass} />
                </section>

                <section class={whyChooseSectionClass}>
                    <h1>Why Choose Qinetik's Solutions</h1>
                    <p style="max-width: 42em; margin-bottom: 3em;">
                        Choose Qinetik for efficient, secure and customizable app solutions for productivity and collaboration.
                    </p>
                    <div class={serviceContainerClass}>
                        { ServiceColumn(page, "1.png", "Collaboration", "Our apps make collaboration easy with real-time updates.") }
                        { ServiceColumn(page, "2.png", "Efficiency", "Designed for best-in-class task management and speed.") }
                        { ServiceColumn(page, "3.png", "Security", "State-of-the-art encryption ensures your data is safe.") }
                    </div>
                </section>

                <section class={newsletterSectionClass}>
                    <h1 style="margin: 0;">Like our service? Subscribe us</h1>
                    <p style="margin: 0; opacity: 0.9;">We will send you emails about our new products and services.</p>
                    <div class={subscribeRowClass}>
                        <input type="email" placeholder="Enter your email address" class={inputClass} />
                        <button class={buttonClass} style="background-color: white; color: var(--primary-color);">Subscribe</button>
                    </div>
                </section>

            </main>
            { Footer(page) }
        </div>
    }
}

func Service(page : &mut HtmlPage, src : std::string_view, alt : std::string_view, heading : std::string_view, desc : std::string_view) {
    var rowClass = #css {
        display: flex;
        gap: 1.5em;
        text-align: left;
        max-width: 400px;
    }
    var servicesSrc = std::string("assets/services/")
    servicesSrc.append_view(src)
    #html {
        <div class={rowClass}>
            <img src={servicesSrc.data()} alt={alt.data()} style="width: 48px; height: 48px; margin-top: 0.5em;" />
            <div>
                <h3 style="margin: 0;">{ heading.data() }</h3>
                <p style="opacity: 0.8; line-height: 1.5;">{ desc.data() }</p>
            </div>
        </div>
    }
}

func ServiceColumn(page : &mut HtmlPage, src : std::string_view, heading : std::string_view, desc : std::string_view) {
    var colClass = #css {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 1em;
        max-width: 300px;
    }
    var iconsSrc = std::string("assets/icons/")
    iconsSrc.append_view(src)
    #html {
        <div class={colClass}>
            <img src={iconsSrc.data()} alt="icon" style="width: 48px; height: 48px;" />
            <h3 style="margin: 0;">{ heading.data() }</h3>
            <p style="opacity: 0.8; line-height: 1.5;">{ desc.data() }</p>
        </div>
    }
}

func AppCard(page : &mut HtmlPage, title : std::string_view, link : std::string_view, iconFn : (p : &mut HtmlPage) => void, iconSrc : std::string_view = "") {
    var cardClass = #css {
        display: flex;
        align-items: center;
        gap: 1em;
    }
    #html {
        <div class={cardClass}>
            {iconFn(page)}
            if (!link.empty()) {
                <a href={link.data()} style="font-weight: 600;">{ title.data() }</a>
            } else {
                <span style="font-weight: 600;">{ title.data() }</span>
            }
        </div>
    }
}

func SimpleAccordion(page : &mut HtmlPage, title : std::string_view, content : std::string_view) {
    var detailsClass = #css {
        margin-top: 1em;
        border-bottom: 1px solid #eee;
        padding-bottom: 0.5em;
        summary {
            cursor: pointer;
            font-weight: 600;
            padding: 0.5em 0;
            &:hover { color: var(--primary-color); }
        }
        p { padding: 0.5em 0; opacity: 0.8; line-height: 1.6; }
    }
    #html {
        <details class={detailsClass}>
            <summary>{title.data()}</summary>
            <p>{content.data()}</p>
        </details>
    }
}
