import {QinetikLogoDark, QinetikLogoLight} from "../icons/Logo.tsx";
import {styled} from "@qinetik/emotion";
import {Column, Row} from "@qinetik/anique";

const Section = styled(Column)`

`

const FooterContainer = styled(Row.withComponent("footer"))`
  width: 100%;
  padding: 0.5em 0 2em 0;
  justify-content: space-evenly;
`

const RowA = styled(Row.withComponent("a"))`
  
`

export default function Footer() {
    return (
        <FooterContainer>
            <Section>
                <div>
                    <>
                        <QinetikLogoDark class={"display-in-light"}/>
                        <QinetikLogoLight class={"display-in-dark"}/>
                    </>
                </div>
                <p>
                    <a href="/terms">Terms of use</a> | <a href="/privacy"
                >Privacy</a></p>
                <div>
                    <p>Copyright by 2023 Qawaz</p>
                </div>
            </Section>
            <Section gap={"2em"}>
                <h4>About Us</h4>
                <a>Customer Support</a>
                <a href="#">Copyright</a>

            </Section>
            <Section gap={"2em"}>
                <h4>Our Information</h4>
                <a>Privacy Policy</a>
                <a href="/terms">Terms &amp; Conditions</a>
            </Section>
            <Section gap={"2em"}>
                <h4>Connect</h4>
                <RowA gap={"1em"} href="https://www.facebook.com/qawaz/" target="_blank">
                    <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAt1BMVEUAAAAAgIBVVaozZpkrVao6Wpg9WZk7Wpg6WZc6WJg8Wpk7WZc7WJg6WJg8WZk7WZg7Wpg6WZc7WZg7WZg6WZg8WZk7WZg7WZg7WZg6WZg7WJk7WZg7WZg7WJg7WZg7WZg7WZg7WZg8WphOaaJPaqJQa6NVb6ZXcadbdKllfK5rgbFuhbOJm8Gxvda8xtzByt7K0uPN1eXP1+bf5O7g5e/h5u/t7/Xy9Pj19/r6+vz7/P38/P3////NO7M0AAAAIXRSTlMAAgMFBk9QUlNUVVZXiImKi4yjpKan19jZ2tvc3d7x8/RAdLIxAAAAAWJLR0Q8p2phzwAAALVJREFUGBkFwYtugjAAAMDrQ6BLXMh02f9/3jKNJkahQGV3AeRhSMXUprpBgOF8ACyXikQcvxNAOqokxhGEmMNOaVU2jKA/9l43nOYl5hNQeoCfnIcO6M2PBnKXCyDYFkDJGZRj8tFPD5BjB8KBeNiBIQLLfTfdN2CPFWzPt/acgTluAABscQIAYIpzBQBY19iuAAC/W1RvoK07cFkFwucXAK6PXYDu3APq34oAUl9SMbXX0uAfULlFI5DUTfUAAAAASUVORK5CYII="
                        alt="Facebook"/>Facebook</RowA>
                <RowA gap={"1em"} href="https://twitter.com/QawazOfficial" target="_blank">
                    <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAARCAMAAADqmnyMAAAA5FBMVEUAAAAA//+AgP9Vqv9Av/9mmf9douhVqupOsetVqu5apfBRrvJZselSretYsetVqu5TrfBTrO1TrO5Xru9TrO9TrPBUq+1Vqu5Uq+5Wre9Vqu9Uq+5Uq+9Vre9WrO5Vre5VrO5Ure9Ure1VrO5Wq+5UrO1Wq+5Wre5VrO1Wre5UrO5Wre5UrO5Vq+9VrO5VrO5VrO5Vre5VrO5Vre5VrO5VrO5VrO5VrO5VrO5VrO5VrO5VrO5VrO5VrO5Vq+9VrO1Vre5Vre5VrO5VrO5VrO5VrO5VrO5VrO5VrO5VrO5VrO7///8h//U8AAAASnRSTlMAAQIDBAULDA0PERMXGRoeIisuLzE0Ojw9Pj9JT1FZWmxwc3WGkZKYn6GjpKarsLK/wMHDxMjNztbe4OLk5+jp6+7v8/T19/v8/l01/AMAAAABYktHREtpC4VQAAAAnElEQVQYGVXBAxbDQAAFwF/btm3bzL//gZrubl+aGcCJn+zkeW4HkQ3Dtk5Ayr+pO+7HNoR4zeHLvqdw75XhI9kJAohTaViBGcnXqBRNUboBcCYvFDRKWwDex4kmc+imNKtDFznQJI2v2FCjYQmhwn95CPYBDV0olkKfysoNxVHcUJp6IGSaowulW80BJdHaUactqgH888czURcMHzJDN/2XdQ2TAAAAAElFTkSuQmCC"
                        alt="Twitter"/>Twitter</RowA>
                <RowA gap={"1em"} href="https://github.com/Qawaz/" target="_blank">
                    <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAVCAMAAABxCz6aAAABJlBMVEUAAAAAAAAAAAAAAAAAAAAAAAArKwAkJCQgICAcHBwXFxcVFRUUFBQSEhIQEBAbGw0XFxcUFBQUFBQZGRMWFhYYGBQYGBQXFxMWFhIWFhYVFRUWFhMWFhMXFxQWFhMWFhMVFRUXFxUXFxQWFhQWFhQWFhQWFhMVFRMVFRMXFxUWFhQWFhQWFhQWFhQVFRMVFRMWFhQWFhQXFxMWFhQWFhQVFRQVFRQXFxMWFhUWFhQWFhQWFhQWFhQXFxQWFhMXFxQWFhQWFhMWFhUVFRQWFhUVFRQXFxQWFhQWFhQVFRQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhQWFhT///8YCFW5AAAAYHRSTlMAAQIDBAUGBwgJCwwNDhATIiYnKS5AQUJFR0hQUlpcXWFjZmdzdHZ4eXt9fn+Ag4SKi5GXmZucnaGipKWmqau1tri6vsfKzNDV1tna3OHj5Ofo6ert7/Lz9PX4+fr7/P4QsXy4AAAAAWJLR0RhsrBMhgAAAORJREFUGBlVwYk2AmEAhuEvTIwlSyFL9rUosiuUJUuhQSQ07/1fhT86/5meR5bjqNPAcsHD9wpL/bIWq7RVF/TPOSTgwFHLHh2OZMxDLrrb8Eqll8ZONA8JyX2CdcmV4Uob8NinOSArKwskdA7fMVmxHzhTBa4VcAMPqkNOAXmoqw4XCijChyrw5sgK16CsU2BF1hpwolk+a83koP4MbTWBGfVUXicuaRTDUu/VF0a5W5r2n0cKXlLGMYY/JWOb/eFIREYaI6WWUMp/v12VkQZ/U22T92RkZLgbl9UVH5UxFg+p5RfRoj7j0K4MSgAAAABJRU5ErkJggg=="
                        alt="Github"/>Github
                </RowA>
            </Section>
        </FooterContainer>
    )
}