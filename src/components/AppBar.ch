public func WebAppBar(page : &mut HtmlPage) {
    var appBarClass = #css {
        height: 64px;
        width: 100%;
        background-color: var(--appbar-bg);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 24px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        position: sticky;
        top: 0;
        z-index: 1000;
        box-sizing: border-box;
    }

    var logoContainerClass = #css {
        display: flex;
        align-items: center;
    }

    var actionsClass = #css {
        display: flex;
        align-items: center;
        gap: 8px;
    }

    #html {
        <header class={appBarClass}>
            <div class={logoContainerClass}>
                <a href="/">
                    <div class="display-in-light">{ QinetikLogoDark(page) }</div>
                    <div class="display-in-dark">{ QinetikLogoLight(page) }</div>
                </a>
            </div>
            <div class={actionsClass}>
                { ThemeSwitcher(page) }
            </div>
        </header>
    }
}
