public func WebAppBar(page : &mut HtmlPage) {
    var appBarClass = #css {
        height: 70px;
        width: 100%;
        background-color: var(--appbar-bg);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 2rem;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        position: sticky;
        top: 0;
        z-index: 1000;
        box-sizing: border-box;
        transition: background-color 0.3s ease;
    }

    var logoContainerClass = #css {
        display: flex;
        align-items: center;
        gap: 1rem;
    }

    var logoClass = #css {
        height: 36px;
        width: auto;
        transition: transform 0.2s ease;
        &:hover {
            transform: scale(1.05);
        }
    }

    var actionsClass = #css {
        display: flex;
        align-items: center;
        gap: 1rem;
    }

    #html {
        <header class={appBarClass}>
            <a href="/" class={logoContainerClass}>
                <img 
                    src="/logo.svg" 
                    alt="Qinetik Logo" 
                    class={logoClass}
                    style="display: var(--logo-light-display);"
                />
                <img 
                    src="/logo-dark.svg" 
                    alt="Qinetik Logo" 
                    class={logoClass}
                    style="display: var(--logo-dark-display);"
                />
                <span style="font-size: 1.5rem; font-weight: 600; color: var(--text-color);">Qinetik</span>
            </a>
            <div class={actionsClass}>
                { ThemeSwitcher(page) }
            </div>
        </header>
    }
}
