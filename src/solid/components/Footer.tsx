import {QinetikLogoDark, QinetikLogoLight} from "../icons/Logo";
import {styled} from "@qinetik/emotion";
import {Column, Icon, Row} from "@qinetik/anique";
import {FacebookIcon, GithubIconBlack, GithubIconWhite, LinkedInIcon, TwitterIcon} from "../icons/SocialIcons";

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

const RowA = styled(Row.withComponent("a"))`

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
                    <a href="/terms">Terms of services</a> | <a href="/privacy">Privacy</a>
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
                <a href={"/privacy"}>Privacy Policy</a>
                <a href="/terms">Terms &amp; Conditions</a>
            </Section>
            <Section gap={"2em"}>
                <h4>Connect</h4>
                <RowA gap={"1em"} href="https://www.facebook.com/qinetik/" target="_blank">
                    <FacebookIcon/>
                    <span>Facebook</span>
                </RowA>
                <RowA gap={"1em"} href="https://twitter.com/qinetikofficial" target="_blank">
                    <Icon>
                        <TwitterIcon/>
                    </Icon>
                    <span>Twitter</span>
                </RowA>
                <RowA gap={"1em"} href="https://github.com/Qinetik/" target="_blank">
                    <GithubIconWhite class={"display-in-dark"}/>
                    <GithubIconBlack class={"display-in-light"}/>
                    <span>Github</span>
                </RowA>
                <RowA gap={"1em"} href="https://linkedin.com/company/qinetik/" target="_blank">
                    <LinkedInIcon/>
                    <span>LinkedIn</span>
                </RowA>
            </Section>
        </FooterContainer>
    )
}