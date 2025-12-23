public func CookiesConsentDisplayer(page : &mut HtmlPage) {
    var containerClass = #css {
        position : fixed;
        bottom : 0;
        left : 0;
        right : 0;
        width : 100%;
        min-height : 80px;
        display : none;
        flex-direction : row;
        align-items : center;
        background  : var(--surface-color);
        box-sizing : border-box;
        justify-content: space-between;
        padding : 0 2em;
        z-index: 2000;
        box-shadow: 0 -2px 10px rgba(0,0,0,0.1);
        @media (max-width: 768px) {
            flex-direction: column;
            padding: 1em;
            gap: 1em;
            text-align: center;
        }
    }

    var buttonClass = #css {
        background-color: var(--primary-color);
        color: white;
        border: none;
        padding: 8px 16px;
        border-radius: 4px;
        cursor: pointer;
        font-weight: 600;
        &:hover {
            opacity: 0.9;
        }
    }

    #html {
        <div class={containerClass} id="cookie-consent">
            <span>
                We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.
            </span>
            <button class={buttonClass} id="cookie-ok">Ok</button>
        </div>
        <script>{"""
            (function() {
                const consent = localStorage.getItem('cookies-pref');
                const element = document.getElementById('cookie-consent');
                if (!consent) {
                    element.style.display = 'flex';
                }
                document.getElementById('cookie-ok').addEventListener('click', () => {
                    element.style.display = 'none';
                    localStorage.setItem('cookies-pref', 'ok');
                });
            })();
        """}</script>
    }
}
