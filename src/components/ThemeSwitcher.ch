public func ThemeSwitcher(page : &mut HtmlPage) {
    var buttonClass = #css {
        background: var(--button-bg);
        border: 2px solid var(--button-border);
        border-radius: 50%;
        width: 44px;
        height: 44px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s ease;
        padding: 0;
        margin: 0;
        &:hover {
            background: var(--button-hover-bg);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        &:active {
            transform: translateY(0);
        }
    }

    var iconClass = #css {
        width: 24px;
        height: 24px;
        color: var(--text-color);
        transition: transform 0.3s ease;
    }

    #html {
        <button class={buttonClass} id="theme-toggle" aria-label="Toggle theme">
            <div class="display-in-light">
                {SunIcon(page)}
            </div>
            <div class="display-in-dark" style="color:white;">
                {MoonIcon(page)}
            </div>
        </button>
        <script>{"""
            // Check for saved theme preference or use system preference
            const savedTheme = localStorage.getItem('theme');
            const systemPrefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
            
            // Apply theme
            function applyTheme(theme) {
                const root = document.documentElement;
                const isDark = theme === 'dark' || (theme === 'system' && systemPrefersDark);
                
                root.classList.toggle('dark', isDark);
                root.style.setProperty('--logo-light-display', isDark ? 'none' : 'block');
                root.style.setProperty('--logo-dark-display', isDark ? 'block' : 'none');
                
                // Update theme color meta tag
                document.querySelector('meta[name="theme-color"]')
                    .setAttribute('content', isDark ? '#1a1a1a' : '#ffffff');
            }
            
            // Toggle theme
            document.getElementById('theme-toggle').addEventListener('click', () => {
                const root = document.documentElement;
                const isDark = root.classList.toggle('dark');
                const newTheme = isDark ? 'dark' : 'light';
                
                localStorage.setItem('theme', newTheme);
                applyTheme(newTheme);
            });
            
            // Initialize theme
            applyTheme(savedTheme || 'system');
            
            // Watch for system theme changes
            window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', e => {
                if (!savedTheme || savedTheme === 'system') {
                    applyTheme('system');
                }
            });
        """}</script>
    }
}
