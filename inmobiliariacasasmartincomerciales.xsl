<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Inmobiliaria CasasMartin</title>
        <link rel="stylesheet" type="text/css" href="inmobiliariacasasmartin.css" media="screen"/>        
        <link rel="shortcut icon" href="img/icono.png" type="image/png"/>
    </head>
    <body>
        <header><h1>Inmobiliaria CasasMartin</h1></header>
        <section>
            <h2>Visitas del comercial Pablo</h2>
            <table>
                <tr>
                    <th>Dirección Propiedad</th>
                    <th>Número</th>
                    <th>Cliente</th>
                    <th>Fecha Visita</th>
                    <th>Hora Visita</th>
                </tr>
                <xsl:for-each select="inmobiliariacasasmartin/visita">
                    <tr>
                        <xsl:if test="cliente/comercial/@movil='665432109'">
                            <td><xsl:value-of select="propiedad/direccion_pr"/></td>
                            <td><xsl:value-of select="propiedad/numero"/></td>
                            <td><xsl:value-of select="cliente/nom_cl"/></td>
                            <td><xsl:value-of select="fecha_visita"/></td>
                            <td><xsl:value-of select="hora_visita"/></td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
        </section>
        <footer>Proyecto Común LND+BAE+ETS+PRO 1ºDAM Virginia Martín</footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>