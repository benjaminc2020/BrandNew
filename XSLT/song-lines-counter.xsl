<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:variable name="bnAlbum1" as="document-node()+" select="collection('../XML/Albums/YourFavoriteWeapon/?select=*.xml')"/>
    <xsl:variable name="bnAlbum2" as="document-node()+" select="collection('../XML/Albums/DejaEntendu/?select=*.xml')"/>
    <xsl:variable name="bnAlbum3" as="document-node()+" select="collection('../XML/Albums/TheDevilAndGodAreRagingInsideMe/?select=*.xml')"/>
    <xsl:variable name="bnAlbum4" as="document-node()+" select="collection('../XML/Albums/Daisy/?select=*.xml')"/>
    <xsl:variable name="bnAlbum5" as="document-node()+" select="collection('../XML/Albums/LeakedDemos2006/?select=*.xml')"/>
    <xsl:variable name="bnAlbum6" as="document-node()+" select="collection('../XML/Albums/ScienceFiction/?select=*.xml')"/>
    <xsl:variable name="bnAlbum7" as="document-node()+" select="collection('../XML/Albums/EPs/?select=*.xml')"/>
    <xsl:template match="/">
        <xsl:for-each select="$bnAlbum1//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/YourFavoriteWeapon/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum2//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/DejaEntendu/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum3//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/TheDevilAndGodAreRagingInsideMe/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum4//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/Daisy/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum5//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/LeakedDemos2006/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum6//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/ScienceFiction/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
        <xsl:for-each select="$bnAlbum7//root()">
            <xsl:variable name="filename">
                <xsl:value-of select="replace(base-uri(), '\.xml', '.xml') ! tokenize(., '/')[last()]"/>
            </xsl:variable>
            <xsl:result-document method="xml" indent="yes" href="../XML/transform/EPs/{$filename}">
                <xsl:processing-instruction name="xml-model">href="../../../Schema/songSchema.rnc" type="application/relax-ng-compact-syntax"</xsl:processing-instruction>
                <song>
                    <xsl:apply-templates/>
                </song>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="line/ref">
        <xsl:if test=".[@img]">
            <refer img="{@img}">
                <xsl:apply-templates/>
            </refer>
        </xsl:if>
        <xsl:if test=".[@type]">
            <refer img="{@type}">
                <xsl:apply-templates/>
            </refer>
        </xsl:if>
    </xsl:template>

    <xsl:template match="line">
        <line n="{preceding::line => count() + 1}">
            <xsl:apply-templates/>
        </line>
    </xsl:template>

    <xsl:template match="descendant::info">
        <info>
            <xsl:if test="child::album[contains(., 'Your Favorite Weapon')]">
                <title ref="#1-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#1-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'Deja Entendu')]">
                <title ref="#2-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#2-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'The Devil And God Are Raging Inside Me')]">
                <title ref="#3-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#3-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'Daisy')]">
                <title ref="#4-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#4-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'Leaked Demos 2006')]">
                <title ref="#5-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#5-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'Science Fiction')]">
                <title ref="#6-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#6-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <xsl:if test="child::album[contains(., 'EPs')]">
                <title ref="#7-{child::title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                    <xsl:apply-templates select="child::title/text()"/>
                </title>
                <album ref="#7-{child::album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                    <xsl:apply-templates select="child::album/text()"/>
                </album>
            </xsl:if>
            <track n="{child::track/@n}"/>
            <tempo bpm="{child::tempo/@bpm}"/>
            <key><xsl:apply-templates select="child::key/text()"/></key>
            <songWriter><xsl:apply-templates select="child::songWriter"/></songWriter>
            <composer><xsl:apply-templates select="child::composer"/></composer>
            <producer><xsl:apply-templates select="child::producer"/></producer>
            <label><xsl:apply-templates select="child::label"/></label>
            <songLength><xsl:apply-templates select="child::songLength/text()"/></songLength>
        </info>
    </xsl:template>

    <xsl:template match="descendant::verse">
        <verse n="{preceding::verse => count() + 1}">
            <xsl:apply-templates/>
        </verse>
    </xsl:template>

    <xsl:template match="descendant::chorus">
        <chorus n="{preceding::chorus => count() + 1}">
            <xsl:apply-templates/>
        </chorus>
    </xsl:template>

    <xsl:template match="descendant::bridge">
        <bridge n="{preceding::bridge => count() + 1}">
            <xsl:apply-templates/>
        </bridge>
    </xsl:template>

    <xsl:template match="lyrics">
        <lyrics>
            <xsl:apply-templates/>
        </lyrics>
    </xsl:template>

    <xsl:template match="li">
        <li n="{@n}">
            <xsl:apply-templates/>
        </li>
    </xsl:template>

</xsl:stylesheet>