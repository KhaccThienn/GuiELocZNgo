<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Danh Sach</title>
                <style>
                    table{
                    width: 100%;
                    }
                    td{
                    padding: 10px;
                    }
                </style>
            </head>
            <body>
                <table border='1px' cellspacing="0" cellpadding="5">
                    <tr>
                        <td>
                            Employee ID
                        </td>
                        <td>
                            FirstName
                        </td>
                        <td>
                            LastName
                        </td>
                        <td>
                            Email
                        </td>
                        <td>
                            Phone Number
                        </td>
                        <td>
                            Date
                        </td>
                        <td>
                            Job ID
                        </td>
                        <td>
                            Salary
                        </td>
                        <td>
                            Manager ID
                        </td>
                    </tr>
                    <xsl:for-each select="Employees/Employee">
                        <xsl:sort select="lastName" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="ID"/>
                            </td>
                            <td>
                                <xsl:value-of select="firstName"/>
                            </td>
                            <td>
                                <xsl:value-of select="lastName"/>
                            </td>
                            <td>
                                <xsl:value-of select="Email"/>
                            </td>
                            <td>
                                <xsl:value-of select="Phone"/>
                            </td>
                            <td>
                                <xsl:value-of select="Date"/>
                            </td>
                            <td>
                                <xsl:value-of select="JobID"/>
                            </td>
                            <td>
                                <xsl:value-of select="Salary"/>
                            </td>
                            <td>
                                <xsl:value-of select="@managerID"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>