public func MDIIcon(page : &mut HtmlPage, path : std::string_view, fill : std::string_view = "currentColor") {
    #html {
        <svg viewBox="0 0 24 24" width="24" height="24">
            <path d={path} fill={fill}></path>
        </svg>
    }
}

public func ThemeLightDarkIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M7,3A4,4 0 0,0 3,7A4,4 0 0,0 7,11A4,4 0 0,0 11,7A4,4 0 0,0 7,3M13,1C11.83,1 10.68,1.25 9.6,1.72C11.16,2.54 12.37,3.95 12.93,5.65C13.5,7.34 13.35,9.15 12.56,10.77C13.88,10.92 15.29,10.5 16.5,9.5C19.55,14.03 17.82,20 12.5,20C10.7,20 9,19.5 7.5,18.5C7.29,18.8 7.07,19.1 6.8,19.4C9.8,22.2 14.5,23.3 18.25,21.5C21.75,19.75 23.25,15.1 21.5,11.5C20.36,9.17 18.27,7.21 15.75,6.1C16.5,4.78 16.7,3.38 16.4,2C15.43,1.38 14.28,1 13,1Z", fill)
}

public func CloudSyncOutlineIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M11,18H9V16H11M13,18H12V16H13M15,18H14V16H15M17,18H16V16H17M19,18H18V16H19M21,18H20V16H21V18M21,14H20V12H21V14M21,10H20V8H21V10M21,6H20V4H21V6M19,2H5C3.9,2 3,2.9 3,4V10C1.84,10 0.79,10.37 0,11C0.58,12.71 1.78,14.15 3.3,14.86V15C3.3,16.6 4.6,18 6.2,18H8.8C9.5,18 10.2,17.76 10.8,17.38C10.97,17.44 11.16,17.5 11.33,17.5C11.66,17.5 12,17.43 12.33,17.31C13.1,17.59 13.9,17.75 14.7,17.75L15.3,17.75C17.7,17.75 19.8,16.5 21,14.5V10.5C21.9,10.08 22.76,9.3 23.38,8.38C23.63,8 23.83,7.6 24,7C23.21,6.37 22.16,6 21,6V4H19V2M19,4V6H21C21.5,6.2 21.9,6.5 22.25,6.8L21,6.88C20.46,7 19.88,7 19.3,7L19,7V4M5,4H7V6H5V4M5,8H7V10H5V8M5,12H7V14H5V12M19,8V10H17V8H19Z", fill)
}

public func SyncCircleIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M12,2C6.48,2 2,6.48 2,12C2,17.52 6.48,22 12,22C17.52,22 22,17.52 22,12C22,6.48 17.52,2 12,2M16.24,7.76C15.1,6.62 13.56,6 12,6C8.88,6 6.24,8.65 6.02,11.72L8.03,11.7C8.16,9.75 9.87,8.22 12,8.22C13.25,8.22 14.3,8.71 15.08,9.5L13,11H18V6L16.24,7.76M7.76,16.24C8.9,17.38 10.44,18 12,18C15.12,18 17.76,15.35 17.98,12.28L15.97,12.3C15.84,14.25 14.13,15.78 12,15.78C10.75,15.78 9.7,15.29 8.92,14.5L11,13H6V18L7.76,16.24Z", fill)
}

public func WorldWideWebIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M4,12A8,8 0 0,1 12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20A8,8 0 0,1 4,12M12,6.7L15,10H9L12,6.7M12,17.3L9,14H15L12,17.3M16,11L20.84,12L16,13L16,11M3.16,12L8,11L8,13L3.16,12Z", fill)
}

public func MicrosoftWindowsIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M4,20H10V14H4M11,20H20V14H11M4,13H10V4H4M11,4V13H20V4", fill)
}

public func GooglePlayIcon(page : &mut HtmlPage, fill : std::string_view = "currentColor") {
    MDIIcon(page, "M3,2.5L13,12L3,21.5V2.5M14,13L18.5,17.5L21,12L18.5,6.5L14,11V13M3,2.5V21.5L5,20.5L14,12L5,3.5L3,2.5Z", fill)
}
