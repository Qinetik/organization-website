public func PrivacyPage(page : &mut HtmlPage) {

    GlobalStyles(page);

    var paddedColumnClass = #css {
        padding: 2em;
        @media (min-width: 768px) {
            padding: 4em;
        }
        h2, h3 { margin-top: 1.5em; }
        p, li { line-height: 1.6; opacity: 0.8; }
        ul { margin-left: 1.5em; }
    }

    #html {
        <div class="encapsulation">
            { WebAppBar(page) }
            <main class={paddedColumnClass}>
                <h2>Privacy Policy for Qinetik</h2>

                <p>
                    At Qinetik, one of our main priorities is the privacy of our
                    visitors. This Privacy Policy document contains types of information
                    that is collected and recorded by Qinetik and how we use it.
                </p>

                <p>
                    If you have additional questions or require more information about
                    our Privacy Policy, do not hesitate to contact us.
                </p>

                <p>
                    This Privacy Policy applies to our online activities and is
                    valid for visitors to our website with regards to the information
                    that they shared and/or collect in Qinetik. This Policy applies to all our
                    products and services we provide such as apps and software that you use.
                </p>

                <h3>Consent</h3>

                <p>
                    By using our website, you hereby consent to our Privacy Policy and
                    agree to its terms.
                </p>

                <h3>Information we collect</h3>

                <p>
                    The personal information that you are asked to provide, and the
                    reasons why you are asked to provide it, will be made clear to you
                    at the point we ask you to provide your personal information.
                </p>
                <p>
                    If you contact us directly, we may receive additional information
                    about you such as your name, email address, phone number, the
                    contents of the message and/or attachments you may send us, and any
                    other information you may choose to provide.
                </p>
                <p>
                    When you register for an Account, we may ask for your contact
                    information, including items such as name, company name, address,
                    email address, and telephone number.
                </p>
                <p>
                    Additionally our products, apps / software or websites that we provide collect information
                    to improve the offered services. In this case we may collect information about your device,
                    your account, and other system information like logs. You can also choose to send this information
                    manually inside our apps to help us debug, fix problems for you.
                </p>

                <h3>How we use your information</h3>

                <p>We use the information we collect in various ways, including to:</p>

                <ul>
                    <li>Provide, operate, and maintain our website & apps</li>
                    <li>Improve, personalize, and expand our website & apps</li>
                    <li>Understand and analyze how you use our website & apps</li>
                    <li>Develop new products, services, features, and functionality</li>
                    <li>
                        Communicate with you, including for customer service, to provide you with
                        updates and other information relating to the website, and for
                        marketing and promotional purposes
                    </li>
                    <li>Send you emails</li>
                    <li>Find and prevent fraud</li>
                </ul>

                <h3>Log Files</h3>

                <p>
                    Qinetik follows a standard procedure of using log files. These
                    files log visitors when they visit websites. All hosting companies
                    do this and a part of hosting services' analytics. The information
                    collected by log files include internet protocol (IP) addresses,
                    browser type, Internet Service Provider (ISP), date and time stamp,
                    referring/exit pages, and possibly the number of clicks.
                </p>

                <h3>Cookies and Web Beacons</h3>

                <p>
                    Like any other website, Qinetik uses 'cookies'. These cookies are
                    used to store information including visitors' preferences, and the
                    pages on the website that the visitor accessed or visited.
                </p>

                <h3>Third Party Privacy Policies</h3>

                <p>
                    Qinetik's Privacy Policy does not apply to other advertisers or
                    websites. Thus, we are advising you to consult the respective
                    Privacy Policies of these third-party ad servers for more detailed
                    information.
                </p>

                <p>
                    You can choose to disable cookies through your individual browser
                    options. To know more detailed information about cookie management
                    with specific web browsers, it can be found at the browsers'
                    respective websites.
                </p>

                <h3>CCPA Privacy Rights</h3>

                <p>
                    Under the CCPA, among other rights, California consumers have the
                    right to: Request that a business disclose categories and specific pieces of data collected, 
                    request deletion of any personal data, and request that a business not sell personal data.
                </p>

                <h3>GDPR Data Protection Rights</h3>

                <p>
                    We would like to make sure you are fully aware of all of your data
                    protection rights. Every user is entitled to: The right to access,
                    the right to rectification, the right to erasure, the right to restrict 
                    processing, the right to object to processing, and the right to data portability.
                </p>

                <h3>Children's Information</h3>

                <p>
                    Another part of our priority is adding protection for children while
                    using the internet. We encourage parents and guardians to observe,
                    participate in, and/or monitor and guide their online activity.
                </p>
                <p>
                    Qinetik does not knowingly collect any Personal Identifiable
                    Information from children under the age of 13.
                </p>
            </main>
            { Footer(page) }
        </div>
    }
}
