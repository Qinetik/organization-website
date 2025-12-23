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
                <svg class={iconClass} viewBox="0 0 24 24">
                    <path fill="currentColor" d="M12,18C11.11,18 10.26,17.8 9.5,17.45C11.97,15.5 13.5,12.5 13.5,9.5C13.5,8.7 13.4,7.95 13.2,7.25C14.5,8.15 15.5,9.5 15.5,11C15.5,13.9 13.4,16.25 10.5,16.25C9.5,16.25 8.6,16 7.8,15.5C7.93,16.03 8.13,16.55 8.4,17C9.28,18.2 10.6,19 12,19C13.4,19 14.72,18.2 15.6,17C16.47,15.8 17,14.45 17,13C17,12.03 16.8,11.1 16.45,10.25C16.8,10.1 18.5,10.5 18.5,10.5C18.5,10.5 19,12.5 19,13.5C19,15.8 17.5,17.7 15.5,18.5C14.5,18.85 13.3,19 12,19C10.7,19 9.5,18.85 8.5,18.5C6.5,17.7 5,15.8 5,13.5C5,11.2 6.5,9.3 8.5,8.5C9.5,8.15 10.7,8 12,8C12.1,8 12.2,8 12.3,8C11.7,6.9 11,6 10.2,5.3C9.5,4.6 8.7,4 7.8,3.5C7.1,4.2 6.5,5 6,5.9C5.5,6.8 5.1,7.8 5,8.9C4.9,10 5,11.1 5.3,12.1C5.5,12.9 5.8,13.7 6.2,14.4C6.6,15.1 7.1,15.7 7.7,16.2C7.2,15.8 6.8,15.3 6.5,14.7C6.2,14.1 6,13.5 5.9,12.8C5.8,12.1 5.8,11.4 5.9,10.7C6,10 6.2,9.3 6.5,8.7C6.8,8.1 7.2,7.6 7.7,7.2C8.2,6.8 8.8,6.5 9.4,6.3C9.7,6.2 10,6.1 10.3,6C10.6,5.9 10.9,5.9 11.2,5.9C11.5,5.9 11.8,5.9 12.1,6C12.4,6.1 12.7,6.2 13,6.3C13.6,6.5 14.2,6.8 14.7,7.2C15.2,7.6 15.6,8.1 15.9,8.7C16.2,9.3 16.4,10 16.5,10.7C16.6,11.4 16.6,12.1 16.5,12.8C16.4,13.5 16.2,14.1 15.9,14.7C15.6,15.3 15.2,15.8 14.7,16.2C15.3,15.7 15.8,15.1 16.2,14.4C16.6,13.7 16.9,12.9 17.1,12.1C17.3,11.3 17.4,10.5 17.4,9.7C17.4,8.9 17.2,8.1 16.9,7.4C16.6,6.7 16.2,6 15.7,5.4C15.2,4.8 14.6,4.3 13.9,3.9C13.2,3.5 12.4,3.2 11.6,3.1C10.8,3 10,3.1 9.2,3.3C8.4,3.5 7.7,3.9 7,4.4C6.3,4.9 5.7,5.5 5.2,6.2C4.7,6.9 4.4,7.7 4.2,8.5C4,9.3 4,10.1 4.1,10.9C4.2,11.7 4.5,12.5 4.9,13.2C5.3,13.9 5.8,14.5 6.4,15C5.8,14.1 5.4,13.1 5.2,12C5,10.9 5,9.8 5.2,8.7C5.4,7.6 5.8,6.6 6.4,5.7C7,4.8 7.8,4.1 8.7,3.6C9.6,3.1 10.6,2.8 11.7,2.8C12.8,2.8 13.8,3.1 14.7,3.6C15.6,4.1 16.4,4.8 17,5.7C17.6,6.6 18,7.6 18.2,8.7C18.4,9.8 18.4,10.9 18.2,12C18,13.1 17.6,14.1 17,15C16.4,15.9 15.6,16.6 14.7,17.1C13.8,17.6 12.8,17.9 11.7,17.9C10.6,17.9 9.6,17.6 8.7,17.1C7.8,16.6 7,15.9 6.4,15Z"/>
                </svg>
            </div>
            <div class="display-in-dark">
                <svg class={iconClass} viewBox="0 0 24 24">
                    <path fill="currentColor" d="M12,2A7,7 0 0,1 19,9C19,11.38 17.81,13.47 16,14.74V17A1,1 0 0,1 15,18H9A1,1 0 0,1 8,17V14.74C6.19,13.47 5,11.38 5,9A7,7 0 0,1 12,2M9,21V20H15V21A1,1 0 0,1 14,22H10A1,1 0 0,1 9,21M12,4A5,5 0 0,0 7,9C7,11.05 8.23,12.81 10,13.58V16H14V13.58C15.77,12.81 17,11.05 17,9A5,5 0 0,0 12,4Z"/>
                </svg>
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
