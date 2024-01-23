import { DrawerItem } from "@qinetik/anique";
import { styled } from "@qinetik/emotion";

export interface AnchorDrawerItemProps {
    href: string
    current: boolean
    class?: string
    children?: any
}

const StyledA = styled("a")`
    text-decoration: none;
`

export default function AnchorDrawerItem(props: AnchorDrawerItemProps) {
    return (
        <StyledA href={props.href} class={props.current ? (props.class || "active") : undefined}>
            <DrawerItem isActive={props.current}>{props.children}</DrawerItem>
        </StyledA>
    )
}