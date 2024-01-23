import {createSignal, onMount} from "solid-js";
import {styled} from "@qinetik/emotion";
import {Anique, Button} from "@qinetik/anique";

const Container = styled.div`
    position : fixed;
    bottom : 0;
    left : 0;
    right : 0;
    width : 100%;
    height : 80px;
    display : flex;
    flex-direction : row;
    align-items : center;
    background  : ${Anique.colors.bg100};
    box-sizing : border-box;
    justify-content: space-between;
    padding : 0 2em;
`

export default function CookiesConsentDisplayer() {
    const [display, setDisplay] = createSignal(false)
    onMount(() => {
        const prefs = localStorage.getItem("cookies-pref")
        if(prefs == null) {
            setDisplay(true)
        }
    })
    function OkIt() {
        setDisplay(false)
        localStorage.setItem("cookies-pref", "ok")
    }
    return (
        <Container style={{ display : (display() ? "flex" : "none") }}>
            <span>
                We use cookies to improve your experience on our website. By browsing this website, you agree to our use of cookies.
            </span>
            <Button onClick={OkIt}>Ok</Button>
        </Container>
    )
}