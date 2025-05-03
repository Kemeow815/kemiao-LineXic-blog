<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8"/>
    <title>站点地图 - <xsl:value-of select="/*[local-name()='urlset']/@website-title"/></title>
    <style>
        :root {
            --color-text: #5d7399;
            --color-bg: #f6f9fa;
            --color-accent: #0066CC;
        }

        body {
            font-family: system-ui, -apple-system, sans-serif;
            line-height: 1.6;
            color: var(--color-text);
            background: linear-gradient(to bottom, #d2e1ec, #f6f9fa);
            padding: 2rem;
        }

        .container {
            max-width: 800px;
            margin: 3rem auto;
            background: rgba(255,255,255,0.8);
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        h1 {
            color: var(--color-accent);
            font-size: 2.5rem;
            margin-bottom: 2rem;
            text-align: center;
        }

        .url-list {
            list-style: none;
            padding: 0;
        }

        .url-item {
            padding: 1rem;
            margin: 0.5rem 0;
            background: white;
            border-left: 4px solid var(--color-accent);
            border-radius: 4px;
            transition: transform 0.2s;
        }

        .url-item:hover {
            transform: translateX(10px);
        }

        a {
            color: var(--color-accent);
            text-decoration: none;
            font-weight: 500;
        }

        time {
            display: block;
            font-size: 0.9em;
            color: #8193b2;
            margin-top: 0.5rem;
        }

        @media (max-width: 640px) {
            body {
                padding: 1rem;
            }
            
            .container {
                margin: 1rem auto;
                padding: 1rem;
            }
            
            h1 {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🕸️ 网站地图</h1>
        <ul class="url-list">
            <xsl:for-each select="/*/*[local-name()='url']">
                <li class="url-item">
                    <a href="{*[local-name()='loc']}">
                        <xsl:value-of select="*[local-name()='loc']"/>
                    </a>
                    <xsl:if test="*[local-name()='lastmod']">
                        <time>📅 最后更新: <xsl:value-of select="*[local-name()='lastmod']"/></time>
                    </xsl:if>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
