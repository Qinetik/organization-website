import {defineConfig} from 'astro/config';

import solidJs from "@astrojs/solid-js";
import {resolve} from "path";

import {fileURLToPath} from 'url';
import {dirname} from 'path';
import {ViteUserConfig} from "astro";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// https://astro.build/config
export default defineConfig({
    integrations: [solidJs(), integratePaths({
        // For paths integration
        // resolve: {
        //     alias: {
        //         "@org/lib": resolve(__dirname, "./packages/lib/src")
        //     }
        // }
    })],
    // Your base path
    base: '/',
    output : "static",
    build : {
        // use assets dir name if you are deploying to GitHub pages
        // which eliminates directory names like _astro
        assets : "assets"
    }
});

function integratePaths(config) {
    return {
        name: 'anique-solid-vite-config',
        hooks: {
            'astro:config:setup': ({updateConfig}) => {
                updateConfig({
                    vite: config,
                });
            },
        },
    };
}
