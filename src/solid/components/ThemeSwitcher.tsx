import {ColorScheme, getSystemColorScheme, saveThemeIntoLocalStorage} from "@qinetik/anique";
import {Size} from "@qinetik/anique";
import LightDarkIcon from "../icons/LightDarkIcon";
import {IconButton} from "@qinetik/anique";

export function ThemeSwitcher() {
    return (
        <IconButton
            onClick={() => {
                const prev = document.documentElement.className
                let next: ColorScheme
                if (prev == ColorScheme.Light) {
                    next = ColorScheme.Dark
                } else {
                    next = ColorScheme.Light
                }
                document.documentElement.className = next
                saveThemeIntoLocalStorage(next)
            }}
        >
            <LightDarkIcon/>
        </IconButton>
    )
}