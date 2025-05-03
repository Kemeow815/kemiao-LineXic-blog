// ... existing code ...
return `<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="/sitemap.xsl"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" 
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
        http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"
        website-title="${SITE_TITLE}">
    ${items.map(item => `
    <url>
        <loc>${context.site}${item.link}</loc>
        ${item.date ? `<lastmod>${new Date(item.date).toISOString()}</lastmod>` : ''}
    </url>
    `).join('')}
</urlset>`;
// ... existing code ...
