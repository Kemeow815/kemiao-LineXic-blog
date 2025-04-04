import type { APIRoute } from 'astro';

const getRobotsTxt = (sitemapURL: URL) => `
User-agent: *
Allow: /
Disallow：/img/
Disallow：/font/
Disallow：/2023/
Disallow：/2024/
Disallow：/2025/

Sitemap: ${sitemapURL.href}
`;

export const GET: APIRoute = ({ site }) => {
  const sitemapURL = new URL('sitemap-0.xml', site);
  return new Response(getRobotsTxt(sitemapURL));
};