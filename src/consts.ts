// 引入的图片对象，用于 Astro 的 <Image> 组件
// 详见 https://docs.astro.build/en/guides/images/#image--astroassets
import authorAvatarImage from "./assets/avatar.webp";
import headerImageDay from "./assets/header_day.jpg";
import headerImageNight from "./assets/header_night.webp";

// 网站的 <html> 语言标签
export const SITE_LANGUAGE = "zh-CN";

// 网站名称
export const SITE_TITLE = 'LineXic书屋·';

// 网站的副标题
export const SITE_DESCRIPTION = '念念不忘，必有回响。';

// 博主的昵称
export const SITE_AUTHOR_NAME = "LineXic";

// 博主的头像
export const SITE_AUTHOR_AVATAR = authorAvatarImage;

// 网站版权起始年份
export const SITE_COPYRIGHT_YEAR_START = "2023";

// 网站头部导航菜单
export const SITE_MENU: { title: string, href: string, target: string }[] = [
    { title: "首页", href: "./", target: "" },
    { title: "博客", href: "./blog/", target: "" },
    { title: "关于", href: "./page/about/", target: "" },
    { title: "友链", href: "./page/links/", target: "" },
    { title: "开往", href: "https://www.travellings.cn/go.html", target: "_blank" }
]

// 网站横幅背景图片（明亮主题）
export const SITE_HEAD_IMAGE_DAY = headerImageDay;

// 网站横幅背景图片（暗黑主题）
export const SITE_HEAD_IMAGE_NIGHT = headerImageNight;

// 一页展示的博文数量
export const BLOG_PAGINATION_SIZE = 6;
