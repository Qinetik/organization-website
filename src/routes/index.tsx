import {Accordion, Anique, BaseTextField, Button, Column, Headline, Row, Size, Spacer} from "@qinetik/anique";
import {styled} from "@qinetik/emotion";
import {MindNodeIcon, PhotoEditorIcon, TimelineIcon} from "~/solid/icons/AppIcons";
import {JSXElement} from "solid-js";
import {PageContainer} from "~/solid/components/PageContainer";

const Container = styled(Column)`
    width: 100%;
    height: 100%;
`

const CenteredColumn = styled(Column)`
    align-items: center;
`

const HeroSection = styled("div")`
    width: 100%;
    height: 35em;
    padding: 4rem 4rem 2rem 4rem;
    box-sizing: border-box;
`

const Title = styled(Headline)`
    margin: 0;
    width: 40rem;
`

const Subtitle = styled("p")`
    margin: 1rem 0 0;
    width: 30rem;
    line-height: 2.2rem;
`

const MainField = styled(BaseTextField)`
    width: 16rem;
`

const Para = styled("p")`


`

export default function Home() {
    return (
        <PageContainer>
            <Container>
                <HeroSection>
                    <Column>
                        <Title>Be Productive and Get more done with our Apps</Title>
                        <Subtitle>
                            Our easy to use apps provide you with tools to work smarter and faster with less mistakes. We
                            create
                            tools for creative people to hack their productivity.
                        </Subtitle>
                        <Spacer height={"4em"}/>
                        <Row gap={"1em"}>
                            <MainField
                                placeholder={"Enter your email address"}
                            />
                            <Button size={Size.Medium}>Subscribe</Button>
                        </Row>
                    </Column>
                </HeroSection>
                <Spacer height={"2em"}/>
                <CenteredColumn>
                    <CenteredColumn gap={"4rem"} style={{padding: "0 6rem"}}>
                        <CenteredColumn>
                            <h1 style={{"margin-bottom": "0"}}>Built For Everyone</h1>
                            <p>
                                Our apps span multiple platforms & systems , We are constantly growing & Welcome everyone.
                            </p>
                        </CenteredColumn>
                        <Row>
                            <Row gap={"4rem"}>

                                <Service
                                    serviceSrc={"1.png"}
                                    iconAlt={"individual icon"}
                                    heading={"For Individuals"}
                                    description={"We offer a variety of apps to help individuals manage their personal tasks, notes and ideas. Whether you need a simple to-do list app or a more robust note-taking app, we've got you covered."}
                                />

                                <Service
                                    serviceSrc={"2.png"}
                                    iconAlt={"teams icon"}
                                    heading={"For Teams"}
                                    description={`Our apps are also perfect for teams looking to collaborate and increase productivity. We offer file sharing and project management tools that make it easy for teams to work together.`}
                                />

                                <Service
                                    serviceSrc={"3.png"}
                                    iconAlt={"companies icon"}
                                    heading={"For Companies"}
                                    description={`We understand the unique needs of companies and offer enterprise solutions to help
                                    streamline operations and improve communication. From custom app development to API
                                    integrations, we can help your company stay ahead of the game.`}
                                />

                            </Row>
                        </Row>
                    </CenteredColumn>
                    <div style={{"max-width": "1300px"}}>
                        <Row style={{"align-items": "center"}}>
                            <div>
                                <img
                                    src={"/apps/123mind/screenshots/mindnode_screen.png"}
                                    alt={"MindNode Screenshot"}
                                    style={{width: "620px", height: "800px", "object-fit": "contain", "min-width": "620px"}}
                                />
                            </div>
                            <Column gap={"1em"}
                                    style={{
                                        "margin-top": "3em",
                                        width: "calc(100% - 620px)",
                                        "min-height": "720px",
                                        "flex": 1
                                    }}>
                                <h1>Qinetik - Innovative App Development</h1>
                                <Para>Welcome to Qinetik, a leading app development company. We specialize in creating
                                    innovative
                                    apps for individuals, teams, and companies. From note-taking and to-do lists to file
                                    sharing
                                    and custom development, we have a wide range of services to meet your needs. Browse our
                                    accordion sections to learn more about our offerings and approach.</Para>
                                <Accordion
                                    title={"Welcome to Qinetik!"}
                                    showIcon={true}>
                                    <Para>
                                        We're so glad you found us. We're the company behind those apps you've never heard
                                        of,
                                        like Timeline, easyToDo, Sketchable, and ShareAnything.
                                    </Para>
                                </Accordion>
                                <Accordion
                                    title={"Our Services"}
                                    showIcon={true}
                                ><Para>
                                    We specialize in creating apps. if you're looking for
                                    a to-do list app or a sketching app, we've got you covered.
                                </Para></Accordion>
                                <Accordion
                                    title={"Our Process"}
                                    showIcon={true}
                                ><Para>
                                    It's simple really. We come up with an idea, spend a ton of money and time developing
                                    it, and then release it to the world where it is promptly ignored. Rinse and repeat.
                                </Para></Accordion>
                            </Column>
                        </Row>
                    </div>
                    <Spacer height={"2em"}/>
                    <div style={{"max-width": "1300px"}}>
                        <Row style={{"align-items": "center"}}>
                            <Column gap={"1em"}
                                    style={{
                                        "margin-top": "3em",
                                        width: "calc(100% - 620px)",
                                        "min-height": "720px",
                                        "flex": 1
                                    }}>
                                <h1>Simplify Your Workflow with Qinetik's App Solutions</h1>
                                <Para>At Qinetik, we understand the importance of working smartly and efficiently. That's
                                    why
                                    we offer a wide range of apps to help simplify your workflow. From note-taking and to-do
                                    lists to file sharing and project management, our apps are designed to help you work
                                    smarter, not harder.</Para>
                                <div style={{display: "grid", gap: '2em 6em', "grid-template-columns": "repeat(2,1fr)"}}>
                                    <AppCard
                                        icon={() => <TimelineIcon/>}
                                        title={"Timeline"}
                                        link={"/apps/timeline"}
                                    />
                                    <AppCard
                                        iconSrc={"easy_to_do.png"}
                                        iconAlt={"Easy To Do Icon"}
                                        title={"EasyToDo"}
                                        link={"/apps/easytodo"}
                                    />
                                    <AppCard
                                        icon={() => <MindNodeIcon/>}
                                        title={"123Mind"}
                                        link={"/apps/123mind"}
                                    />
                                    <AppCard
                                        iconSrc={"sketchable.png"}
                                        iconAlt={"Sketchable Icon"}
                                        title={"Sketchable"}
                                        link={"/apps/sketchable"}
                                    />
                                    <AppCard
                                        icon={() => <PhotoEditorIcon/>}
                                        title={"PhotoEditor"}
                                    />
                                </div>
                            </Column>
                            <div>
                                <figure><img src="/assets/images/app_dev_flow_chart.png" alt="Illustration"/></figure>
                            </div>
                        </Row>
                    </div>
                    <CenteredColumn gap={"4rem"} style={{padding: "3rem 6rem", background: Anique.colors.onBg200}}>

                        <CenteredColumn>
                            <h1 style={{"margin-bottom": "0", color: Anique.colors.bg200}}>Why Choose Qinetik's App
                                Solutions</h1>
                            <p style={{"max-width": "42em", "text-align": "center", color: Anique.colors.bg200}}>
                                Choose Qinetik for efficient, secure and customizable app solutions for productivity and
                                collaboration.
                            </p>
                        </CenteredColumn>

                        <Row gap={"4rem"}>

                            <ServiceColumn
                                serviceSrc={"1.png"}
                                iconAlt={"individual icon"}
                                heading={"Collaboration Features"}
                                description={"Our apps are designed to make collaboration easy. Share files, assign tasks and communicate with your team in real-time.\n"}
                            />

                            <ServiceColumn
                                serviceSrc={"2.png"}
                                iconAlt={"teams icon"}
                                heading={"Efficient Task Management"}
                                description={`Our apps are designed to make task management easy. Create and manage to-do lists, set reminders, and track progress.`}
                            />

                            <ServiceColumn
                                serviceSrc={"3.png"}
                                iconAlt={"companies icon"}
                                heading={"Secure Data Storage"}
                                description={`We take data security seriously. Our apps use state-of-the-art encryption to ensure that your data is always safe.`}
                            />

                        </Row>

                        <Row gap={"4rem"}>

                            <ServiceColumn
                                serviceSrc={"4.png"}
                                iconAlt={"individual icon"}
                                heading={"Customizable Interface"}
                                description={"Our apps are designed to be flexible and customizable. Tailor them to your specific needs and preferences."}
                            />

                            <ServiceColumn
                                serviceSrc={"5.png"}
                                iconAlt={"teams icon"}
                                heading={"24/7 Support"}
                                description={`We are here to help. Our dedicated support team is available 24/7 to answer any questions and provide assistance.`}
                            />

                            <ServiceColumn
                                serviceSrc={"6.png"}
                                iconAlt={"companies icon"}
                                heading={"Cross-Platform Compatibility"}
                                description={`Our apps are designed to work seamlessly across multiple platforms, including iOS, Android, and web.`}
                            />

                        </Row>

                    </CenteredColumn>
                    <Spacer height={"2em"}/>
                    <div style={{"max-width": "1300px"}}>
                        <Row style={{"align-items": "center"}} gap={"4em"}>
                            <div>
                                <img
                                    src={"/assets/images/business_people_with_gear.png"}
                                    alt={"Business People Screenshot"}
                                    style={{width: "620px", height: "800px", "object-fit": "contain", "min-width": "620px"}}
                                />
                            </div>
                            <Column
                                gap={"1em"}
                                style={{"margin-top": "3em", width: "50%", "min-height": "720px", "flex": 1}}
                            >
                                <h1>Empowering Businesses and Individuals with Cutting-Edge Technology</h1>
                                <Para>Qinetik is dedicated to providing innovative app solutions that empower businesses and
                                    individuals to work smarter, not harder. Our apps are designed to increase productivity,
                                    streamline operations and enhance communication. With a wide range of services and a
                                    commitment to customer satisfaction, we have helped many users worldwide achieve their
                                    goals.</Para>
                            </Column>
                        </Row>
                    </div>
                    <div style={{padding: "6rem"}}>
                        <Row style={{
                            "padding": "4rem",
                            background: Anique.colors.bg200,
                            "border-radius": Anique.border.mdRadius
                        }} gap={"4em"}>
                            <Column>
                                <h1>Like our service? Subscribe us</h1>
                                <p>We will send you emails (only the important stuff) about our new products and
                                    services</p>
                            </Column>
                            <Row gap={"1em"}>
                                <MainField
                                    placeholder={"Enter your email address"}
                                />
                                <Button size={Size.Medium}>Subscribe</Button>
                            </Row>
                        </Row>
                    </div>
                </CenteredColumn>
            </Container>
        </PageContainer>
    );
}

