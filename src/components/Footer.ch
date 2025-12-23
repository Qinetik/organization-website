public func Footer(page : &mut HtmlPage) {
    var footerContainerClass = #css {
        width: 100%;
        padding: 4em 2em;
        box-sizing : border-box;
        display: flex;
        justify-content: space-evenly;
        flex-wrap : wrap;
        gap : 2em;
        align-items: flex-start;
        background-color: var(--footer-bg);
        margin-top: auto;
    }

    var sectionClass = #css {
        display: flex;
        flex-direction: column;
        gap: 1em;
        min-width: 200px;
    }

    var socialRowClass = #css {
        display: flex;
        align-items: center;
        gap: 0.5em;
        color: var(--text-color);
        &:hover {
            color: var(--primary-color);
        }
    }

    #html {
        <footer class={footerContainerClass}>
            <div class={sectionClass}>
                <div>
                    <div class="display-in-light">{ QinetikLogoDark(page) }</div>
                    <div class="display-in-dark">{ QinetikLogoLight(page) }</div>
                </div>
                <p>
                    <a href="/terms/">Terms of services</a> | <a href="/privacy/">Privacy</a>
                </p>
                <p>
                    Copyright &copy; Qinetik 2023
                    <br/>
                    All rights reserved
                </p>
            </div>
            
            <div class={sectionClass}>
                <h4>About Us</h4>
                <a href="/contact/">Customer Support</a>
                <a href="#">Copyright</a>
            </div>

            <div class={sectionClass}>
                <h4>Our Information</h4>
                <a href="/privacy/">Privacy Policy</a>
                <a href="/terms/">Terms &amp; Conditions</a>
            </div>

            <div class={sectionClass}>
                <h4>Connect</h4>
                <a href="https://www.facebook.com/qinetik/" target="_blank" class={socialRowClass}>
                    { FacebookIcon(page) }
                    <span>Facebook</span>
                </a>
                <a href="https://twitter.com/qinetikofficial" target="_blank" class={socialRowClass}>
                    { TwitterIcon(page) }
                    <span>Twitter</span>
                </a>
                <a href="https://github.com/Qinetik/" target="_blank" class={socialRowClass}>
                    <div class="display-in-dark">{ GithubIconWhite(page) }</div>
                    <div class="display-in-light">{ GithubIconBlack(page) }</div>
                    <span>Github</span>
                </a>
                <a href="https://linkedin.com/company/qinetik/" target="_blank" class={socialRowClass}>
                    { LinkedInIcon(page) }
                    <span>LinkedIn</span>
                </a>
            </div>
            { CookiesConsentDisplayer(page) }
        </footer>
    }
}
