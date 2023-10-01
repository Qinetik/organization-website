import {IconButton, Spacer} from "@qinetik/anique";
import MenuIcon from "../icons/Menu";
import {Row} from "@qinetik/anique";
import {ThemeSwitcher} from "./ThemeSwitcher";
import {AppBar} from "@qinetik/anique";
import {QinetikLogoDark, QinetikLogoLight} from "../icons/Logo.tsx";

export function WebAppBar() {
    return (
        <AppBar
            navIcon={
                <Spacer width={"1em"} />
            }
            title={
                <>
                    <QinetikLogoDark class={"display-in-light"} />
                    <QinetikLogoLight class={"display-in-dark"} />
                </>
            }
            actions={(
                <Row>
                    <ThemeSwitcher />
                </Row>
            )}
        />
    )
}