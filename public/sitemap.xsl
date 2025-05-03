<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <title>网站地图 - www.linexic.top</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <style>
          :root { --primary: #4f46e5; --bg: #f8fafc; }
          body { font-family: system-ui; line-height: 1.5; background: var(--bg); }
          .container { max-width: 800px; margin: 2rem auto; padding: 1rem; }
          h1 { color: var(--primary); border-bottom: 2px solid; padding-bottom: 0.5rem; }
          table { width: 100%; border-collapse: collapse; margin-top: 1rem; }
          th, td { padding: 0.75rem; text-align: left; border-bottom: 1px solid #e2e8f0; }
          tr:hover { background: #fff; }
          .url { color: var(--primary); }
          .lastmod { font-size: 0.9em; color: #64748b; }
          @media (max-width: 640px) {
            .container { margin: 1rem; }
            th { display: none; }
            td { display: block; padding: 0.5rem; }
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>网站地图</h1>
          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th>最后更新</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="urlset/url">
                <tr>
                  <td><a class="url" href="{loc}"><xsl:value-of select="loc"/></a></td>
                  <td class="lastmod"><xsl:value-of select="lastmod"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
