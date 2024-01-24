import {Anique, Headline, Size} from "@qinetik/anique";
import {styled} from "@qinetik/emotion";
import {PageContainer} from "~/solid/components/PageContainer";
import {A} from "@solidjs/router";

export default function QuiznetikRoute() {
    return (
        <PageContainer>
            <MainContainer>
                <MainSlide>
                    <Headline size={Size.Large}
                              style={{color: Anique.colors.onBg, "text-align": "center", "margin-top": "-1em"}}>
                        Meet Quiznetik
                    </Headline>
                    <Headline style={{color: Anique.colors.onBg, "text-align": "center", "margin-top": "0"}}>
                        A Quiz App
                    </Headline>
                    <A href={"https://quiz.qinetik.org"}>
                        <CustomMainButton>
                            Try Quiznetik
                        </CustomMainButton>
                    </A>
                </MainSlide>
            </MainContainer>
        </PageContainer>
    )
}

const CenteredColumn = styled("div")`
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
`

const MainSlide = styled(CenteredColumn)`
    padding-top: 2em;
    margin-bottom: 1em;

    ${Anique.breakpoints.up("sm")} {
        padding-top: 6em;
    }

    ${Anique.breakpoints.up("md")} {
        padding-top: 14em;
    }
`

const MainContainer = styled("div")`
    width: 100%;
    height: 30em;
    position: relative;
    background: ${Anique.colors.bg200};

    ${Anique.breakpoints.up("sm")} {
        height: 40em;
    }

    ${Anique.breakpoints.up("md")} {
        height: 40em;
    }
`

export const FeatureBox = styled("div")`
    width: 12em;
    height: 2em;
    border-radius: 1.5em;
    padding: 1em;
    margin: 1em;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    border: 2px solid ${Anique.colors.primary};
`

export const CustomMainButton = styled("button")`
    border-radius: 1.5em;
    height: 3.6em;
    text-align: center;
    text-decoration: none;
    opacity: 0.9;
    padding: 2em;
    border: 0;
    display: flex;
    flex-direction: row;
    align-items: center;
    cursor: pointer;
    margin: 0.5em;
    background: ${Anique.colors.primary};

    &:hover {
        opacity: 1;
    }
`