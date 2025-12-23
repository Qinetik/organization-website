public func NotFoundPage(page : &mut HtmlPage) {
    
    GlobalStyles(page);

    var containerClass = #css {
        width: 100%;
        height: 60vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        padding: 2em;
    }

    #html {
        <head>
            <title>404 | Qinetik | App Development</title>
            <link rel="icon" href="/assets/favicon.png" type="image/png">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="Qinetik is a company that provides a variety of apps to help individuals manage their personal tasks, notes and ideas.">
        </head>
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={containerClass}>
                <h1 style="font-size: 8rem; margin: 0; color: var(--primary-color);">404</h1>
                <h2>Page Not Found</h2>
                <p style="opacity: 0.8; margin-top: 1em;">
                    The page you are looking for doesn't exist or has been moved.
                </p>
                <a href="/" style="margin-top: 2em; background: var(--primary-color); color: white; padding: 1em 2em; border-radius: 8px; text-decoration: none; font-weight: 600;">
                    Go back home
                </a>
            </main>
            { Footer(page) }
        </div>
    }
}
