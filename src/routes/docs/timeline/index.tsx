import {GlobalStyles} from "~/solid/components/PageContainer";
import {Anique, Scaffold, UL} from "@qinetik/anique";
import {WebAppBar} from "~/solid/components/AppBar";
import Footer from "~/solid/components/Footer";
import {styled} from "@qinetik/emotion";
import {A} from "@solidjs/router";
import {ContentContainer} from "~/routes/docs/timeline/components/Utils";

const NoMarginH1 = styled.h1`
    margin : 0;
`

export default function TimelineDocs() {
    return (
        <Scaffold
            topBar={() => <WebAppBar/>}
        >
            <GlobalStyles/>
            <ContentContainer>
                <NoMarginH1>Timeline</NoMarginH1>
                <p>
                    We have a note taking app named timeline, We need to write docs for it, How to create a note, update
                    and delete it, The app is very simple, we still want to create some web content for it.
                    To help marketing and promotion.
                </p>
                <UL>
                    <A href={"./create"}>
                        <li>How to create, update, delete a note</li>
                    </A>
                    <A href={"./organize"}>
                        <li>How to organize notes in Timeline</li>
                    </A>
                    <A href={"./manage-notebooks"}>
                        <li>How to manage notebooks</li>
                    </A>
                    <A href={"./archive-color"}>
                        <li>How to archive, color a note</li>
                    </A>
                    <A href={"./image-audio"}>
                        <li>How to add image, audio to a note</li>
                    </A>
                    <A href={"./code-math"}>
                        <li>How to add code, math to a note</li>
                    </A>
                    <A href={"./sketch"}>
                        <li>How to add sketch / drawing to a note</li>
                    </A>
                    <A href={"export"}>
                        <li>How to export a note to in Timeline</li>
                    </A>
                    <A href={"customize"}>
                        <li>Customizing Timeline & Note Taking</li>
                    </A>
                </UL>
            </ContentContainer>
            <Footer/>
        </Scaffold>
    )
}