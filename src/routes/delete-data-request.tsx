import {createSignal, onMount} from "solid-js";
import {PageContainer} from "~/solid/components/PageContainer";
import {createGlobalStyle} from "@qinetik/emotion";

const Global = createGlobalStyle`
    .container {
        width : 100%;
        height : 100%;
        display : flex;
        flex-direction:column;
        padding : 8rem 0;
        align-items:center;
    }
    .countdown {
        font-size : 8rem;
    }
`

export default function DeleteDataRequest() {

    const [count, setCount] = createSignal(3)
    const deleteEmail = "support@qinetik.org"

    onMount(() => {
        let counter = 3;
        const interval = setInterval(function () {
            setCount(counter)
            counter--;
            if (counter < 0) {
                clearInterval(interval);
                window.location.href = `mailto:${deleteEmail}`;
            }
        }, 1000);
    })

    return (
        <PageContainer>
            <Global />
            <div class="container">
                <h1>Account Removal Request</h1>
                <div class="countdown">{count()}</div>
                <div class="message">
                    Please send an email to <a class="email-link"
                                               href={`mailto:${deleteEmail}`}>{deleteEmail}</a> to request
                    removal of your account / data.
                </div>
            </div>
        </PageContainer>
    )
}