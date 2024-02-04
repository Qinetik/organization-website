import {Anique, Column, Paragraph} from "@qinetik/anique";
import {styled} from "@qinetik/emotion";
import {PageContainer} from "~/solid/components/PageContainer";

const PaddedColumn = styled(Column)`
    
    padding: 2em;
    
    ${Anique.breakpoints.up("md")} {
        padding : 4em;
    }
    
`

export default function PrivacyPage() {

    const supportMail = "support@qinetik.org"

    return (
        <PageContainer>
            <PaddedColumn>
                <h2>Contact Qinetik</h2>
                <Paragraph>
                    You can contact us at <a class="email-link" href={`mailto:${supportMail}`}>{supportMail}</a>
                </Paragraph>
            </PaddedColumn>
        </PageContainer>
    )
}