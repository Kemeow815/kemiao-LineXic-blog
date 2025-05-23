import type { APIRoute } from 'astro';

const getRobotsTxt = (sitemapURL: URL) => `
User-agent: *
Allow: /
Disallow：/img/
Disallow：/font/
Disallow：/blog/

Sitemap: ${sitemapURL.href}
`;

export const GET: APIRoute = ({ site }) => {
  const sitemapURL = new URL('sitemap-0.xml', site);
  return new Response(getRobotsTxt(sitemapURL));
};