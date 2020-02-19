<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:template match="/">
        <song>
            <xsl:apply-templates/>
        </song>
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

    <xsl:template match="title">
        <xsl:if test="root()//album[contains(., 'Your Favorite Weapon')]">
            <title ref="#1-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'Deja Entendu')]">
            <title ref="#2-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'The Devil And God Are Raging Inside Me')]">
            <title ref="#3-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'Daisy')]">
            <title ref="#4-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'Leaked Demos 2006')]">
            <title ref="#5-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'Science Fiction')]">
            <title ref="#6-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test="root()//album[contains(., 'EPs')]">
            <title ref="#7-{//title ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}-{root()//track/@n}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
    </xsl:template>

    <xsl:template match="album">
        <xsl:if test=".[contains(., 'Your Favorite Weapon')]">
            <title ref="#1-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'Deja Entendu')]">
            <title ref="#2-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'The Devil And God Are Raging Inside Me')]">
            <title ref="#3-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'Daisy')]">
            <title ref="#4-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'Leaked Demos 2006')]">
            <title ref="#5-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'Science Fiction')]">
            <title ref="#6-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
        <xsl:if test=".[contains(., 'EPs')]">
            <title ref="#7-{//album ! tokenize(., ' ') ! replace(., '(\w)(\w+)?', '$1') => string-join()}">
                <xsl:apply-templates/>
            </title>
        </xsl:if>
    </xsl:template>

    <xsl:template match="verse">
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

    <xsl:template match="info">
        <info>
            <xsl:apply-templates/>
        </info>
    </xsl:template>

    <xsl:template match="track">
        <track n="{@n}">
            <xsl:apply-templates/>
        </track>
    </xsl:template>

    <xsl:template match="tempo">
        <tempo bpm="{@bpm}">
            <xsl:apply-templates/>
        </tempo>
    </xsl:template>

    <xsl:template match="key">
        <key>
            <xsl:apply-templates/>
        </key>
    </xsl:template>

    <xsl:template match="songWriter">
        <songWriter>
            <xsl:apply-templates/>
        </songWriter>
    </xsl:template>

    <xsl:template match="composer">
        <composer>
            <xsl:apply-templates/>
        </composer>
    </xsl:template>

    <xsl:template match="producer">
        <producer>
            <xsl:apply-templates/>
        </producer>
    </xsl:template>

    <xsl:template match="label">
        <label>
            <xsl:apply-templates/>
        </label>
    </xsl:template>

    <xsl:template match="songLength">
        <songLength>
            <xsl:apply-templates/>
        </songLength>
    </xsl:template>

</xsl:stylesheet>