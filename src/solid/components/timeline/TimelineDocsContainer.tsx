import {Scaffold} from "@qinetik/anique";
import {ParentProps} from "solid-js";
import {WebAppBar} from "~/solid/components/AppBar";
import Footer from "~/solid/components/Footer";
import TimelineDocsNavigation from "~/solid/components/timeline/DocsNavigation";
import {GlobalStyles} from "~/solid/components/PageContainer";
import {ContentContainer} from "~/solid/components/timeline/Utils";

export interface DocsContainerProps extends ParentProps {

}

export default function TimelineDocsContainer(props: DocsContainerProps) {
    return (
        <Scaffold
            topBar={() => <WebAppBar/>}
            drawerContent={() => (
                <TimelineDocsNavigation/>
            )}
            drawerWidth={"300px"}
        >
            <GlobalStyles />
            <ContentContainer>
                {props.children}
            </ContentContainer>
            <Footer/>
        </Scaffold>
    )
}