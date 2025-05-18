<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <meta charset="UTF-8"/>
        <title>站点地图 - LineXic书屋</title>
        <style>
          :root { color-scheme: light dark }
          body {
            font-family: system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans Sans-Serif;
            line-height: 1.5;
            margin: 1rem auto;
            max-width: 72ch;
            padding: 0 1rem;
          }
          .sitemap-header {
            text-align: center;
            margin: 2rem 0;
            border-bottom: 1px solid #e5e7eb;
          }
          .urlset {
            display: grid;
            gap: 1.5rem;
          }
          .url-entry {
            padding: 1.25rem;
            background: hsl(0 0% 100% / 0.5);
            border-radius: 0.5rem;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
          }
          .loc::before {
            content: "🔗 ";
            opacity: 0.6;
          }
          .lastmod::before {
            content: "📅 最后更新: ";
            opacity: 0.6;
          }
          .priority::before {
            content: "⭐ 优先级: ";
            opacity: 0.6;
          }
          @media (prefers-color-scheme: dark) {
            .url-entry {
              background: hsl(0 0% 0% / 0.5);
            }
          }
        </style>
      </head>
      <body>
        <div class="sitemap-header">
          <h1>LineXic书屋站点地图</h1>
          <p>共包含 <xsl:value-of select="count(urlset/url)"/> 个页面</p>
        </div>
        
        <div class="urlset">
          <xsl:apply-templates select="urlset/url"/>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="url">
    <div class="url-entry">
      <div class="loc">
        <a href="{loc}">
          <xsl:value-of select="loc"/>
        </a>
      </div>
      <div class="lastmod">
        <xsl:value-of select="substring(lastmod, 1, 10)"/>
      </div>
      <div class="priority">
        <xsl:value-of select="priority"/>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
