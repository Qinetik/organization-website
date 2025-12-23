public func TermsPage(page : &mut HtmlPage) {

    GlobalStyles(page);

    var paddedColumnClass = #css {
        padding: 2em;
        @media (min-width: 768px) {
            padding: 4em;
        }
        h2, h3 { margin-top: 1.5em; }
        p, li { line-height: 1.6; opacity: 0.8; }
        ul { margin-left: 1.5em; }
    }

    #html {
        <head>
            <title>Terms | Qinetik | App Development</title>
            <link rel="icon" href="/assets/favicon.png" type="image/png">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="Qinetik is a company that provides a variety of apps to help individuals manage their personal tasks, notes and ideas.">
        </head>
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={paddedColumnClass}>
                <h2>Qinetik's Terms of Services</h2>
                <h3>1. Terms</h3>
                <p>
                    By accessing this Website / Using the app, you are agreeing to be
                    bound by these Website Terms and Conditions of Use and agree that
                    you are responsible for the agreement with any applicable local
                    laws. If you disagree with any of these terms, you are prohibited
                    from accessing this site. The materials contained in this Website
                    are protected by copyright and trade mark law.
                </p>
                <h3>2. Use License</h3>
                <p>
                    Permission is granted to temporarily download one copy of the
                    materials on Qinetik's Website for personal, non-commercial
                    transitory viewing only. This is the grant of a license, not a
                    transfer of title, and under this license you may not:
                </p>
                <ul>
                    <li>modify or copy the materials;</li>
                    <li>
                        use the materials for any commercial purpose or for any public
                        display
                    </li>
                    <li>
                        attempt to reverse engineer any software contained on Qinetik's
                        Website
                    </li>
                    <li>
                        remove any copyright or other proprietary notations from the
                        materials or
                    </li>
                    <li>
                        transferring the materials to another person or "mirror" the
                        materials on any other server.
                    </li>
                </ul>
                <p>
                    This will let Qinetik terminate upon violations of any of these
                    restrictions. Upon termination, your viewing right will also be
                    terminated and you should destroy any downloaded materials in your
                    possession whether it is printed or electronic format.
                </p>
                <h3>3. Disclaimer</h3>
                <p>
                    All the materials on Qinetik’s Website are provided "as is".
                    Qinetik makes no warranties, may it be expressed or implied,
                    therefore negates all other warranties.
                </p>

                <h3>4. Limitations</h3>
                <p>
                    Qinetik or its suppliers will not be held accountable for any
                    damages that will arise with the use or inability to use the
                    materials on Qinetik’s Website, even if Qinetik or an authorized
                    representative of this Website has been notified of the possibility of such damage.
                </p>

                <h3>5. Revisions and Errata</h3>
                <p>
                    The materials appearing on Qinetik’s Website may include technical,
                    typographical, or photographic errors. Qinetik may change the materials 
                    contained on its Website at any time without notice.
                </p>

                <h3>6. Links</h3>
                <p>
                    Qinetik has not reviewed all of the sites linked to its Website and
                    is not responsible for the contents of any such linked site.
                </p>

                <h3>7. Site Terms of Use Modifications</h3>
                <p>
                    Qinetik may revise these Terms of Use for its Website at any time
                    without prior notice.
                </p>

                <h3>8. Your Privacy</h3>
                <p>Please read our <a href="/privacy/">Privacy Policy.</a></p>

                <h3>9. Governing Law</h3>
                <p>
                    Any claim related to Qinetik's Website shall be governed by the
                    laws of UK without regards to its conflict of law provisions.
                </p>
            </main>
            { Footer(page) }
        </div>
    }
}
