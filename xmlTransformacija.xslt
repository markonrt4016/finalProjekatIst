<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:adr="http://www.viser.edu.rs/nrt4016" exclude-result-prefixes="adr">

  <!--NE MOZE: ${mojNS}...<xsl:variable name="mojNS" select="'http://www.viser.edu.rs/nrt4016transform'"/>-->
  
  <xsl:template match="/">
    <adresar xmlns="http://www.viser.edu.rs/nrt4016transform">
      <xsl:apply-templates/>
    </adresar>
  </xsl:template>


  <xsl:template match="adr:osoba">
    <xsl:element name="osoba"  namespace="http://www.viser.edu.rs/nrt4016transform">
      <xsl:attribute name="sifra">
        <xsl:value-of select="./@sifra"/>
      </xsl:attribute>
      <xsl:element name="punoIme"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:element name="ime"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:value-of select="adr:punoIme/adr:ime"/>
        </xsl:element>

        <xsl:if test="count(adr:punoIme/adr:srednjeIme) &gt; 0">
          <xsl:element name="srednjeIme"  namespace="http://www.viser.edu.rs/nrt4016transform">
            <xsl:value-of select="adr:punoIme/adr:srednjeIme"/>
          </xsl:element>
        </xsl:if>
        <xsl:for-each select="adr:punoIme/adr:prezime">
          <xsl:element name="prezime"  namespace="http://www.viser.edu.rs/nrt4016transform">
            <xsl:value-of select="."/>
          </xsl:element>
        </xsl:for-each>

      </xsl:element>


      <xsl:element name="datumRodjenja"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:element name="dan"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:value-of select="adr:datumRodjenja/adr:dan"/>
        </xsl:element>

        <xsl:element name="mesec"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:value-of select="adr:datumRodjenja/adr:mesec"/>
        </xsl:element>

        <xsl:element name="godina"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:value-of select="adr:datumRodjenja/adr:godina"/>
        </xsl:element>
      </xsl:element>


      <xsl:element name="adresa"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:apply-templates select="adr:adresa"/>
      </xsl:element>


      <xsl:element name="telefon"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:attribute name="tip">
          <xsl:value-of select="adr:telefon/@tip"/>
        </xsl:attribute>
        <xsl:value-of select="adr:telefon"/>
      </xsl:element>

      <xsl:for-each select="adr:email">
        <xsl:element name="email"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:attribute name="tip">
            <xsl:value-of select="./@tip"/>
          </xsl:attribute>
          <xsl:value-of select="."/>
        </xsl:element>
      </xsl:for-each>
    </xsl:element>

  </xsl:template>
  <!--KOMPANIJA-->

  <xsl:template match="adr:kompanija">
    <xsl:element name="kompanija"  namespace="http://www.viser.edu.rs/nrt4016transform">

      <xsl:attribute name="sifra">
        <xsl:value-of select="./@sifra"/>
      </xsl:attribute>

      <xsl:element name="naziv"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:value-of select="adr:naziv"/>
      </xsl:element>

      <xsl:element name="adresa"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:apply-templates select="adr:adresa"/>
      </xsl:element>


      <xsl:element name="telefon"  namespace="http://www.viser.edu.rs/nrt4016transform">
        <xsl:attribute name="tip">
          <xsl:value-of select="adr:telefon/@tip"/>
        </xsl:attribute>
        <xsl:value-of select="adr:telefon"/>
      </xsl:element>

      <xsl:for-each select="adr:email">
        <xsl:element name="email"  namespace="http://www.viser.edu.rs/nrt4016transform">
          <xsl:attribute name="tip">
            <xsl:value-of select="./@tip"/>
          </xsl:attribute>
          <xsl:value-of select="."/>
        </xsl:element>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>
  <!--KRAJ KOMPANIJE-->



  <xsl:template match="adr:adresa">
    <xsl:attribute name="ulica">
      <xsl:value-of select="adr:ulica"/>
    </xsl:attribute>
    <xsl:attribute name="broj">
      <xsl:value-of select="adr:broj"/>
    </xsl:attribute>
    <xsl:attribute name="grad">
      <xsl:value-of select="adr:grad"/>
    </xsl:attribute>
    <xsl:attribute name="tip">
      <xsl:value-of select="./@tip" />
    </xsl:attribute>
    <xsl:if test="count(adr:drzava) &gt; 0">
      <xsl:value-of select="adr:drzava"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
