import {AppBar, Row} from "@qinetik/anique";
import {ThemeSwitcher} from "./ThemeSwitcher";
import {QinetikLogoDark, QinetikLogoLight} from "../icons/Logo";

export function WebAppBar() {
    return (
        <AppBar
            title={
                <>
                    <QinetikLogoDark class={"display-in-light"}/>
                    <QinetikLogoLight class={"display-in-dark"}/>
                </>
            }
            actions={(
                <Row>
                    <ThemeSwitcher/>
                </Row>
            )}
        />
    )
}