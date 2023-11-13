import {Anique, Headline, Size} from "@qinetik/anique";
import {styled} from "@qinetik/emotion";
import ThemeLightDarkIcon from "@qinetik/mdi/ThemeLightDarkIcon";
import CloudSyncOutlineIcon from "@qinetik/mdi/CloudSyncOutlineIcon";
import SyncCircleIcon from "@qinetik/mdi/SyncCircleIcon";
import WorldWideWebIcon from "@qinetik/mdi/WorldWideWebIcon";
import MicrosoftWindowsIcon from "@qinetik/mdi/MicrosoftWindowsIcon";
import GooglePlayIcon from "@qinetik/mdi/GooglePlayIcon";
import {PageContainer} from "~/solid/components/PageContainer";

export default function easyToDoPage() {
    return (
        <PageContainer>
            <MainContainer>
                <MainSlide>
                    <Headline size={Size.Large}
                              style={{color: Anique.colors.onBg, "text-align": "center", "margin-top": "-1em"}}>
                        Meet easyToDo
                    </Headline>
                    <Headline style={{color: Anique.colors.onBg, "text-align": "center", "margin-top": "0"}}>
                        Task Management Tool
                    </Headline>
                    <MainDemoContainer>
                        <img
                            src={"/apps/easytodo/screenshots/demo (1).png"}
                            alt={"Demo First"}
                            width={450}
                        />
                    </MainDemoContainer>
                </MainSlide>
            </MainContainer>
            <ContentContainer>
                <DemoSectionOne/>
                <DemoSectionTwo/>
                <AllFeatures/>
                <AvailableSection/>
                <div style={{height: "2em"}}/>
            </ContentContainer>
        </PageContainer>
    )
}

const SecondaryHeading = styled("h2")`
    ${Anique.breakpoints.down("md")} {
        font-size: 2rem !important;
    }
`

const MainHeading = styled("h1")`
    ${props => Anique.breakpoints.down("md")} {
        font-size: 4rem !important;
    }
`

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

const MainDemoContainer = styled("div")`
    position: absolute;
    top: 30em;
    transform: translateY(-50%);

    ${Anique.breakpoints.up("sm")} {
        top: 40em;
    }

    ${Anique.breakpoints.up("md")} {
        top: 60em;
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
        height: 60em;
    }
`

const ContentContainer = styled("div")`
    margin-top: 30em;
`

const AllFeatures = styled((props) => {
    return (
        <div {...props}>
            <FeatureBox>
                <ThemeLightDarkIcon/>
                <FeatureText>
                    Light / Dark Theme
                </FeatureText>
            </FeatureBox>
            <FeatureBox>
                <CloudSyncOutlineIcon/>
                <FeatureText>
                    Cloud Auto Sync
                </FeatureText>
            </FeatureBox>
            <FeatureBox>
                <SyncCircleIcon/>
                <FeatureText>
                    Local Backup
                </FeatureText>
            </FeatureBox>
        </div>
    )
})`
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-width: 60%;
    max-width: 80%;
    margin: 2em auto;

    ${Anique.breakpoints.up("md")} {
        flex-direction: row;
        justify-content: space-between;
    }
`

const AvailableSection = () => {
    return (
        <CenteredColumn>
            <span style={{color: Anique.colors.primary}}>
                Available Now
            </span>
            {/*<a href="https://qinetik.github.io/easyToDo-web" style={{"text-decoration": "none"}} target={"_blank"}>*/}
            {/*    <CustomMainButton style={{width: "270px"}}>*/}
            {/*        <WorldWideWebIcon/>*/}
            {/*        <span style={{*/}
            {/*            width: "100%",*/}
            {/*            color: "white",*/}
            {/*            "margin-left": "1em",*/}
            {/*        }}>*/}
            {/*            Try on Web*/}
            {/*        </span>*/}
            {/*    </CustomMainButton>*/}
            {/*</a>*/}
            <a href="https://play.google.com/store/apps/details?id=com.wakaztahir.easytodo"
               style={{"text-decoration": "none"}} target={"_blank"}>
                <CustomMainButton style={{width: "270px"}}>
                    <GooglePlayIcon/>
                    <span style={{
                        width: "100%",
                        color: "white",
                        "margin-left": "1em"
                    }}>
                    Download on Play Store
                </span>
                </CustomMainButton>
            </a>
            {/*<a href="https://github.com/codeckle/easyToDo-kmp/releases/download/1.0.19/easyToDo-1.0.19.msi"*/}
            {/*   style={{"text-decoration": "none"}} target={"_blank"}>*/}
            {/*    <CustomMainButton style={{width: "270px"}}>*/}
            {/*        <MicrosoftWindowsIcon/>*/}
            {/*        <span style={{*/}
            {/*            width: "100%",*/}
            {/*            color: "white",*/}
            {/*            "margin-left": "1em"*/}
            {/*        }}>*/}
            {/*        Download for Windows*/}
            {/*    </span>*/}
            {/*    </CustomMainButton>*/}
            {/*</a>*/}
        </CenteredColumn>
    )
}

const DemoSectionOne = () => {
    return (
        <DemoContainer>
            <DemoText>
                <h3 style={{"text-align": "center"}}>
                    Create Lists Fast
                </h3>
                <br/>
                <p style={{"text-align": "center"}}>
                    Since easyToDo is literally easy, Its very fast to create tasks and lists
                    on the app. You can create lists and tasks in a matter of seconds.
                    You can also create subtasks and details for each task.
                </p>
            </DemoText>
            <DemoImage>
                <img
                    src={"/apps/easytodo/screenshots/demo (2).png"}
                    alt={"Demo Second"}
                    width={450}
                />
            </DemoImage>
        </DemoContainer>
    )
}

const DemoSectionTwo = styled((props) => {
    return (
        <DemoContainer {...props}>
            <DemoImage>
                <img
                    src={"/apps/easytodo/screenshots/demo (3).png"}
                    alt={"Demo Third"}
                    width={450}
                />
            </DemoImage>
            <DemoText>
                <h3 style={{"text-align": "center"}}>
                    Organize and Prioritize
                </h3>
                <br/>
                <p style={{"text-align": "center"}}>
                    You can prioritize items, mark them as important and even add due dates.
                    You can also organize your tasks into lists and even add colors to them.
                    You can add reminder to each task. Tags for organization,
                    Set repition of the reminder
                </p>
            </DemoText>
        </DemoContainer>
    )
})`
    flex-direction: column-reverse;

    ${Anique.breakpoints.up("sm")} {
        flex-direction: row;
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

export const FeatureText = styled("span")`
    font-family: 'Roboto', 'sans-serif';
    padding-left: 1em;
    color: ${Anique.colors.primary};
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

export const DemoContainer = styled("div")`
    display: flex;
    flex-direction: column;
    padding: 1em 4em;
    justify-content: center;
    align-items: center;

    ${Anique.breakpoints.up("sm")} {
        flex-direction: row;
    }
`

export const DemoText = styled("div")`
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
`

export const DemoImage = styled("div")`

`