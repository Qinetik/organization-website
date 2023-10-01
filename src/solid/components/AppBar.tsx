import {IconButton} from "@qinetik/anique";
import MenuIcon from "../icons/Menu";
import {Row} from "@qinetik/anique";
import {ThemeSwitcher} from "./ThemeSwitcher";
import {AppBar} from "@qinetik/anique";

export function WebAppBar(props : { title ?: string }) {
    return (
        <AppBar
            navIcon={
                <IconButton onClick={() => {
                    // TODO
                }}>
                    <MenuIcon/>
                </IconButton>
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