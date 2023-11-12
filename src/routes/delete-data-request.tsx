import {onMount} from "solid-js";
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

    onMount(() => {
        function countdown() {
            let counter = 3;
            const countdownElement = document.querySelector('.countdown')!;
            const interval = setInterval(function () {
                countdownElement.textContent = counter.toString();
                counter--;
                if (counter < 0) {
                    clearInterval(interval);
                    window.location.href = 'mailto:wakazbix@gmail.com';
                }
            }, 1000);
        }

        countdown();
    })

    return (
        <PageContainer>
            <Global />
            <div class="container">
                <h1>Account Removal Request</h1>
                <div class="countdown">3</div>
                <div class="message">
                    Please send an email to <a class="email-link"
                                               href="mailto:wakazbix@gmail.com">wakazbix@gmail.com</a> to request
                    removal of your account / data.
                </div>
            </div>
        </PageContainer>
    )
}