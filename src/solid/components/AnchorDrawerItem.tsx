import { DrawerItem } from "@qinetik/anique";
import { styled } from "@qinetik/emotion";

export interface AnchorDrawerItemProps {
    href: string
    current: string
    class?: string
    children?: any
}

const StyledA = styled("a")`
    text-decoration: none;
`

export default function AnchorDrawerItem(props: AnchorDrawerItemProps) {
    const isActive = props.current == props.href
    return (
        <StyledA href={props.href} class={isActive ? (props.class || "active") : undefined}>
            <DrawerItem isActive={isActive}>{props.children}</DrawerItem>
        </StyledA>
    )
}