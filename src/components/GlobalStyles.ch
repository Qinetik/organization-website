public func GlobalStyles(page : &mut HtmlPage) {
    #html {
        <style>{"""
          :root {
            --bg-color: #ffffff;
            --text-color: #414042;
            --primary-color: #28b089;
            --secondary-color: #00aeef;
            --surface-color: #f5f7f8;
            --on-surface-color: #414042;
            --appbar-bg: #ffffff;
            --footer-bg: #f5f7f8;
          }

          .dark {
            --bg-color: #121212;
            --text-color: #ced8dd;
            --primary-color: #28b089;
            --secondary-color: #27aae1;
            --surface-color: #1e1e1e;
            --on-surface-color: #ced8dd;
            --appbar-bg: #121212;
            --footer-bg: #1e1e1e;
          }

          html, body {
            padding: 0;
            margin: 0;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            transition: background-color 0.3s ease, color 0.3s ease;
          }

          * {
            box-sizing: border-box;
          }

          a {
            color: var(--primary-color);
            text-decoration: none;
            transition: opacity 0.2s ease;
          }

          a:hover {
            opacity: 0.8;
          }

          .display-in-light { display: block; }
          .display-in-dark { display: none; }

          .dark .display-in-light { display: none; }
          .dark .display-in-dark { display: block; }

          @media (max-width: 768px) {
              .mobile-hide { display: none; }
          }
        """}</style>
        <head>
          <link rel="preconnect" href="https://fonts.googleapis.com" />
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
          <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet" />
          <script>{"""
            (function() {
                const theme = localStorage.getItem('anique-theme');
                if (theme === 'dark' || (!theme && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
                    document.documentElement.classList.add('dark');
                } else {
                    document.documentElement.classList.remove('dark');
                }
            })();
          """}</script>
        </head>
    }
}
