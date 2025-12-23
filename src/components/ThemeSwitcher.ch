public func ThemeSwitcher(page : &mut HtmlPage) {
    var buttonClass = #css {
        background: transparent;
        border: none;
        cursor: pointer;
        padding: 8px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--text-color);
        transition: background-color 0.2s ease;
        &:hover {
            background-color: rgba(128, 128, 128, 0.1);
        }
    }

    #html {
        <button class={buttonClass} id="theme-toggle" title="Toggle Light/Dark Theme">
            { LightDarkIcon(page) }
        </button>
        <script>{"""
            document.getElementById('theme-toggle').addEventListener('click', () => {
                const isDark = document.documentElement.classList.toggle('dark');
                localStorage.setItem('anique-theme', isDark ? 'dark' : 'light');
            });
        """}</script>
    }
}