interface AppCardProps {
    icon?: () => JSXElement
    iconSrc?: string
    iconAlt?: string
    title: any
    link ?: string
}

function AppCard(props: AppCardProps) {
    return (
        <Row gap={"1.5em"}>
            {props.icon ? (props.icon()) : (
                <img
                    src={"/apps/icons/" + props.iconSrc}
                    alt={props.iconAlt}
                    width={"48"}
                    height={"48"}
                />
            )}
            {props.link ? (
                <a href={props.link}>{props.title}</a>
            ) : (
                <span>{props.title}</span>
            )}
        </Row>
    )
}

interface ServiceProps {
    serviceSrc: string
    iconAlt: string
    heading: string
    description: string
}

function Service(props: ServiceProps) {
    return (
        <Row style={{"align-items": "start"}} gap={"2em"}>
            <img src={`/assets/services/${props.serviceSrc}`} alt={props.iconAlt} style={{"padding-top": "0.5em"}}/>
            <Column>
                <h3 style={{"margin-top": 0, "margin-bottom": 0}}>{props.heading}</h3>
                <p>{props.description}</p>
            </Column>
        </Row>
    )
}

function ServiceColumn(props: ServiceProps) {
    return (
        <CenteredColumn gap={"1em"} style={{color: Anique.colors.bg100}}>
            <img src={`/assets/icons/${props.serviceSrc}`} alt={props.iconAlt} style={{"padding-top": "0.5em"}}/>
            <h3 style={{"margin-top": "0", "margin-bottom": 0}}>{props.heading}</h3>
            <p style={{"margin-top": "0em", "text-align": "center"}}>{props.description}</p>
        </CenteredColumn>
    )
}