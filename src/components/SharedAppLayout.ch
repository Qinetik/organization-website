public func SharedAppLayout(
    page : &mut HtmlPage, 
    title : std::string_view, 
    subtitle : std::string_view, 
    heroImage : std::string_view, 
    heroImageWidth : int,
    bgColor : std::string_view = "var(--surface-color)",
    demoSections : std::function<(p : &mut HtmlPage) => void>,
    features : std::function<(p : &mut HtmlPage) => void>,
    availableLinks : std::function<(p : &mut HtmlPage) => void>
) {
    var mainContainerClass = #css {
        width: 100%;
        height: 30em;
        position: relative;
        background: { bgColor };
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 4em;
        @media (min-width: 600px) { height: 40em; padding-top: 6em; }
        @media (min-width: 900px) { height: 60em; padding-top: 10em; }
    }

    var heroTitleClass = #css {
        font-size: 3rem;
        margin: 0;
        text-align: center;
        @media (min-width: 768px) { font-size: 4rem; }
    }

    var heroSubtitleClass = #css {
        font-size: 1.5rem;
        margin: 0.5em 0;
        text-align: center;
        opacity: 0.8;
    }

    var heroImageContainerClass = #css {
        position: absolute;
        bottom: -20em;
        left: 50%;
        transform: translateX(-50%);
        z-index: 10;
        @media (min-width: 600px) { bottom: -25em; }
        @media (min-width: 900px) { bottom: -35em; }
    }

    var contentContainerClass = #css {
        margin-top: 25em;
        @media (min-width: 600px) { margin-top: 30em; }
        @media (min-width: 900px) { margin-top: 40em; }
    }

    #html {
        <div class="encapsulation">
            { WebAppBar(page) }
            <div class={mainContainerClass}>
                <h1 class={heroTitleClass}>{ title }</h1>
                <p class={heroSubtitleClass}>{ subtitle }</p>
                if (!heroImage.empty()) {
                    <div class={heroImageContainerClass}>
                        <img src={heroImage} alt="Hero" />
                    </div>
                }
            </div>
            <main class={contentContainerClass}>
                {demoSections(page)}
                {features(page)}
                {availableLinks(page)}
                <div style="height: 4em;"></div>
            </main>
            { Footer(page) }
        </div>
    }
}

public func AppDemoSection(page : &mut HtmlPage, title : std::string_view, description : std::string_view, image : std::string_view, reverse : bool = false) {
    var sectionClass = #css {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 4em 2em;
        gap: 2em;
        @media (min-width: 768px) {
            text-align: left;
            justify-content: center;
        }
    }
    var textClass = #css {
        max-width: 500px;
        text-align: center;
        @media (min-width: 768px) { text-align: left; }
    }
    var imgClass = #css {
        width: 100%;
        max-width: 500px;
        height: auto;
    }

    #html {
        <section class={sectionClass}>
            <div class={textClass}>
                <h2>{ title }</h2>
                <p style="opacity: 0.8; line-height: 1.6;">{ description }</p>
            </div>
            <img src={image} alt="Demo" class={imgClass} />
        </section>
    }
}

public func AppFeaturesRow(page : &mut HtmlPage) {
    var featuresRowClass = #css {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 2em;
        padding: 4em 2em;
        @media (min-width: 768px) {
            flex-direction: row;
            justify-content: center;
        }
    }
    var featureBoxClass = #css {
        display: flex;
        align-items: center;
        gap: 1em;
        padding: 1em 2em;
        border: 2px solid var(--primary-color);
        border-radius: 50px;
        color: var(--primary-color);
        font-weight: 600;
        min-width: 200px;
        justify-content: center;
    }

    #html {
        <div class={featuresRowClass}>
            <div class={featureBoxClass}>
                { ThemeLightDarkIcon(page) }
                <span>Light / Dark Theme</span>
            </div>
            <div class={featureBoxClass}>
                { CloudSyncOutlineIcon(page) }
                <span>Cloud Auto Sync</span>
            </div>
            <div class={featureBoxClass}>
                { SyncCircleIcon(page) }
                <span>Local Backup</span>
            </div>
        </div>
    }
}

public func AppAvailableLinks(page : &mut HtmlPage, webLink : std::string_view = "", playStoreLink : std::string_view = "", windowsLink : std::string_view = "", docsLink : std::string_view = "") {
    var containerClass = #css {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 1em;
        padding: 4em 2em;
    }
    var buttonClass = #css {
        display: flex;
        align-items: center;
        gap: 1em;
        background-color: var(--primary-color);
        color: white;
        text-decoration: none;
        padding: 1em 2em;
        border-radius: 50px;
        width: 300px;
        font-weight: 600;
        &:hover { opacity: 0.9; }
    }

    #html {
        <div class={containerClass}>
            <span style="color: var(--primary-color); font-weight: 600; margin-bottom: 1em;">Available Now</span>
            if (!webLink.empty()) {
                <a href={webLink} class={buttonClass} target="_blank">
                    { WorldWideWebIcon(page, "white") }
                    <span>Try on Web</span>
                </a>
            }
            if (!playStoreLink.empty()) {
                <a href={playStoreLink} class={buttonClass} target="_blank">
                    { GooglePlayIcon(page, "white") }
                    <span>Download on Play Store</span>
                </a>
            }
            if (!windowsLink.empty()) {
                <a href={windowsLink} class={buttonClass} target="_blank">
                    { MicrosoftWindowsIcon(page, "white") }
                    <span>Download for Windows</span>
                </a>
            }
            if (!docsLink.empty()) {
                <a href={docsLink} style="margin-top: 1em; color: var(--text-color); opacity: 0.8;">Visit the docs</a>
            }
        </div>
    }
}
