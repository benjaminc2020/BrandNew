<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:variable name="bnAlbum1" as="document-node()+" select="collection('../XML/Albums/YourFavoriteWeapon/?select=*.xml')"/>
    <xsl:variable name="bnAlbum2" as="document-node()+" select="collection('../XML/Albums/DejaEntendu/?select=*.xml')"/>
    <xsl:variable name="bnAlbum3" as="document-node()+" select="collection('../XML/Albums/TheDevilAndGodAreRagingInsideMe/?select=*.xml')"/>
    <xsl:variable name="bnAlbum4" as="document-node()+" select="collection('../XML/Albums/Daisy/?select=*.xml')"/>
    <xsl:variable name="bnAlbum5" as="document-node()+" select="collection('../XML/Albums/ScienceFiction/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:for-each select="$bnAlbum1//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../Website/albums/your-favorite-weapon/{$filename}">
                <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <title><xsl:value-of select="descendant::title"/></title>
                        <link rel="shortcut icon" href="../../images/fox.png"/>
                        <link rel="stylesheet" href="../../css/styles.css"/>
                        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap" rel="stylesheet"/>
                        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap" rel="stylesheet"/>
                        <script src="../../javascript/sticky.js"></script>
                    </head>
                    <body>
                        <xsl:comment>#include virtual="../../ssi/song-ssi.html" </xsl:comment>
                        <div class="content">
                            <div class="songTitle">
                                <p><xsl:value-of select="descendant::title"/></p>
                            </div>
                            <div class="songContainer">
                                <div class="songAlbumArt">
                                    <a href ="../your-favorite-weapon.html">
                                        <img id="albumPage" class="album" src="../../images/YourFavoriteWeaponDeluxeEdition.jpg" alt="Your Favorite Weapon Album Artwork" />
                                        <p>Album: Your Favorite Weapon</p>
                                    </a>
                                    <p><a href="../../about.html">Artist: Brand New</a></p>
                                </div>
                                <div class="lyricsContainer">
                                    <xsl:apply-templates/>
                                </div>
                                <div class="refContainer">
                                    <p>References</p>
                                    <ul>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox" checked="checked"/>
                                                <span class="checkmark"></span>
                                                <span>Religious</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Death</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Water</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Fire</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Places</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Bed</a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum2//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../Website/albums/deja-entendu/{$filename}">
                <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <title><xsl:value-of select="descendant::title"/></title>
                        <link rel="shortcut icon" href="../../images/fox.png"/>
                        <link rel="stylesheet" href="../../css/styles.css"/>
                        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap" rel="stylesheet"/>
                        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap" rel="stylesheet"/>
                        <script src="../../javascript/sticky.js"></script>
                    </head>
                    <body>
                        <xsl:comment>#include virtual="../../ssi/song-ssi.html" </xsl:comment>
                        <div class="content">
                            <div class="songTitle">
                                <p><xsl:value-of select="descendant::title"/></p>
                            </div>
                            <div class="songContainer">
                                <div class="songAlbumArt">
                                    <a href ="../deja-entendu.html">
                                        <img id="albumPage" class="album" src="../../images/DejaEntendu.jpg" alt="Deja Entendu Album Artwork" />
                                        <p>Album: Deja Entendu</p>
                                    </a>
                                    <p><a href="../../about.html">Artist: Brand New</a></p>
                                </div>
                                <div class="lyricsContainer">
                                    <xsl:apply-templates/>
                                </div>
                                <div class="refContainer">
                                    <p>References</p>
                                    <ul>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox" checked="checked"/>
                                                <span class="checkmark"></span>
                                                <span>Religious</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Death</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Water</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Fire</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Places</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Bed</a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum3//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../Website/albums/the-devil-and-god-are-raging-inside-me/{$filename}">
                <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <title><xsl:value-of select="descendant::title"/></title>
                        <link rel="shortcut icon" href="../../images/fox.png"/>
                        <link rel="stylesheet" href="../../css/styles.css"/>
                        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap" rel="stylesheet"/>
                        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap" rel="stylesheet"/>
                        <script src="../../javascript/sticky.js"></script>
                    </head>
                    <body>
                        <xsl:comment>#include virtual="../../ssi/song-ssi.html" </xsl:comment>
                        <div class="content">
                            <div class="songTitle">
                                <p><xsl:value-of select="descendant::title"/></p>
                            </div>
                            <div class="songContainer">
                                <div class="songAlbumArt">
                                    <a href ="../the-devil-and-god-are-raging-inside-me.html">
                                        <img id="albumPage" class="album" src="../../images/daGarim.jpg" alt="The Devil &amp; God Are Raging Inside Me Album Artwork" />
                                        <p>Album: The Devil &amp; God Are Raging Inside Me</p>
                                    </a>
                                    <p><a href="../../about.html">Artist: Brand New</a></p>
                                </div>
                                <div class="lyricsContainer">
                                    <xsl:apply-templates/>
                                </div>
                                <div class="refContainer">
                                    <p>References</p>
                                    <ul>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox" checked="checked"/>
                                                <span class="checkmark"></span>
                                                <span>Religious</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Death</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Water</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Fire</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Places</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Bed</a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum4//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../Website/albums/daisy/{$filename}">
                <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <title><xsl:value-of select="descendant::title"/></title>
                        <link rel="shortcut icon" href="../../images/fox.png"/>
                        <link rel="stylesheet" href="../../css/styles.css"/>
                        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap" rel="stylesheet"/>
                        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap" rel="stylesheet"/>
                        <script src="../../javascript/sticky.js"></script>
                    </head>
                    <body>
                        <xsl:comment>#include virtual="../../ssi/song-ssi.html" </xsl:comment>
                        <div class="content">
                            <div class="songTitle">
                                <p><xsl:value-of select="descendant::title"/></p>
                            </div>
                            <div class="songContainer">
                                <div class="songAlbumArt">
                                    <a href ="../daisy.html">
                                        <img id="albumPage" class="album" src="../../images/daisy.jpg" alt="Daisy Album Artwork" />
                                        <p>Album: Daisy</p>
                                    </a>
                                    <p><a href="../../about.html">Artist: Brand New</a></p>
                                </div>
                                <div class="lyricsContainer">
                                    <xsl:apply-templates/>
                                </div>
                                <div class="refContainer">
                                    <p>References</p>
                                    <ul>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox" checked="checked"/>
                                                <span class="checkmark"></span>
                                                <span>Religious</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Death</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Water</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Fire</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Places</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Bed</a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum5//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.html') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xhtml" indent="yes" href="../Website/albums/science-fiction/{$filename}">
                <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                        <title><xsl:value-of select="descendant::title"/></title>
                        <link rel="shortcut icon" href="../../images/fox.png"/>
                        <link rel="stylesheet" href="../../css/styles.css"/>
                        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville&amp;display=swap" rel="stylesheet"/>
                        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&amp;display=swap" rel="stylesheet"/>
                        <script src="../../javascript/sticky.js"></script>
                    </head>
                    <body>
                        <xsl:comment>#include virtual="../../ssi/song-ssi.html" </xsl:comment>
                        <div class="content">
                            <div class="songTitle">
                                <p><xsl:value-of select="descendant::title"/></p>
                            </div>
                            <div class="songContainer">
                                <div class="songAlbumArt">
                                    <a href ="../science-fiction.html">
                                        <img id="albumPage" class="album" src="../../images/ScienceFiction.jpg" alt="Science Fiction Album Artwork" />
                                        <p>Album: Science Fiction</p>
                                    </a>
                                    <p><a href="../../about.html">Artist: Brand New</a></p>
                                </div>
                                <div class="lyricsContainer">
                                    <xsl:apply-templates/>
                                </div>
                                <div class="refContainer">
                                    <p>References</p>
                                    <ul>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox" checked="checked"/>
                                                <span class="checkmark"></span>
                                                <span>Religious</span>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Death</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Water</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Fire</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Places</a>
                                            </label>
                                        </li>
                                        <li>
                                            <label class="container">
                                                <input type="checkbox"/>
                                                <span class="checkmark"></span>
                                                <a>Bed</a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="line/refer">
        <xsl:if test=".[@img]">
            <span class="{@img}">
                <xsl:apply-templates/>
            </span>
        </xsl:if>
        <xsl:if test=".[@type]">
            <span class="{@type}">
                <xsl:apply-templates/>
            </span>
        </xsl:if>
    </xsl:template>

    <xsl:template match="line">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="descendant::verse">
        <ul class="verse">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="info">
    </xsl:template>

    <xsl:template match="descendant::chorus">
        <ul class="chorus">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="descendant::bridge">
        <ul class="bridge">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
    
    <xsl:template match="descendant::outro">
        <ul class="outro">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>

    <xsl:template match="descendant::intro">
        <ul class="intro">
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
</xsl:stylesheet>