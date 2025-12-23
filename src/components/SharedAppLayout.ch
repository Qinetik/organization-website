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
    // Define CSS variables for theming
    var rootVars = #css {
        html {
            --primary-color: #4f46e5;
            --primary-hover: #4338ca;
            --secondary-color: #7c3aed;
            --text-color: #1f2937;
            --text-secondary: #6b7280;
            --background-color: #ffffff;
            --surface-color: #f9fafb;
            --card-bg: #ffffff;
            --border-color: #e5e7eb;
            --appbar-bg: rgba(255, 255, 255, 0.8);
            --button-bg: var(--primary-color);
            --button-hover-bg: var(--primary-hover);
            --button-text: #ffffff;
            --button-border: transparent;
        }
        
        .dark {
            --text-color: #f3f4f6;
            --text-secondary: #9ca3af;
            --background-color: #111827;
            --surface-color: #1f2937;
            --card-bg: #1f2937;
            --border-color: #374151;
            --appbar-bg: rgba(17, 24, 39, 0.8);
            --button-bg: #4f46e5;
            --button-hover-bg: #4338ca;
            --button-border: #4f46e5;
        }
    }

    var pageClass = #css {
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        background-color: var(--background-color);
        color: var(--text-color);
        transition: background-color 0.3s ease, color 0.3s ease;
        line-height: 1.6;
    }

    var mainClass = #css {
        flex: 1;
        width: 100%;
        max-width: 1400px;
        margin: 0 auto;
        padding: 2rem 1.5rem;
        box-sizing: border-box;
        
        @media (min-width: 768px) {
            padding: 2rem 3rem;
        }
        
        @media (min-width: 1200px) {
            padding: 3rem 4rem;
        }
    }

    var heroClass = #css {
        text-align: center;
        padding: 3rem 1.5rem;
        background: var(--primary-color);
        color: white;
        border-radius: 1rem;
        margin: 1rem 0 4rem 0;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        position: relative;
        overflow: hidden;
        
        &::before {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 20% 20%, rgba(255,255,255,0.1) 0%, transparent 50%);
            pointer-events: none;
        }
        
        @media (min-width: 768px) {
            padding: 4rem 2rem;
            margin: 2rem 0 6rem 0;
        }
    }

    var titleClass = #css {
        font-size: 2.5rem;
        margin: 0 0 1rem 0;
        font-weight: 800;
        line-height: 1.2;
        position: relative;
        z-index: 1;
        text-shadow: 0 2px 4px rgba(0,0,0,0.1);
        
        @media (min-width: 768px) {
            font-size: 3.5rem;
        }
        
        @media (min-width: 1024px) {
            font-size: 4rem;
        }
    }

    var subtitleClass = #css {
        font-size: 1.25rem;
        opacity: 0.95;
        margin: 0 0 2.5rem 0;
        font-weight: 400;
        max-width: 800px;
        margin-left: auto;
        margin-right: auto;
        position: relative;
        z-index: 1;
        text-shadow: 0 1px 2px rgba(0,0,0,0.1);
        
        @media (min-width: 768px) {
            font-size: 1.5rem;
        }
    }

    var heroImageContainer = #css {
        position: relative;
        margin: 2rem auto 0;
        max-width: 90%;
        border-radius: 1rem;
        overflow: hidden;
        box-shadow: 0 20px 40px rgba(0,0,0,0.2);
        transform: translateY(0);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border: 1px solid rgba(255,255,255,0.1);
        
        &:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 50px rgba(0,0,0,0.3);
        }
        
        @media (min-width: 768px) {
            max-width: 80%;
            margin-top: 3rem;
        }
    }

    var heroImageClass = #css {
        width: 100%;
        height: auto;
        display: block;
        border-radius: 0.5rem;
    }

    var heroImageStyle = std::string()
    heroImageStyle.append_expr(`width: {heroImageWidth}px; max-width: 100%; height : auto;`);

    #html {
        <div class={pageClass}>
            <head>
                <link href='https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap' rel='stylesheet' />
                <style>{"""
                    * {
                        margin: 0;
                        padding: 0;
                        box-sizing: border-box;
                    }
                    
                    html {
                        scroll-behavior: smooth;
                    }
                    
                    body {
                        font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                        -webkit-font-smoothing: antialiased;
                        -moz-osx-font-smoothing: grayscale;
                        color: var(--text-color);
                        background-color: var(--background-color);
                        transition: background-color 0.3s ease, color 0.3s ease;
                    }
                    
                    a {
                        color: var(--primary-color);
                        text-decoration: none;
                        transition: color 0.2s ease;
                    }
                    
                    a:hover {
                        color: var(--primary-hover);
                    }
                    
                    h1, h2, h3, h4, h5, h6 {
                        font-weight: 700;
                        line-height: 1.2;
                        margin-bottom: 1rem;
                        color: var(--text-color);
                    }
                    
                    p {
                        margin-bottom: 1.5rem;
                        color: var(--text-secondary);
                    }
                    
                    .container {
                        width: 100%;
                        max-width: 1200px;
                        margin: 0 auto;
                        padding: 0 1.5rem;
                    }
                    
                    /* Utility classes */
                    .text-center { text-align: center; }
                    .mt-1 { margin-top: 0.5rem; }
                    .mt-2 { margin-top: 1rem; }
                    .mt-3 { margin-top: 1.5rem; }
                    .mt-4 { margin-top: 2rem; }
                    .mt-5 { margin-top: 3rem; }
                    .mb-1 { margin-bottom: 0.5rem; }
                    .mb-2 { margin-bottom: 1rem; }
                    .mb-3 { margin-bottom: 1.5rem; }
                    .mb-4 { margin-bottom: 2rem; }
                    .mb-5 { margin-bottom: 3rem; }
                    .py-3 { padding-top: 1.5rem; padding-bottom: 1.5rem; }
                    .py-4 { padding-top: 2rem; padding-bottom: 2rem; }
                    .py-5 { padding-top: 3rem; padding-bottom: 3rem; }
                    
                    /* Display utilities for theme toggling */
                    .display-in-light { display: var(--logo-light-display); }
                    .display-in-dark { display: var(--logo-dark-display); }
                    
                    /* Smooth transitions for theme changes */
                    * {
                        transition: background-color 0.3s ease, 
                                color 0.3s ease, 
                                border-color 0.3s ease, 
                                box-shadow 0.3s ease;
                    }
                    
                    /* Hide elements that should only be visible to screen readers */
                    .sr-only {
                        position: absolute;
                        width: 1px;
                        height: 1px;
                        padding: 0;
                        margin: -1px;
                        overflow: hidden;
                        clip: rect(0, 0, 0, 0);
                        white-space: nowrap;
                        border-width: 0;
                    }
                """}</style>
            </head>
            { WebAppBar(page) }
            <main class={mainClass}>
                <section class={heroClass}>
                    <h1 class={titleClass}>{title}</h1>
                    <p class={subtitleClass}>{subtitle}</p>
                    <div class={heroImageContainer}>
                        <img 
                            src={heroImage}
                            alt="App Screenshot" 
                            class={heroImageClass}
                            style={heroImageStyle.data()}
                        />
                    </div>
                </section>
                { demoSections(page) }
                { features(page) }
                { availableLinks(page) }
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
        padding: 5rem 0;
        gap: 3rem;
        position: relative;
        
        @media (min-width: 1024px) {
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
            padding: 7rem 0;
            gap: 5rem;
        }

    }
    
    var contentClass = #css {
        flex: 1;
        max-width: 600px;
        margin: 0 auto;
        text-align: center;
        
        @media (min-width: 1024px) {
            text-align: left;
            margin: 0;
            padding: 0 2rem;
        }
    }
    
    var titleClass = #css {
        font-size: 2rem;
        font-weight: 800;
        margin-bottom: 1.5rem;
        color: var(--text-color);
        line-height: 1.2;
        
        @media (min-width: 768px) {
            font-size: 2.5rem;
        }
    }
    
    var descriptionClass = #css {
        font-size: 1.125rem;
        line-height: 1.7;
        color: var(--text-secondary);
        margin-bottom: 2rem;
        
        @media (min-width: 768px) {
            font-size: 1.25rem;
        }
    }
    
    var imageContainerClass = #css {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
        max-width: 100%;
        
        @media (min-width: 1024px) {
            max-width: 50%;
        }
    }
    
    var imageClass = #css {
        width: 100%;
        max-width: 500px;
        height: auto;
        border-radius: 1rem;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border: 1px solid var(--border-color);
        
        &:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }
    }

    #html {
        <section class={sectionClass}>
            <div class={contentClass}>
                <h2 class={titleClass}>{ title.data() }</h2>
                <p class={descriptionClass}>{ description.data() }</p>
            </div>
            <div class={imageContainerClass}>
                <img 
                    src={image.data()} 
                    alt="App Screenshot" 
                    class={imageClass}
                    loading="lazy"
                />
            </div>
        </section>
    }
}

