import {createEffect} from "solid-js";
import {getSystemColorScheme, onSystemColorSchemeChange} from "@qinetik/anique";

export function AutoSystemColorScheme() {
    createEffect(() => {
        const userScheme = localStorage.getItem("theme-key")
        if(userScheme == null) {
            document.documentElement.className = getSystemColorScheme()
            onSystemColorSchemeChange((scheme) => {
                document.documentElement.className = scheme
            })
        } else {
            document.documentElement.className = userScheme
        }
    })
}