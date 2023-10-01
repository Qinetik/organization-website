import {IconButton, Spacer} from "@qinetik/anique";
import MenuIcon from "../icons/Menu";
import {Row} from "@qinetik/anique";
import {ThemeSwitcher} from "./ThemeSwitcher";
import {AppBar} from "@qinetik/anique";

export function WebAppBar(props : { title ?: string }) {
    return (
        <AppBar
            navIcon={
                <Spacer width={"1em"} />
            }
            title={props.title || "Anique"}
            actions={(
                <Row>
                    <ThemeSwitcher />
                </Row>
            )}
        />
    )
}