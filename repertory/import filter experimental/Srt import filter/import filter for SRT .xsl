<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:text="http://openoffice.org/2000/text" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0">

	<xsl:template match="/">


		<office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:tableooo="http://openoffice.org/2009/table" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" xmlns:formx="urn:openoffice:names:experimental:ooxml-odf-interop:xmlns:form:1.0" xmlns:css3t="http://www.w3.org/TR/css3-text/" office:version="1.2" grddl:transformation="http://docs.oasis-open.org/office/1.2/xslt/odf2rdf.xsl">
			<office:scripts/>
			<office:font-face-decls>
				<style:font-face style:name="Mangal1" svg:font-family="Mangal"/>
				<style:font-face style:name="NewsGoth Cn BT" svg:font-family="&apos;NewsGoth Cn BT&apos;"/>
				<style:font-face style:name="Lucida Sans Unicode" svg:font-family="&apos;Lucida Sans Unicode&apos;" style:font-family-generic="system" style:font-pitch="variable"/>
				<style:font-face style:name="Mangal" svg:font-family="Mangal" style:font-family-generic="system" style:font-pitch="variable"/>
			</office:font-face-decls>
			<office:automatic-styles>
				<style:style style:name="Table1" style:family="table">
					<style:table-properties style:width="25.7cm" table:align="margins"/>
				</style:style>
				<style:style style:name="Table1.A" style:family="table-column">
					<style:table-column-properties style:column-width="2.335cm" style:rel-column-width="5956*"/>
				</style:style>
				<style:style style:name="Table1.B" style:family="table-column">
					<style:table-column-properties style:column-width="5.768cm" style:rel-column-width="14707*"/>
				</style:style>
				<style:style style:name="Table1.C" style:family="table-column">
					<style:table-column-properties style:column-width="7.165cm" style:rel-column-width="18270*"/>
				</style:style>
				<style:style style:name="Table1.D" style:family="table-column">
					<style:table-column-properties style:column-width="7.583cm" style:rel-column-width="19338*"/>
				</style:style>
				<style:style style:name="Table1.E" style:family="table-column">
					<style:table-column-properties style:column-width="2.849cm" style:rel-column-width="7264*"/>
				</style:style>
				<style:style style:name="Table1.A1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="0.002cm solid #000000" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table1.E1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table1.A2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table1.E2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="0.002cm solid #000000" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3" style:family="table">
					<style:table-properties style:width="25.7cm" fo:margin-left="0cm" fo:margin-right="0cm" table:align="margins"/>
				</style:style>
				<style:style style:name="Table3.A" style:family="table-column">
					<style:table-column-properties style:column-width="1.288cm" style:rel-column-width="730*"/>
				</style:style>
				<style:style style:name="Table3.B" style:family="table-column">
					<style:table-column-properties style:column-width="2.969cm" style:rel-column-width="1683*"/>
				</style:style>
				<style:style style:name="Table3.C" style:family="table-column">
					<style:table-column-properties style:column-width="2.9cm" style:rel-column-width="1644*"/>
				</style:style>
				<style:style style:name="Table3.D" style:family="table-column">
					<style:table-column-properties style:column-width="2.392cm" style:rel-column-width="1356*"/>
				</style:style>
				<style:style style:name="Table3.E" style:family="table-column">
					<style:table-column-properties style:column-width="2.508cm" style:rel-column-width="1422*"/>
				</style:style>
				<style:style style:name="Table3.F" style:family="table-column">
					<style:table-column-properties style:column-width="1.61cm" style:rel-column-width="913*"/>
				</style:style>
				<style:style style:name="Table3.G" style:family="table-column">
					<style:table-column-properties style:column-width="1.496cm" style:rel-column-width="848*"/>
				</style:style>
				<style:style style:name="Table3.H" style:family="table-column">
					<style:table-column-properties style:column-width="2.852cm" style:rel-column-width="1617*"/>
				</style:style>
				<style:style style:name="Table3.I" style:family="table-column">
					<style:table-column-properties style:column-width="1.404cm" style:rel-column-width="796*"/>
				</style:style>
				<style:style style:name="Table3.J" style:family="table-column">
					<style:table-column-properties style:column-width="0.942cm" style:rel-column-width="534*"/>
				</style:style>
				<style:style style:name="Table3.K" style:family="table-column">
					<style:table-column-properties style:column-width="1.635cm" style:rel-column-width="927*"/>
				</style:style>
				<style:style style:name="Table3.L" style:family="table-column">
					<style:table-column-properties style:column-width="0.736cm" style:rel-column-width="417*"/>
				</style:style>
				<style:style style:name="Table3.M" style:family="table-column">
					<style:table-column-properties style:column-width="1.127cm" style:rel-column-width="639*"/>
				</style:style>
				<style:style style:name="Table3.N" style:family="table-column">
					<style:table-column-properties style:column-width="1.104cm" style:rel-column-width="626*"/>
				</style:style>
				<style:style style:name="Table3.O" style:family="table-column">
					<style:table-column-properties style:column-width="0.737cm" style:rel-column-width="418*"/>
				</style:style>
				<style:style style:name="Table3.A1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="0.002cm solid #000000" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3.O1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3.2" style:family="table-row">
					<style:table-row-properties style:min-row-height="0.351cm"/>
				</style:style>
				<style:style style:name="Table3.A2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3.L2" style:family="table-cell" style:data-style-name="N0">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3.O2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="0.002cm solid #000000" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Table3.6" style:family="table-row">
					<style:table-row-properties style:min-row-height="0.021cm"/>
				</style:style>
				<style:style style:name="Table3.7" style:family="table-row">
					<style:table-row-properties style:min-row-height="0.683cm"/>
				</style:style>
				<style:style style:name="P1" style:family="paragraph" style:parent-style-name="Text_20_body">
					<style:text-properties fo:color="#eb613d" fo:font-style="italic" style:font-style-asian="italic" style:font-style-complex="italic"/>
				</style:style>
				<style:style style:name="P2" style:family="paragraph" style:parent-style-name="Text_20_body">
					<style:text-properties fo:font-style="italic" style:font-style-asian="italic" style:font-style-complex="italic"/>
				</style:style>
				<style:style style:name="P3" style:family="paragraph" style:parent-style-name="Text_20_body">
					<style:paragraph-properties fo:text-align="justify" style:justify-single-word="false"/>
					<style:text-properties fo:color="#000000" fo:font-style="normal" style:font-style-asian="normal" style:font-style-complex="normal"/>
				</style:style>
				<style:style style:name="T1" style:family="text">
					<style:text-properties fo:color="#eb613d"/>
				</style:style>
				<number:number-style style:name="N0">
					<number:number number:min-integer-digits="1"/>
				</number:number-style>

			</office:automatic-styles>
			<office:body>
				<office:text>
					<text:sequence-decls>
						<text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Table"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Text"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
					</text:sequence-decls>
					<text:p text:style-name="Standard">Chapter information</text:p>
					<table:table table:name="Table1" table:style-name="Table1">
						<table:table-column table:style-name="Table1.A"/>
						<table:table-column table:style-name="Table1.B"/>
						<table:table-column table:style-name="Table1.C"/>
						<table:table-column table:style-name="Table1.D"/>
						<table:table-column table:style-name="Table1.E"/>
						<table:table-row>
							<table:table-cell table:style-name="Table1.A1" office:value-type="string">
								<text:p text:style-name="Table_20_Contents">Cidx</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A1" office:value-type="string">
								<text:p text:style-name="Table_20_Contents">Section</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A1" office:value-type="string">
								<text:p text:style-name="Table_20_Contents">Chapter</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A1" office:value-type="string">
								<text:p text:style-name="Table_20_Contents">CShort</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.E1" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
						</table:table-row>
						<table:table-row>
							<table:table-cell table:style-name="Table1.A2" table:number-rows-spanned="2" office:value-type="string">
								<text:p text:style-name="CI-T-Cidx">
								</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="CI-T-Sname"/>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="CI-T-Cname">
									<xsl:call-template name="chapter"/>
								</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="CI-T-Cshort"/>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.E2" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
						</table:table-row>
						<table:table-row>
							<table:covered-table-cell/>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.A2" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
							<table:table-cell table:style-name="Table1.E2" office:value-type="string">
								<text:p text:style-name="Table_20_Contents"/>
							</table:table-cell>
						</table:table-row>
					</table:table>
					<text:p/>

					<text:p text:style-name="P2">
						<xsl:call-template name="chapter"/>
					</text:p>

					<table:table table:name="Table3" table:style-name="Table3">
						<table:table-column table:style-name="Table3.A"/>
						<table:table-column table:style-name="Table3.B"/>
						<table:table-column table:style-name="Table3.C"/>
						<table:table-column table:style-name="Table3.D"/>
						<table:table-column table:style-name="Table3.E"/>
						<table:table-column table:style-name="Table3.F"/>
						<table:table-column table:style-name="Table3.G"/>
						<table:table-column table:style-name="Table3.H"/>
						<table:table-column table:style-name="Table3.I"/>
						<table:table-column table:style-name="Table3.J"/>
						<table:table-column table:style-name="Table3.K"/>
						<table:table-column table:style-name="Table3.L"/>
						<table:table-column table:style-name="Table3.M"/>
						<table:table-column table:style-name="Table3.N"/>
						<table:table-column table:style-name="Table3.O"/>
						<table:table-row>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Ridx*</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Level 2 </text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Level 3</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Level 4 </text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Level 5 </text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">see</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">rep-ref (SRT)</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="Standard">Comments (whole rubric) </text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">compare</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">rub fn</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Remedy </text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Gr</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Constraint</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.A1" office:value-type="string">
								<text:p text:style-name="SK-Standard">Footenote</text:p>
							</table:table-cell>
							<table:table-cell table:style-name="Table3.O1" office:value-type="string">
								<text:p text:style-name="SK-Standard">added</text:p>
							</table:table-cell>
						</table:table-row>


						<xsl:apply-templates/>

					</table:table>


					<text:p text:style-name="Standard"/>
				</office:text>
			</office:body>
		</office:document-content>

	</xsl:template>

	<xsl:template name="placeholder">

		<text:p>I am a place holder</text:p>

	</xsl:template>

	<xsl:template match="text:p[@text:style-name='P4']">
		<xsl:if test="contains(string(.),':') and contains(.,'A')">

			<xsl:variable name ="followinglist" select="following-sibling::text:p[1]"/>
			<xsl:variable name="levellistorg" select="string(.)"/>




			<xsl:variable name="totalsubstring">
				<xsl:call-template name="count-substring">
					<xsl:with-param name="texts" select="$followinglist"/>
					<xsl:with-param name="chars" select="','"/>
				</xsl:call-template>
			</xsl:variable>

			<xsl:choose>
				<xsl:when test="$totalsubstring = 1">
					<!-- only one remedy in rubric -->


					<!-- extract the remedy
							extract its text span style
							apply grades
					-->
					<xsl:variable name="remedyname">
						<xsl:call-template name="extractremedy">
							<xsl:with-param name="remedylist" select="following::text:p[1]"/>
							<xsl:with-param name="delimiter" select="','"/>
							<xsl:with-param name="counter" select="1"/>
						</xsl:call-template>
					</xsl:variable>


					<xsl:variable name="grade">
						<xsl:call-template name="extractgrade">
							<xsl:with-param name="remname" select="$remedyname"/>
						</xsl:call-template>
					</xsl:variable>


					<table:table-row table:style-name="Table3.2">
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-L1"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L2">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="2"/>
								</xsl:call-template>
								-->
								<xsl:value-of select="normalize-space(substring-before($levellistorg,':'))"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L3">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="3"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L4">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="4"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L5">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="5"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-See"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Ref"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Rcomm"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Comp"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Fnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Rem">



								<xsl:call-template name="extractgradestyle">
									<xsl:with-param name="remname" select="$remedyname"/>
								</xsl:call-template>



							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.L2" table:number-rows-spanned="2" office:value-type="float" office:value="{$grade}">
							<text:p text:style-name="SK-T-Grade"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Remfnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.O2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Added"/>
						</table:table-cell>
					</table:table-row>
					<table:table-row table:style-name="Table3.3">
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L2-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L3-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L4-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-L5-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-See-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Ref-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Rcomm-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Comp-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Rubfnote-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
					</table:table-row>

				</xsl:when>
				<xsl:otherwise>
					<!-- more than one remedy in rubric-->
					<xsl:call-template name="outputtokens">
						<xsl:with-param name="actualnoofremedies" select="$totalsubstring"/>
						<xsl:with-param name="listofremedies" select="$followinglist"/>
						<xsl:with-param name="loopcounter" select="1"/>
						<xsl:with-param name="levellistorg" select="$levellistorg"/>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>



			<text:p/>

		</xsl:if>
	</xsl:template>

	<xsl:template name="outputtokens">
		<xsl:param name="actualnoofremedies" />
		<xsl:param name="listofremedies"/>
		<xsl:param name="loopcounter" />
		<xsl:param name="levellistorg"/>

		<xsl:if test="$loopcounter &lt; $actualnoofremedies +1">



			<xsl:choose>
				<xsl:when test="$loopcounter = 1">
					<!-- first remedy in more than one remedy-->
					<xsl:variable name="noofrowsspanned" select="$actualnoofremedies + ($actualnoofremedies +1) mod 2"/>

					<xsl:variable name="remedyname">
						<xsl:call-template name="extractremedy">
							<xsl:with-param name="remedylist" select="$listofremedies"/>
							<xsl:with-param name="delimiter" select="','"/>
							<xsl:with-param name="counter" select="$loopcounter"/>
						</xsl:call-template>
					</xsl:variable>

					<xsl:variable name="grade">
						<xsl:call-template name="extractgrade">
							<xsl:with-param name="remname" select="$remedyname"/>
						</xsl:call-template>
					</xsl:variable>


					<table:table-row table:style-name="Table3.2">
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$actualnoofremedies*2}" office:value-type="string">
							<text:p text:style-name="SK-T-L1"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L2">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="2"/>
								</xsl:call-template>
								-->

								<xsl:value-of select="normalize-space(substring-before($levellistorg,':'))"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L3">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="3"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L4">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="4"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L5">
								<!--
								<xsl:call-template name="extractlevel">
									<xsl:with-param name="levellist" select="$levellistorg" />
									<xsl:with-param name="delimiter" select="','"/>
									<xsl:with-param name="counter" select="5"/>
								</xsl:call-template>
								-->
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-See"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Ref"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Rcomm"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Comp"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Rubfnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Rem">




								<xsl:call-template name="extractgradestyle">
									<xsl:with-param name="remname" select="$remedyname"/>
								</xsl:call-template>



							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.L2" table:number-rows-spanned="2" office:value-type="float" office:value="{$grade}">
							<text:p text:style-name="SK-T-Grade"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Remfnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.O2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Added"/>
						</table:table-cell>
					</table:table-row>
					<table:table-row table:style-name="Table3.2">
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
					</table:table-row>

					<xsl:call-template name="outputtokens">
						<xsl:with-param name="actualnoofremedies" select="$actualnoofremedies"/>
						<xsl:with-param name="listofremedies" select="$listofremedies"/>
						<xsl:with-param name="loopcounter" select="$loopcounter +1"/>
					</xsl:call-template>


				</xsl:when>



				<xsl:when test="$loopcounter = floor($actualnoofremedies div 2) +1">
					<!-- subdivision for german levels -->

					<xsl:variable name="noofrowsspanned" select="$actualnoofremedies - ($actualnoofremedies + 1) mod 2 "/>

					<xsl:variable name="remedyname">
						<xsl:call-template name="extractremedy">
							<xsl:with-param name="remedylist" select="$listofremedies"/>
							<xsl:with-param name="delimiter" select="','"/>
							<xsl:with-param name="counter" select="$loopcounter"/>
						</xsl:call-template>
					</xsl:variable>

					<xsl:variable name="grade">
						<xsl:call-template name="extractgrade">
							<xsl:with-param name="remname" select="$remedyname"/>
						</xsl:call-template>
					</xsl:variable>



					<table:table-row table:style-name="Table3.6">
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Rem">

								<xsl:call-template name="extractgradestyle">
									<xsl:with-param name="remname" select="$remedyname"/>
								</xsl:call-template>



							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.L2" table:number-rows-spanned="2" office:value-type="float" office:value="{$grade}">
							<text:p text:style-name="SK-T-Grade"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Remfnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.O2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Added"/>
						</table:table-cell>
					</table:table-row>
					<table:table-row table:style-name="Table3.7">
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L2-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L3-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L4-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-L5-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-See-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Ref-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Rcomm-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Comp-de"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="{$noofrowsspanned}" office:value-type="string">
							<text:p text:style-name="SK-T-Rubfnote-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
					</table:table-row>

					<xsl:call-template name="outputtokens">
						<xsl:with-param name="actualnoofremedies" select="$actualnoofremedies"/>
						<xsl:with-param name="listofremedies" select="$listofremedies"/>
						<xsl:with-param name="loopcounter" select="$loopcounter + 1 "/>
					</xsl:call-template>

				</xsl:when>

				<xsl:otherwise>
					<!-- any other remedy in more that one rubric -->

					<xsl:variable name="remedyname">
						<xsl:call-template name="extractremedy">
							<xsl:with-param name="remedylist" select="$listofremedies"/>
							<xsl:with-param name="delimiter" select="','"/>
							<xsl:with-param name="counter" select="$loopcounter"/>
						</xsl:call-template>
					</xsl:variable>


					<xsl:variable name="grade">
						<xsl:call-template name="extractgrade">
							<xsl:with-param name="remname" select="$remedyname"/>
						</xsl:call-template>
					</xsl:variable>



					<table:table-row table:style-name="Table3.2">
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Rem">


								<xsl:call-template name="extractgradestyle">
									<xsl:with-param name="remname" select="$remedyname"/>
								</xsl:call-template>




							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.L2" table:number-rows-spanned="2" office:value-type="float" office:value="{$grade}">
							<text:p text:style-name="SK-T-Grade"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.A2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Remfnote"/>
						</table:table-cell>
						<table:table-cell table:style-name="Table3.O2" table:number-rows-spanned="2" office:value-type="string">
							<text:p text:style-name="SK-T-Added"/>
						</table:table-cell>
					</table:table-row>
					<table:table-row table:style-name="Table3.2">
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
						<table:table-cell table:style-name="Table3.A2" office:value-type="string">
							<text:p text:style-name="SK-T-Constraint-de"/>
						</table:table-cell>
						<table:covered-table-cell/>
						<table:covered-table-cell/>
					</table:table-row>

					<xsl:call-template name="outputtokens">
						<xsl:with-param name="actualnoofremedies" select="$actualnoofremedies"/>
						<xsl:with-param name="listofremedies" select="$listofremedies"/>
						<xsl:with-param name="loopcounter" select="$loopcounter + 1"/>
					</xsl:call-template>

				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>


	<xsl:template name="level2list">
		<xsl:param name="listname" />
		<xsl:value-of select="substring-before($listname,':')"/>
	</xsl:template>

	<xsl:template name="extractgrade">
		<xsl:param name="remname"/>

		<xsl:variable name="stylename">
			<xsl:for-each select="following::text:p[1]/text:span">
				<xsl:if test="contains(.,$remname)">
					<xsl:value-of select="@text:style-name"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$stylename ='T5'">

				<xsl:value-of select="2"/>



			</xsl:when>

			<xsl:when test="$stylename ='T4'">

				<xsl:choose>
					<xsl:when test="contains(.,'Hiccough') or contains(.,'Cough')">

						<xsl:value-of select="4"/>



					</xsl:when>
					<xsl:otherwise>

						<xsl:value-of select="3"/>

					</xsl:otherwise>
				</xsl:choose>




			</xsl:when>


			<xsl:when test="$stylename ='T9'">




				<xsl:choose>
					<xsl:when test="contains(.,'Hiccough') or contains(.,'Cough')">

						<xsl:value-of select="3"/>



					</xsl:when>
					<xsl:otherwise>

						<xsl:value-of select="4"/>


					</xsl:otherwise>
				</xsl:choose>




			</xsl:when>

			<xsl:otherwise>


				<xsl:value-of select="1"/>




			</xsl:otherwise>
		</xsl:choose>


	</xsl:template>

	<xsl:template name="extractgradestyle">
		<xsl:param name="remname"/>

		<xsl:variable name="stylename">
			<xsl:for-each select="following::text:p[1]/text:span">
				<xsl:if test="contains(.,$remname)">
					<xsl:value-of select="@text:style-name"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$stylename ='T5'" >
				<text:span text:style-name="SK-T-Gr2">
					<xsl:value-of select="$remname"/>

				</text:span>

			</xsl:when>

			<xsl:when test="$stylename ='T4'">
				<xsl:choose>
					<xsl:when test="contains(current(),'Hiccough') or contains(current(),'Cough')">
						<text:span text:style-name="SK-T-Gr4">
							<xsl:value-of select="$remname"/>

						</text:span>

					</xsl:when>

					<xsl:otherwise>
						<text:span text:style-name="SK-T-Gr3">
							<xsl:value-of select="$remname"/>
						</text:span>
					</xsl:otherwise>
				</xsl:choose>

			</xsl:when>


			<xsl:when test="$stylename ='T9'">

				<xsl:choose>
					<xsl:when test="contains(current(),'Hiccough') or contains(current(),'Cough')">
						<text:span text:style-name="SK-T-Gr3">
							<xsl:value-of select="$remname"/>

						</text:span>

					</xsl:when>
					<xsl:otherwise>
						<text:span text:style-name="SK-T-Gr4">
							<xsl:value-of select="$remname"/>

						</text:span>
					</xsl:otherwise>
				</xsl:choose>


			</xsl:when>

			<xsl:otherwise>

				<text:span text:style-name="SK-T-Gr1">
					<xsl:value-of select="$remname"/>

				</text:span>


			</xsl:otherwise>
		</xsl:choose>

	</xsl:template>

	<xsl:template name="extractremedy">
		<xsl:param name="remedylist"/>
		<xsl:param name="delimiter" select="','"/>
		<xsl:param name ="counter" />

		<xsl:choose >
			<xsl:when test="$counter &gt; 1">
				<xsl:call-template name="extractremedy">
					<xsl:with-param name="remedylist" select="substring-after($remedylist,$delimiter)" />
					<xsl:with-param name="delimiter" select="','"/>
					<xsl:with-param name="counter" select="$counter -1"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="not(contains($remedylist,$delimiter))">

						<xsl:value-of select="normalize-space($remedylist)"/>


					</xsl:when>
					<xsl:otherwise>

						<xsl:value-of select="normalize-space(substring-before($remedylist,$delimiter))"/>


						<!-- //only first remdedy need to be returned
				<xsl:call-template name="extractremedy">
					<xsl:with-param name="remedylist" select="substring-after($remedylist,$delimiter)"/>
					<xsl:with-param name="delimiter" select="','"/>
				</xsl:call-template>
				-->
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="extractlevel">
		<xsl:param name="levellist"/>
		<xsl:param name="delimiter" select="','"/>
		<xsl:param name ="counter" />

		<xsl:choose >
			<xsl:when test="$counter &gt; 1">
				<xsl:call-template name="extractlevel">
					<xsl:with-param name="levellist" select="substring-after($levellist,$delimiter)" />
					<xsl:with-param name="delimiter" select="','"/>
					<xsl:with-param name="counter" select="$counter -1"/>
				</xsl:call-template>
			</xsl:when>

			<xsl:otherwise>

				<xsl:choose>
					<xsl:when test="not(contains($levellist,$delimiter))">


						<xsl:value-of select="normalize-space(substring-before($levellist,':'))"/>

					</xsl:when>

					<xsl:otherwise>

						<xsl:value-of select="normalize-space(substring-before($levellist,$delimiter))"/>

					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="count-substring">
		<xsl:param name="texts"/>
		<xsl:param name="chars"/>

		<xsl:choose>
			<xsl:when test="string-length($texts) = 0 or string-length($chars) = 0">
				<xsl:text>0</xsl:text>
			</xsl:when>
			<xsl:when test="contains($texts, $chars)">
				<xsl:variable name="remaining">
					<xsl:call-template name="count-substring">
						<xsl:with-param name="texts" select="substring-after($texts, $chars)"/>
						<xsl:with-param name="chars" select="$chars"/>
					</xsl:call-template>
				</xsl:variable>
				<text:p>
					<xsl:value-of select="$remaining + 1"/>
				</text:p>



			</xsl:when>
			<xsl:otherwise>
				<text:p>
					<xsl:text>1</xsl:text>
				</text:p>
			</xsl:otherwise>

		</xsl:choose>
	</xsl:template>


	<xsl:template name="chapter">
		<xsl:value-of select="//text:p[@text:style-name='P5']" />
	</xsl:template>

</xsl:stylesheet>