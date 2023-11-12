import {ParentProps} from "solid-js";
import {Column} from "@qinetik/anique";
import {WebAppBar} from "~/solid/components/AppBar";
import Footer from "~/solid/components/Footer";
import {createGlobalStyle} from "@qinetik/emotion";

const Global = createGlobalStyle`

    body {
        margin: 0;
    }

    .light .display-in-dark {
        display:none;
    }

    .dark .display-in-light {
        display:none;
    }
    
    .encapsulation {
        width : 100%;
        height : 100%;
    }

    footer a {
        text-decoration:none;
    }
`

export function PageContainer(props : ParentProps) {
    return (
        <Column class="encapsulation">

            <Global />

            <WebAppBar />

            <Column class="encapsulation">
                {props.children}
            </Column>

            <Footer />

        </Column>
    )
}