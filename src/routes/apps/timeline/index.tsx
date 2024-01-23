import {Anique, Headline, Size, UnstyledLink} from "@qinetik/anique";
import {styled} from "@qinetik/emotion";
import ThemeLightDarkIcon from "@qinetik/mdi/ThemeLightDarkIcon";
import CloudSyncOutlineIcon from "@qinetik/mdi/CloudSyncOutlineIcon";
import SyncCircleIcon from "@qinetik/mdi/SyncCircleIcon";
import WorldWideWebIcon from "@qinetik/mdi/WorldWideWebIcon";
import MicrosoftWindowsIcon from "@qinetik/mdi/MicrosoftWindowsIcon";
import GooglePlayIcon from "@qinetik/mdi/GooglePlayIcon";
import {PageContainer} from "~/solid/components/PageContainer";
import {A} from "@solidjs/router";

export default function TimelinePage() {

    const theme = Anique

    return (
        <PageContainer>
            <MainContainer>
                <MainSlide>
                    <Headline size={Size.Large}
                              style={{color: theme.colors.onBg, "text-align": "center", "margin-top": "-1em"}}>
                        Meet <span style={{background: theme.colors.accent}}>T</span>imeline
                    </Headline>
                    <Headline style={{color: theme.colors.onBg, "text-align": "center", "margin-top": "0"}}>
                        A Note Taking Tool
                    </Headline>
                    <MainDemoContainer>
                        <img
                            src={"/apps/timeline/screenshots/demo-1.png"}
                            alt={"Demo First"}
                            width={1000}
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

    const theme = Anique

    return (
        <CenteredColumn>
            <span style={{color: theme.colors.primary}}>
                Available Now
            </span>
            <a href="https://qinetik.github.io/timeline-web" style={{"text-decoration": "none"}} target={"_blank"}>
                <CustomMainButton style={{width: "270px"}}>
                    <WorldWideWebIcon/>
                    <span style={{
                        width: "100%",
                        color: "white",
                        "margin-left": "1em",
                    }}>
                        Try on Web
                    </span>
                </CustomMainButton>
            </a>
            <a href="https://play.google.com/store/apps/details?id=com.wakaztahir.timeline"
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
            <a href="https://github.com/codeckle/timeline-kmp/releases/download/1.0.19/Timeline-1.0.19.msi"
               style={{"text-decoration": "none"}} target={"_blank"}>
                <CustomMainButton style={{width: "270px"}}>
                    <MicrosoftWindowsIcon/>
                    <span style={{
                        width: "100%",
                        color: "white",
                        "margin-left": "1em"
                    }}>
                    Download for Windows
                </span>
                </CustomMainButton>
            </a>
            <Link href={"/docs/timeline"}>
                Visit the docs
            </Link>
        </CenteredColumn>
    )
}

const Link = styled(A)`
    color: ${Anique.colors.onBg200};
    text-decoration: none;
    margin-top: 1em;
`

const DemoSectionOne = () => {
    return (
        <DemoContainer>
            <DemoText>
                <h3 style={{"text-align": "center"}}>
                    Sketch Out <br/>
                    Your Thoughts
                </h3>
                <br/>
                <p style={{"text-align": "center"}}>
                    Timeline provides most features required to draw out multiple
                    images into one note , that can be shared & exported. <br/>
                    Features like undo , redo , background color change , pointer color ,
                    zoom & pan and the ability to toggle between them easily. <br/>
                    But most prominent feature of sketch is that it exports to SVG.
                </p>
            </DemoText>
            <DemoImage>
                <img
                    src={"/apps/timeline/screenshots/demo-2.png"}
                    alt={"Demo Second"}
                    width={1000}
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
                    src={"/apps/timeline/screenshots/demo-3.png"}
                    alt={"Demo Third"}
                    width={1000}
                />
            </DemoImage>
            <DemoText>
                <h3 style={{"text-align": "center"}}>
                    Intuitive <br/>
                    Easy To Understand
                </h3>
                <br/>
                <p style={{"text-align": "center"}}>
                    Timeline makes it easy to access the items you need.
                    Everything will feel under your control.<br/>
                    It will save you a low of time to do everything else and
                    help you to be more productive , The app will suit to your needs.
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