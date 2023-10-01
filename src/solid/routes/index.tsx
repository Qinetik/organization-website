import {Column, UL} from "@qinetik/anique";


export default function Home() {

    return (
        <Column>
            <h1>Anique for SolidJS & Astro</h1>

            <h2>What ?</h2>
            <p>
                Anique is a UI component library for SolidJS, Its built to be used with Astro,
                Several reasons why we love Anique
            </p>

            <UL>
                <li>
                    <h3>Lightweight</h3>
                    <p>Anique has no dependencies on external libraries except for its own CSS in JS library which is lightweight and feature rich</p>
                    <p>Paired with Astro, Anique delivers ready made components to the web</p>
                </li>
                <li>
                    <h3>CSS Variables under the hood</h3>
                    <p>
                        Yes we do use CSS in JS but the theme interface provides css variables which are minified,  This has several benefits
                    </p>
                    <UL>
                        <li>
                            <strong>TypeSafety</strong> : You access variables through a javascript interface, which at compile time convert to minified CSS Variables
                        </li>
                        <li>
                            <strong>Performance</strong> : When you use CSS in JS, If your theme changes, Every element needs to be updated, Javascript needs to run
                            on every element that uses the theme, But changing just one class name to change your entire website is better because browser handles it.
                        </li>
                        <li>
                            <strong>Supporting Astro</strong> : Most of the components Anique provides can be used without any client directive,
                            Some components like DropdownMenu require some javascript which can be used with client:load
                            <p>
                                With anique, The promise is that you never have to use client:only
                            </p>
                            <p>
                                If you were to use javascript variables inside the elements, You would have to make all the elements client:load that depend on javascript to update them
                                By keeping everything free of javascript, Astro will render the HTML & CSS you provide, Theme changing would be handled by the browser.
                                You would be able to build most of your website without javascript and minified css.
                            </p>
                        </li>
                        <li>
                            <strong>Ease of Use</strong> : You already know the ease of use CSS in JS provides, but having no runtime overhead makes it even better
                        </li>
                    </UL>
                    <p>
                        You can look at source code of this website, Its made using Anique
                    </p>
                </li>
                <li>
                    <h3>Css in JS</h3>
                    <p>Anique has its own CSS in JS library, which it depends on, The library makes use of emotion's serialization library in the background, so it offers a similar API, It has following set of
                        features, Its minimal as of now</p>
                    <UL>
                        <li>
                            Its runtime free but only If you use it with Astro, You get zero runtime overhead
                        </li>
                        <li>
                            A styled function which takes a tag or a component
                        </li>
                        <li>
                            shouldForwardProp function which determines whether a prop should be forwarded
                        </li>
                        <li>
                            keyframes function to create keyframes component
                        </li>
                        <li>
                            css function to use direct css
                        </li>
                    </UL>
                </li>
                <li>
                    <h3>Typesafe</h3>
                    <p>Anique uses typescript and is typesafe, The theme object is a simple object named <code>Anique</code> containing references to all the variables you need, Anique doesn't rely on context passed through components, But you can still enforce a different theming at any level.</p>
                </li>
                <li>
                    <h3>Simplistic</h3>
                    <p>
                        Anique is very simplistic, Anique does not introduce components like Paragraph, Text, Heading or Link
                        You should use default <code>h1,h2,h3,h4,h5,h6</code> for headings & <code>a</code> for links.
                        There are very minimal global styles that you can include in your page.
                        The page you are reading now has been written using this approach and all the pages on this website.
                    </p>
                </li>
                <li>
                    <h3>Performant</h3>
                    <p>
                        Anique is as performant as CSS variables because that's what it depends on. There's no javascript magic. Just CSS
                    </p>
                </li>
            </UL>

            <h2>Inspiration</h2>
            <p>
                We take inspiration from Radix-UI, We want to make something similar, only without React
            </p>

            <h2>Why ?</h2>
            <p>
                There are many UI libraries but They all have their pros and cons & these cons unfortunately
                outweigh the pros.
            </p>

            <UL>
                <li>
                    <h4>Not enough libraries</h4>
                    <p>
                        Wait, I just said there are many UI component libraries, Well, Although there's too many UI
                        component libraries, There aren't enough libraries for SolidJS that are good.
                    </p>
                </li>
                <li>
                    <h4>Other Libraries</h4>
                    <p>
                        There are other UI component libraries that use different set of technologies & then user
                        must also adopt those technologies in order to write their UI.
                        For me, I prefer <code>CSS in JS</code> which doesn't happen to be their choice.
                        You can use <code>Anique</code> without CSS in JS, Since the theme object is not passed through context.
                        You can reference it directly using <code>Anique</code>.
                    </p>
                </li>
            </UL>
        </Column>
    );
}
