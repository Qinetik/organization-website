import {QinetikLogoDark, QinetikLogoLight} from "../icons/Logo";
import {styled} from "@qinetik/emotion";
import {Column, Icon, Row} from "@qinetik/anique";
import {FacebookIcon, GithubIconBlack, GithubIconWhite, LinkedInIcon, TwitterIcon} from "../icons/SocialIcons";
import {A} from "@solidjs/router";

const Section = styled(Column)`

`

const FooterContainer = styled(Row.withComponent("footer"))`
    width: 100%;
    padding: 2em;
    box-sizing : border-box;
    justify-content: space-evenly;
    flex-wrap : wrap;
    gap : 2em;
    align-items: start;
`

const RowA = styled(Row.withComponent(A))`

`

const RowExA = styled(Row.withComponent("a"))`

`

export default function Footer() {
    return (
        <FooterContainer>
            <Section>
                <div>
                    <QinetikLogoDark class={"display-in-light"}/>
                    <QinetikLogoLight class={"display-in-dark"}/>
                </div>
                <p>
                    <A href="/terms">Terms of services</A> | <A href="/privacy">Privacy</A>
                </p>
                <p>
                    Copyright &copy; Qinetik 2023
                    <br/>
                    All rights reserved
                </p>
            </Section>
            {/* TODO fix these links */}
            <Section gap={"2em"}>
                <h4>About Us</h4>
                <a>Customer Support</a>
                <a href="#">Copyright</a>
            </Section>
            <Section gap={"2em"}>
                <h4>Our Information</h4>
                <A href={"/privacy"}>Privacy Policy</A>
                <A href="/terms">Terms &amp; Conditions</A>
            </Section>
            <Section gap={"2em"}>
                <h4>Connect</h4>
                <RowExA gap={"1em"} href="https://www.facebook.com/qinetik/" target="_blank">
                    <FacebookIcon/>
                    <span>Facebook</span>
                </RowExA>
                <RowExA gap={"1em"} href="https://twitter.com/qinetikofficial" target="_blank">
                    <Icon>
                        <TwitterIcon/>
                    </Icon>
                    <span>Twitter</span>
                </RowExA>
                <RowExA gap={"1em"} href="https://github.com/Qinetik/" target="_blank">
                    <GithubIconWhite class={"display-in-dark"}/>
                    <GithubIconBlack class={"display-in-light"}/>
                    <span>Github</span>
                </RowExA>
                <RowExA gap={"1em"} href="https://linkedin.com/company/qinetik/" target="_blank">
                    <LinkedInIcon/>
                    <span>LinkedIn</span>
                </RowExA>
            </Section>
        </FooterContainer>
    )
}