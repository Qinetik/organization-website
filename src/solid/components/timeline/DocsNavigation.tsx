import {StaticDrawer} from "@qinetik/anique";
import AnchorDrawerItem from "~/solid/components/AnchorDrawerItem";
import {useLocation} from "@solidjs/router";

export default function TimelineDocsNavigation() {

    const loc = useLocation()
    const lastSegment = loc.pathname.substring(loc.pathname.lastIndexOf("/") + 1)

    const Item = (props : { href : string, children : string }) => (
        <AnchorDrawerItem
            href={props.href}
            current={props.href.replace("./", "") == lastSegment}>
            {props.children}
        </AnchorDrawerItem>
    )

    return (
        <StaticDrawer>
            <Item href={"./create"}>Create, Update, Delete</Item>
            <Item href={"./organize"}>Organize Notes</Item>
            <Item href={"./manage-notebooks"}>Manage notebooks</Item>
            <Item href={"./archive-color"}>Archive, Color a Note</Item>
            <Item href={"./image-audio"}>Add Image, Audio to a Note</Item>
            <Item href={"./code-math"}>Add Code, Math to a Note</Item>
            <Item href={"./sketch"}>Add Drawing to a Note</Item>
            <Item href={"./export"}>Export a Note</Item>
        </StaticDrawer>
    )
}