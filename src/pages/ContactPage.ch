public func ContactPage(page : &mut HtmlPage) {

    GlobalStyles(page);

    var paddedColumnClass = #css {
        padding: 2em;
        @media (min-width: 768px) {
            padding: 4em;
        }
    }

    const supportMail = "support@qinetik.org"
    const supportMailLink = "mailto:support@qinetik.org"

    #html {
        <head>
            <title>Contact | Qinetik | App Development</title>
            <link rel="icon" href="/assets/favicon.png" type="image/png">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="Qinetik is a company that provides a variety of apps to help individuals manage their personal tasks, notes and ideas.">
        </head>
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={paddedColumnClass}>
                <h2>Contact Qinetik</h2>
                <p>
                    You can contact us at <a href={supportMailLink}>{supportMail}</a>
                </p>
            </main>
            { Footer(page) }
        </div>
    }
}
