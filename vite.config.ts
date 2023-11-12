import solid from 'solid-start/vite'
import nodeStart from 'solid-start-node'
import staticAdapter from "solid-start-static"
import { defineConfig } from 'vite'

export default defineConfig(() => {
  return {
    plugins: [solid({ adapter: staticAdapter(), ssr : true })],
  }
})
