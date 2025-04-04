import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import svelte from "@astrojs/svelte";
import tailwindcss from "@tailwindcss/vite";
import icon from "astro-icon";
import { defineConfig } from 'astro/config';


// https://astro.build/config
export default defineConfig({


  // 请修改为你自己的线上地址，谢谢茄子
  site: 'https://www.linexic.top/',

  base: process.env.NODE_ENV === "production" ? "/" : "",
  integrations: [mdx(), sitemap(), svelte(), icon()],

  markdown: {
    remarkRehype: {
      footnoteLabel: "脚注",
      footnoteBackLabel: '文档内容的脚注',
    }
  },

  vite: {
    plugins: [tailwindcss()]
  }
});




