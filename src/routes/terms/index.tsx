import {styled} from "@qinetik/emotion";
import {Column, Paragraph, UL} from "@qinetik/anique";
import {PageContainer} from "~/solid/components/PageContainer";

const PaddedColumn = styled(Column)`
    padding: 4rem 8rem;
`

export default function TermsPage() {
    return (
        <PageContainer>
            <PaddedColumn>
                <h2>Qinetik's Terms of Services</h2>
                <h3>1. Terms</h3>
                <Paragraph>
                    By accessing this Website / Using the app , you are agreeing to be
                    bound by these Website Terms and Conditions of Use and agree that
                    you are responsible for the agreement with any applicable local
                    laws. If you disagree with any of these terms, you are prohibited
                    from accessing this site. The materials contained in this Website
                    are protected by copyright and trade mark law.
                </Paragraph>
                <h3>2. Use License</h3>
                <Paragraph>
                    Permission is granted to temporarily download one copy of the
                    materials on Qinetik's Website for personal, non-commercial
                    transitory viewing only. This is the grant of a license, not a
                    transfer of title, and under this license you may not:
                </Paragraph>
                {/*<Typography variant="body2">*/}
                <UL>
                    <li>modify or copy the materials;</li>
                    <li>
                        use the materials for any commercial purpose or for any public
                        display
                    </li>
                    <li>
                        attempt to reverse engineer any software contained on Qinetik's
                        Website
                    </li>
                    <li>
                        remove any copyright or other proprietary notations from the
                        materials or
                    </li>
                    <li>
                        transferring the materials to another person or "mirror" the
                        materials on any other server.
                    </li>
                </UL>
                {/*</Typography>*/}
                <Paragraph>
                    This will let Qinetik to terminate upon violations of any of these
                    restrictions. Upon termination, your viewing right will also be
                    terminated and you should destroy any downloaded materials in your
                    possession whether it is printed or electronic format.
                </Paragraph>
                <h3>3. Disclaimer</h3>
                <Paragraph>
                    All the materials on Qinetik’s Website are provided "as is".
                    Qinetik makes no warranties, may it be expressed or implied,
                    therefore negates all other warranties. Furthermore, Qinetik does
                    not make any representations concerning the accuracy or reliability
                    of the use of the materials on its Website or otherwise relating to
                    such materials or any sites linked to this Website.
                </Paragraph>

                <h3>4. Limitations</h3>


                <Paragraph>
                    Qinetik or its suppliers will not be hold accountable for any
                    damages that will arise with the use or inability to use the
                    materials on Qinetik’s Website, even if Qinetik or an authorize
                    representative of this Website has been notified, orally or written,
                    of the possibility of such damage. Some jurisdiction does not allow
                    limitations on implied warranties or limitations of liability for
                    incidental damages, these limitations may not apply to you.
                </Paragraph>

                <h3>5. Revisions and Errata</h3>

                <Paragraph>
                    The materials appearing on Qinetik’s Website may include technical,
                    typographical, or photographic errors. Qinetik will not promise
                    that any of the materials in this Website are accurate, complete, or
                    current. Qinetik may change the materials contained on its Website
                    at any time without notice. Qinetik does not make any commitment to
                    update the materials.
                </Paragraph>

                <h3>6. Links</h3>


                <Paragraph>
                    Qinetik has not reviewed all of the sites linked to its Website and
                    is not responsible for the contents of any such linked site. The
                    presence of any link does not imply endorsement by Qinetik of the
                    site. The use of any linked website is at the user’s own risk.
                </Paragraph>

                <h3>7. Site Terms of Use Modifications</h3>

                <Paragraph>
                    Qinetik may revise these Terms of Use for its Website at any time
                    without prior notice. By using this Website, you are agreeing to be
                    bound by the current version of these Terms and Conditions of Use.
                </Paragraph>

                <h3>8. Your Privacy</h3>

                <Paragraph>Please read our <a href="/privacy/">Privacy
                    Policy.</a></Paragraph>

                <h3>9. Governing Law</h3>

                <Paragraph>
                    Any claim related to Qinetik's Website shall be governed by the
                    laws of UK without regards to its conflict of law provisions.
                </Paragraph>
            </PaddedColumn>
        </PageContainer>
    )
}