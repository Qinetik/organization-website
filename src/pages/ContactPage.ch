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
