<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:adr="http://www.viser.edu.rs/nrt4016" exclude-result-prefixes="adr"
>


  <!-- HTML dokument sa tabelom koja prikazuje sve podatke o Osobama i Kompanijama čija
je:
o Adresa stalna i datum rođenja u opsegu od 1990-2005 godine.
o Prezime počinje sa slovom M i naziv kompanije ima više od 6 karaktera,-->
  <xsl:template match="/">
    <html>
      <head>
        <title>OsobeKompanije</title>
        <style>
          table,th,td{
          border: 1px solid black;
          }
          th,td{
          padding-right: 10px;
          padding-left: 10px;
          text-align: center;
          }
        </style>
      </head>
      <body>
        <h3>Podaci o Osobama i Kompanijama sa stalnom adresom, osobe 1990-2005...</h3>
        <table>
          <tr>
            <th>Naziv(kompanije)</th>
            <th>Puno ime(osobe)</th>
            <th>Datum rođenja(osobe)</th>
            <th>Adresa</th>
            <th>Telefon</th>
            <th>E-mail</th>
          </tr>
          <xsl:apply-templates/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="adr:adresar">

    <xsl:for-each select="adr:osoba">
      <xsl:if test="adr:adresa/@tip = 'stalna' and adr:datumRodjenja/adr:godina &gt; 1990 and adr:datumRodjenja/adr:godina &lt; 2005 and starts-with(adr:punoIme/adr:prezime,'M')">
        <tr>
          <td>
            ---
          </td>
          <td>
            <xsl:value-of select="adr:punoIme/adr:ime"/>
            <xsl:if test="count(adr:punoIme/adr:srednjeIme) &gt; 0">
              <xsl:text> </xsl:text>
              <xsl:value-of select="adr:punoIme/adr:srednjeIme"/>
            </xsl:if>
            <xsl:for-each select="adr:punoIme/adr:prezime">
              <xsl:text> </xsl:text>
              <xsl:value-of select="."/>
            </xsl:for-each>
          </td>
          <td>
            <xsl:value-of select="adr:datumRodjenja/adr:dan"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="adr:datumRodjenja/adr:mesec"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="adr:datumRodjenja/adr:godina"/>
            <xsl:text>.</xsl:text>
          </td>
          <td>
            <xsl:value-of select="adr:adresa/adr:ulica"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:broj"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:grad"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:drzava"/>
          </td>
          <td>
            <xsl:value-of select="adr:telefon"/>
          </td>
          <td>
            <xsl:for-each select="adr:email">
              <xsl:value-of select="."/>
              <br/>
            </xsl:for-each>
          </td>
        </tr>
      </xsl:if>
    </xsl:for-each>


    <xsl:for-each select="adr:kompanija">
      <xsl:if test="adr:adresa/@tip = 'stalna' and string-length(adr:naziv) &gt; 6">
        <tr>
          <td>
            <xsl:value-of select="adr:naziv"/>
          </td>
          <td>
            ---
          </td>
          <td>
            ---
          </td>
          <td>
            <xsl:value-of select="adr:adresa/adr:ulica"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:broj"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:grad"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="adr:adresa/adr:drzava"/>
          </td>
          <td>
            <xsl:value-of select="adr:telefon"/>
          </td>
          <td>
            <xsl:for-each select="adr:email">
              <xsl:value-of select="."/>
              <br/>
            </xsl:for-each>
          </td>
        </tr>
      </xsl:if>
    </xsl:for-each>


  </xsl:template>

</xsl:stylesheet>


