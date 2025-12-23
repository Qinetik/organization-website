public func DeleteDataRequestPage(page : &mut HtmlPage) {

    GlobalStyles(page);

    var containerClass = #css {
        width : 100%;
        display : flex;
        flex-direction:column;
        padding : 8rem 0;
        align-items:center;
        text-align: center;
    }
    var countdownClass = #css {
        font-size : 8rem;
        margin: 0.5em 0;
    }

    const deleteEmail = "support@qinetik.org"
    const deleteEmailLink = "mailto:support@qinetik.org"

    #html {
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={containerClass}>
                <h1>Account Removal Request</h1>
                <div class={countdownClass} id="countdown">3</div>
                <div class="message">
                    Please send an email to <a href={deleteEmailLink}>{deleteEmail}</a> 
                    to request removal of your account / data.
                </div>
            </main>
            { Footer(page) }
            <script>{"""
                (function() {
                    let count = 3;
                    const el = document.getElementById('countdown');
                    const interval = setInterval(() => {
                        count--;
                        if (count >= 0) {
                            el.innerText = count;
                        }
                        if (count === 0) {
                            clearInterval(interval);
                            window.location.href = 'mailto:"""}{deleteEmail}{"""';
                        }
                    }, 1000);
                })();
            """}</script>
        </div>
    }
}