public func AppFeaturesRow(page : &mut HtmlPage) {
    var sectionClass = #css {
        width: 100%;
        padding: 5rem 0;
        background-color: var(--surface-color);
        border-radius: 1.5rem;
        margin: 3rem 0;
    }
    
    var containerClass = #css {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 2rem;
    }
    
    var titleClass = #css {
        text-align: center;
        font-size: 2.25rem;
        font-weight: 800;
        margin-bottom: 4rem;
        color: var(--text-color);
        
        @media (min-width: 768px) {
            font-size: 2.75rem;
            margin-bottom: 5rem;
        }
    }
    
    var featuresGridClass = #css {
        display: grid;
        grid-template-columns: {"repeat(3, 1fr)"};
        gap: 2rem;
    }
    
    var featureCardClass = #css {
        background: var(--card-bg);
        border-radius: 1rem;
        padding: 2.5rem 2rem;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
        border: 1px solid var(--border-color);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        
        &:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }
    }
    
    var featureIconClass = #css {
        width: 3.5rem;
        height: 3.5rem;
        display: flex;
        align-items: center;
        justify-content: center;
        background: var(--primary-color);
        color: white;
        border-radius: 1rem;
        margin-bottom: 1.5rem;
        
        svg {
            width: 1.75rem;
            height: 1.75rem;
        }
    }
    
    var featureTitleClass = #css {
        font-size: 1.25rem;
        font-weight: 700;
        margin-bottom: 1rem;
        color: var(--text-color);
    }
    
    var featureDescriptionClass = #css {
        color: var(--text-secondary);
        line-height: 1.7;
        font-size: 1rem;
        
        @media (min-width: 768px) {
            font-size: 1.05rem;
        }
    }

    #html {
        <section class={sectionClass}>
            <div class={containerClass}>
                <h2 class={titleClass}>Powerful Features</h2>
                <div class={featuresGridClass}>
                    <div class={featureCardClass}>
                        <div class={featureIconClass}>
                            { ThemeLightDarkIcon(page) }
                        </div>
                        <h3 class={featureTitleClass}>Light & Dark Mode</h3>
                        <p class={featureDescriptionClass}>
                            Switch between light and dark themes to reduce eye strain and save battery life on OLED displays.
                        </p>
                    </div>
                    
                    <div class={featureCardClass}>
                        <div class={featureIconClass}>
                            { CloudSyncOutlineIcon(page) }
                        </div>
                        <h3 class={featureTitleClass}>Cloud Sync</h3>
                        <p class={featureDescriptionClass}>
                            Keep your data in sync across all your devices with our secure cloud synchronization.
                        </p>
                    </div>
                    
                    <div class={featureCardClass}>
                        <div class={featureIconClass}>
                            { SyncCircleIcon(page) }
                        </div>
                        <h3 class={featureTitleClass}>Local Backup</h3>
                        <p class={featureDescriptionClass}>
                            Automatic local backups ensure you never lose your important data.
                        </p>
                    </div>
                </div>
            </div>
        </section>
    }
}

public func AppAvailableLinks(page : &mut HtmlPage, webLink : std::string_view, playStoreLink : std::string_view, windowsLink : std::string_view, docsLink : std::string_view) {
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
                <a href={webLink.data()} class={buttonClass} target="_blank">
                    { WorldWideWebIcon(page, "white") }
                    <span>Try on Web</span>
                </a>
            }
            if (!playStoreLink.empty()) {
                <a href={playStoreLink.data()} class={buttonClass} target="_blank">
                    { GooglePlayIcon(page, "white") }
                    <span>Download on Play Store</span>
                </a>
            }
            if (!windowsLink.empty()) {
                <a href={windowsLink.data()} class={buttonClass} target="_blank">
                    { MicrosoftWindowsIcon(page, "white") }
                    <span>Download for Windows</span>
                </a>
            }
            if (!docsLink.empty()) {
                <a href={docsLink.data()} style="margin-top: 1em; color: var(--text-color); opacity: 0.8;">Visit the docs</a>
            }
        </div>
    }
}
