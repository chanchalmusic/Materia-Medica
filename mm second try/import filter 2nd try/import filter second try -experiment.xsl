<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:text="http://openoffice.org/2000/text" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0">




	<xsl:template match="/">


		<office:document-content xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:ooo="http://openoffice.org/2004/office" xmlns:ooow="http://openoffice.org/2004/writer" xmlns:oooc="http://openoffice.org/2004/calc" xmlns:dom="http://www.w3.org/2001/xml-events" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:rpt="http://openoffice.org/2005/report" xmlns:of="urn:oasis:names:tc:opendocument:xmlns:of:1.2" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:field="urn:openoffice:names:experimental:ooo-ms-interop:xmlns:field:1.0" office:version="1.2" grddl:transformation="http://docs.oasis-open.org/office/1.2/xslt/odf2rdf.xsl">
			<office:scripts/>
			<office:font-face-decls>
				<style:font-face style:name="Mangal1" svg:font-family="Mangal"/>
				<style:font-face style:name="NewsGoth Cn BT" svg:font-family="&apos;NewsGoth Cn BT&apos;"/>
				<style:font-face style:name="Courier New" svg:font-family="&apos;Courier New&apos;" style:font-family-generic="modern" style:font-pitch="fixed"/>
				<style:font-face style:name="NSimSun" svg:font-family="NSimSun" style:font-family-generic="modern" style:font-pitch="fixed"/>
				<style:font-face style:name="Mangal" svg:font-family="Mangal" style:font-family-generic="system" style:font-pitch="variable"/>
				<style:font-face style:name="SimSun" svg:font-family="SimSun" style:font-family-generic="system" style:font-pitch="variable"/>
			</office:font-face-decls>
			<office:automatic-styles>
				<style:style style:name="Tabelle1" style:family="table">
					<style:table-properties style:width="17cm" table:align="margins"/>
				</style:style>
				<style:style style:name="Tabelle1.A" style:family="table-column">
					<style:table-column-properties style:column-width="2.427cm" style:rel-column-width="9356*"/>
				</style:style>
				<style:style style:name="Tabelle1.B" style:family="table-column">
					<style:table-column-properties style:column-width="4.805cm" style:rel-column-width="18522*"/>
				</style:style>
				<style:style style:name="Tabelle1.C" style:family="table-column">
					<style:table-column-properties style:column-width="4.99cm" style:rel-column-width="19236*"/>
				</style:style>
				<style:style style:name="Tabelle1.D" style:family="table-column">
					<style:table-column-properties style:column-width="2.646cm" style:rel-column-width="10199*"/>
				</style:style>
				<style:style style:name="Tabelle1.E" style:family="table-column">
					<style:table-column-properties style:column-width="0.956cm" style:rel-column-width="3685*"/>
				</style:style>
				<style:style style:name="Tabelle1.F" style:family="table-column">
					<style:table-column-properties style:column-width="0.631cm" style:rel-column-width="2434*"/>
				</style:style>
				<style:style style:name="Tabelle1.G" style:family="table-column">
					<style:table-column-properties style:column-width="0.545cm" style:rel-column-width="2103*"/>
				</style:style>
				<style:style style:name="Tabelle1.A1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="0.002cm solid #000000" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Tabelle1.G1" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Tabelle1.A2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="none" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="Tabelle1.G2" style:family="table-cell">
					<style:table-cell-properties fo:padding="0.097cm" fo:border-left="0.002cm solid #000000" fo:border-right="0.002cm solid #000000" fo:border-top="none" fo:border-bottom="0.002cm solid #000000"/>
				</style:style>
				<style:style style:name="P1" style:family="paragraph" style:parent-style-name="Table_20_Contents">
					<style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold"/>
				</style:style>
			</office:automatic-styles>
			<office:body>
				<office:text>
					<text:sequence-decls>
						<text:sequence-decl text:display-outline-level="0" text:name="Illustration"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Table"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Text"/>
						<text:sequence-decl text:display-outline-level="0" text:name="Drawing"/>
					</text:sequence-decls>

					<!-- templates code will be below -->
					<xsl:apply-templates />

					<text:p text:style-name="Standard">
						<text:span text:style-name="Emphasis"/>
					</text:p>

				</office:text>
			</office:body>
		</office:document-content>

	</xsl:template>

	<xsl:template match="text:p[@text:style-name='P5']">

		<table:table table:name="Tabelle1" table:style-name="Tabelle1">
			<table:table-column table:style-name="Tabelle1.A"/>
			<table:table-column table:style-name="Tabelle1.B"/>
			<table:table-column table:style-name="Tabelle1.C"/>
			<table:table-column table:style-name="Tabelle1.D"/>
			<table:table-column table:style-name="Tabelle1.E"/>
			<table:table-column table:style-name="Tabelle1.F"/>
			<table:table-column table:style-name="Tabelle1.G"/>
			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="SK-MM-Rem">
						<xsl:value-of select="."/>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents">L1</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents">L2</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents">L3</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents">fnote</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.G1" office:value-type="string">
					<text:p text:style-name="Table_20_Contents"/>
				</table:table-cell>
			</table:table-row>


			<xsl:if test="contains(following::text:p[@text:style-name='P2'][1], 'REGION')">

				<!-- get REGION text-->
				<xsl:variable name="rstring">
					<xsl:value-of select="replace(substring-after(following::text:p[@text:style-name='P2'][1],'REGION:$'),'[$]', '1')">
					</xsl:value-of>
				</xsl:variable>


				<!--count REGION entity-->
				<xsl:variable name="rstringcounter">
					<xsl:copy-of select="count(tokenize($rstring,'1'))" />
				</xsl:variable>


				<xsl:call-template name="outputrstring">
					<xsl:with-param name="totalstring" select="$rstring"/>
					<xsl:with-param name="counter" select="$rstringcounter"/>
					<xsl:with-param name="totalcounter" select="$rstringcounter"/>
				</xsl:call-template>

			</xsl:if>

			<xsl:if test="contains(following::text:p[@text:style-name='P2'][2], 'WORSE')">

				<!--get WORSE text-->
				<xsl:variable name="wstring">
					<xsl:value-of select="replace(substring-after(following::text:p[@text:style-name='P2'][2],'WORSE:$'),'[$]', '1')">
					</xsl:value-of>
				</xsl:variable>

				<!--count WORSE entity-->
				<xsl:variable name="wstringcounter">
					<xsl:copy-of select="count(tokenize($wstring,'1'))" />
				</xsl:variable>


				<xsl:call-template name="outputrstringworse">
					<xsl:with-param name="totalstring" select="$wstring"/>
					<xsl:with-param name="counter" select="$wstringcounter"/>
					<xsl:with-param name="totalcounter" select="$wstringcounter"/>
				</xsl:call-template>
			</xsl:if>

			<xsl:if test="contains(following::text:p[@text:style-name='P2'][3], 'BETTER')">
				<!--get BETTER text-->
				<xsl:variable name="bstring">
					<xsl:value-of select="replace(substring-after(following::text:p[@text:style-name='P2'][3],'BETTER:$'),'[$]', '1')">
					</xsl:value-of>
				</xsl:variable>

				<!--count BETTER entity-->
				<xsl:variable name="bstringcounter">
					<xsl:copy-of select="count(tokenize($bstring,'1'))" />
				</xsl:variable>



				<xsl:call-template name="outputrstringbetter">
					<xsl:with-param name="totalstring" select="$bstring"/>
					<xsl:with-param name="counter" select="$bstringcounter"/>
					<xsl:with-param name="totalcounter" select="$bstringcounter"/>
				</xsl:call-template>

			</xsl:if>

		</table:table>

		<text:p>
			<text:line-break/>
		</text:p>
<!-- 
		<text:p text:style-name="Primary">
			<xsl:value-of select="substring-before(following::text:p[@text:style-name='P4'][1], '....................')" />
			<text:line-break/>
		</text:p> -->


		
		<xsl:variable name="contextprimary" select="following::text:p[@text:style-name='P4'][1]" />

		<xsl:variable name="tokenizedsample" select="tokenize(substring-before(following::text:p[@text:style-name='P4'][1], '....................'), '\.')" />

		<xsl:for-each select="$tokenizedsample">


			<xsl:variable name="tokenizedsubstr" select="tokenize(., ',\s|;\s')" />

			<text:p text:style-name="Primary">
				<xsl:for-each select="$tokenizedsubstr">
					<xsl:call-template name="primarytext">
						<xsl:with-param name="texts" select="normalize-space(current())" />
						<xsl:with-param name="contextprimary"  select="$contextprimary"/>
					</xsl:call-template>
				</xsl:for-each>
			</text:p>


		</xsl:for-each>


<!-- 		<text:p text:style-name="Secondary">
			<xsl:value-of select="substring-after(following::text:p[@text:style-name='P4'][1], '....................')" />
			<text:line-break/>
		</text:p> -->
		
		<xsl:variable name="contextsecondary" select="following::text:p[@text:style-name='P4'][1]" />

		<xsl:variable name="tokenizedsample" select="tokenize(substring-after(following::text:p[@text:style-name='P4'][1], '....................'), '\.')" />

		<xsl:for-each select="$tokenizedsample">


			<xsl:variable name="tokenizedsubstr" select="tokenize(., ',\s|;\s')" />

			<text:p text:style-name="Secondary">
				<xsl:for-each select="$tokenizedsubstr">
					<xsl:call-template name="primarytext">
						<xsl:with-param name="texts" select="normalize-space(current())" />
						<xsl:with-param name="contextprimary"  select="$contextsecondary"/>
					</xsl:call-template>
				</xsl:for-each>
			</text:p>


		</xsl:for-each>

		<text:p>
			<xsl:value-of select="following::text:p[@text:style-name='P6'][1]"/>
		</text:p>

		<text:p />

	</xsl:template>


	<xsl:template name="primarytext">
		<xsl:param name="texts" />
		<xsl:param name="contextprimary" />

		<xsl:variable name="text-delimiter" select="substring(substring-after($contextprimary, $texts),1,1)"/>
		
		<!-- <xsl:value-of select="$contextprimary"/> -->

		<xsl:variable name="styleinfo">
			<xsl:for-each select="$contextprimary/text:span">
				<xsl:if test="contains(.,$texts)">
					<xsl:variable name="textstyle">
						<xsl:value-of select="@text:style-name"/>
					</xsl:variable>

					<xsl:choose>
						<xsl:when test="$textstyle = 'T6' or $textstyle = 'T7'">
							<xsl:value-of select="'Gr2'"/>
						</xsl:when>
					</xsl:choose>
				</xsl:if>
			</xsl:for-each>

			<xsl:if test="matches(normalize-space($texts), '^[A-Z\.\s]+$')">
				<xsl:value-of select="'Gr3'"/>
			</xsl:if>
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$styleinfo = 'Gr2' ">
				<text:span text:style-name="Emphasis">
					<xsl:value-of select="concat($texts, $text-delimiter, ' ')"/>
				</text:span>


			</xsl:when>
			<xsl:when test="$styleinfo = 'Gr3'">
				<text:span text:style-name="Strong Emphasis">
					<xsl:value-of select="concat($texts, $text-delimiter, ' ')"/>
				</text:span>
			</xsl:when>

			<xsl:otherwise>
				<xsl:value-of select="concat($texts, $text-delimiter, ' ')"/>
			</xsl:otherwise>
		</xsl:choose> 





		<!-- <text:p>
		<xsl:value-of select="name(.)" />
		<xsl:value-of select="position()" />
		</text:p>
		 -->

		<!-- <xsl:variable name="styleinfo">
			<xsl:for-each select="text:p[6]/text:span">


				<xsl:if test="contains(.,normalize-space($texts))">
					<xsl:variable name="textstyle">
						<xsl:value-of select="@text:style-name"/>
					</xsl:variable>

					<xsl:choose>
						<xsl:when test="$textstyle = 'T6' or $textstyle = 'T7'">
							<xsl:value-of select="'Gr2'"/>
						</xsl:when>
					</xsl:choose>
				</xsl:if>
			</xsl:for-each>

			<xsl:if test="matches(normalize-space($texts), '^[A-Z\.\s]+$')">
				<xsl:value-of select="'Gr3'"/>
			</xsl:if>

		</xsl:variable>


		<xsl:choose>
			<xsl:when test="$styleinfo = 'Gr2' ">
				<text:span text:style-name="Emphasis">
					<xsl:value-of select="$texts"/>
				</text:span>


			</xsl:when>
			<xsl:when test="$styleinfo = 'Gr3'">
				<text:span text:style-name="Strong Emphasis">
					<xsl:value-of select="$texts"/>
				</text:span>
			</xsl:when>

			<xsl:otherwise>
				<xsl:value-of select="$texts"/>
			</xsl:otherwise>
		</xsl:choose> -->





	</xsl:template>

	<!--table formulation for REGION-->
	<xsl:template name="outputrstring">
		<xsl:param name="totalstring"/>
		<xsl:param name="counter"/>
		<xsl:param name="totalcounter" />

		<!-- <text:p>
		<xsl:value-of select="$counter"/>
		</text:p>
 -->
		<!-- extract substring split by $-->
		<xsl:variable name="toprint">
			<xsl:call-template name="extractsubstringforme">
				<xsl:with-param name="mainstring" select="$totalstring"/>
				<xsl:with-param name="delimiter" select="'1'"/> 
				<xsl:with-param name="counter" select ="$totalcounter - $counter + 1" />	
			</xsl:call-template>
		</xsl:variable>

		<!--check of nesting in region text-->
		<xsl:if test="contains($toprint,':')">
			<xsl:choose>
				<!--check for 3 level nesting-->
				<xsl:when test="contains(substring-after($toprint, ':'),'(')">
					<xsl:variable name="nestedstring">
						<xsl:copy-of select="translate($toprint, ':()', '123')"/>
					</xsl:variable>

					<xsl:variable name="firstlevel" select="normalize-space(substring-before($nestedstring,'1'))" />


					<xsl:variable name="secondlevel" select="normalize-space(substring-before(substring-after($nestedstring,'1'), '2') )"/>


					<xsl:variable name="thirdlevel" select="normalize-space(substring-before(substring-after($nestedstring,'2'), '3'))"/>

					<xsl:variable name="thirdlevelcounter" >
						<xsl:call-template name="count-substring">
							<xsl:with-param name="texts" select="$thirdlevel"/>
							<xsl:with-param name="chars" select="'.'"/>
						</xsl:call-template>
					</xsl:variable>

					<!--call to print first row and level 3 elements-->
					<xsl:call-template name="printnestlevel">
						<xsl:with-param name="flevel" select="$firstlevel" />
						<xsl:with-param name="slevel" select="$secondlevel" />
						<xsl:with-param name="tlevel" select="$thirdlevel" />
						<xsl:with-param name="counter" select="$thirdlevelcounter"/>
						<xsl:with-param name="totalcounter" select="$thirdlevelcounter"/>
					</xsl:call-template>

					<xsl:variable name="remnslevel" select="normalize-space(substring-after($nestedstring,'3.'))" />
					<xsl:variable name="remnslevelcounter" >
						<xsl:call-template name="count-substring">
							<xsl:with-param name="texts" select="$remnslevel"/>
							<xsl:with-param name="chars" select="'.'"/>
						</xsl:call-template>
					</xsl:variable>

					<!--call to remaining second rows -->
					<xsl:call-template name="printremnslevel">
						<xsl:with-param name="remnslevelstr" select="$remnslevel" />
						<xsl:with-param name="counter" select="$remnslevelcounter"/>
						<xsl:with-param name="totalcounter" select="$remnslevelcounter"/>
					</xsl:call-template>

				</xsl:when>

				<!--otherwise it is a level 2 nesting-->
				<xsl:otherwise>
					<xsl:variable name="nestedstring">
						<xsl:copy-of select="translate($toprint, ':', '1')"/>
					</xsl:variable>

					<xsl:variable name="level2counter">
						<xsl:call-template name="count-substring">
							<xsl:with-param name="texts" select="substring-after($nestedstring, '1')"/>
							<xsl:with-param name="chars" select="'.'"/>
						</xsl:call-template>

					</xsl:variable>

					<xsl:call-template name="print2levelnest">
						<xsl:with-param name="totalstring" select="$nestedstring"/>
						<xsl:with-param name="counter" select="$level2counter"/>
						<xsl:with-param name="totalcounter" select="$level2counter"/>
					</xsl:call-template>


				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>

		<xsl:if test="$counter > 0">
			<xsl:variable name="regiontext">
				<xsl:if test="$counter = $totalcounter">
					<xsl:choose>
						<xsl:when test="contains($toprint, ':')">
							<xsl:copy-of select="' '"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:copy-of select="'Region'"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:if>
			</xsl:variable>

			<!-- formulate table if no nesting is found-->
			<xsl:if test = "not(contains($toprint, ':' ))">
				<table:table-row>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="P1">
							<xsl:value-of select="$regiontext"/>
						</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="SK-MM-L1">

							<xsl:call-template name="findstyle">
								<xsl:with-param name="strtofindstyle" select="$toprint"/>
								<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
							</xsl:call-template>

						</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="Table_20_Contents">
							<text:span text:style-name="Strong_20_Emphasis"/>
						</text:p>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="SK-MM-L3"/>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="Table_20_Contents"/>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
						<text:p text:style-name="Table_20_Contents"/>
					</table:table-cell>
					<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
						<text:p text:style-name="Table_20_Contents"/>
					</table:table-cell>
				</table:table-row>

			</xsl:if>

			<xsl:call-template name="outputrstring">
				<xsl:with-param name="totalstring" select="$totalstring"/>
				<xsl:with-param name="counter" select="$counter - 1"/>
				<xsl:with-param name="totalcounter" select="$totalcounter" />
			</xsl:call-template>

		</xsl:if>

	</xsl:template>


	<!--print when region text has 3 level nesting-->
	<xsl:template name="printnestlevel">
		<xsl:param name="flevel"  />
		<xsl:param name="slevel"  />
		<xsl:param name="tlevel"  />
		<xsl:param name="counter" />
		<xsl:param name="totalcounter" />

		<xsl:variable name="tlevelsubstr">
			<xsl:call-template name="extractsubstring">
				<xsl:with-param name="stringlist" select="$tlevel"/>
				<xsl:with-param name="delimiter" select="'.'"/>
				<xsl:with-param name ="counter" select="$totalcounter - $counter + 1"/>
			</xsl:call-template>

		</xsl:variable>

		<!--loop controller-->
		<xsl:if test="$counter > 0">

			<xsl:choose>
				<!--is it first row?-->
				<xsl:when test="$counter = $totalcounter">

					<xsl:variable name="regiontext">
						<xsl:if test="$counter = $totalcounter">
							<xsl:copy-of select="'Region'"/>
						</xsl:if>
					</xsl:variable>

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
								<xsl:value-of select="$regiontext"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">

								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$flevel"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">



								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$slevel"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>


							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">

							<text:p text:style-name="SK-MM-L3">
								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$tlevelsubstr"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>
							</text:p>

						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>


					<xsl:call-template name="printnestlevel">
						<xsl:with-param name="flevel" select="$flevel" />
						<xsl:with-param name="slevel" select="$slevel" />
						<xsl:with-param name="tlevel" select="$tlevel" />
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>


				</xsl:when>

				<!--other row than first row-->
				<xsl:otherwise>

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">
								<text:span text:style-name="Strong_20_Emphasis">

								</text:span>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents">
								<text:span text:style-name="Strong_20_Emphasis"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">

								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$tlevelsubstr"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>
							</text:p>

						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>


					<xsl:call-template name="printnestlevel">
						<xsl:with-param name="flevel" select="$flevel" />
						<xsl:with-param name="slevel" select="$slevel" />
						<xsl:with-param name="tlevel" select="$tlevel" />
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>

				</xsl:otherwise>
			</xsl:choose>


		</xsl:if>


	</xsl:template>

	<!--print remaining second level -->
	<xsl:template name="printremnslevel">										
		<xsl:param name="remnslevelstr"  />
		<xsl:param name="counter" />
		<xsl:param name="totalcounter" />

		<xsl:if test="$counter > 0">
			<xsl:variable name="extractedstr">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="stringlist" select="$remnslevelstr"/>
					<xsl:with-param name="delimiter" select="'.'"/> 
					<xsl:with-param name ="counter" select="$totalcounter -$counter + 1"/>
				</xsl:call-template>
			</xsl:variable>

			<table:table-row>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="P1">

					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="SK-MM-L1">
						<text:span text:style-name="Strong_20_Emphasis">

						</text:span>
					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="SK-MM-L2">


						<xsl:call-template name="findstyle">
							<xsl:with-param name="strtofindstyle" select="$extractedstr"/>
							<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
						</xsl:call-template>


					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="SK-MM-L3">

					</text:p>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="Table_20_Contents"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
					<text:p text:style-name="Table_20_Contents"/>
				</table:table-cell>
				<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
					<text:p text:style-name="Table_20_Contents"/>
				</table:table-cell>
			</table:table-row>

			<xsl:call-template name="printremnslevel">
				<xsl:with-param name="remnslevelstr" select="$remnslevelstr" />
				<xsl:with-param name="counter" select="$counter - 1"/>
				<xsl:with-param name="totalcounter" select="$totalcounter"/>
			</xsl:call-template>

		</xsl:if>

	</xsl:template>

	<!--table formulation for only level 2 nesting-->
	<xsl:template name="print2levelnest">
		<xsl:param name="totalstring" />
		<xsl:param name="counter" />
		<xsl:param name="totalcounter" />

		<xsl:variable name="texttoprint">
			<xsl:call-template name="extractsubstring">
				<xsl:with-param name="stringlist" select="substring-after($totalstring, '1')"/>
				<xsl:with-param name="delimiter" select="'.'"/>
				<xsl:with-param name ="counter" select="$totalcounter - $counter +1"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:if test="$counter >0">
			<xsl:choose>
				<xsl:when test="$counter = $totalcounter">


					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">Region
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="substring-before($totalstring, '1')"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>


							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$texttoprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnest">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>


				</xsl:when>

				<xsl:otherwise >

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">
								<text:span text:style-name="Strong_20_Emphasis">

								</text:span>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$texttoprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][1], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnest">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>


				</xsl:otherwise>
			</xsl:choose>

		</xsl:if>
	</xsl:template>

	<!-- table formulation for WORSE-->
	<xsl:template name="outputrstringworse">
		<xsl:param name="totalstring"/>
		<xsl:param name="counter"/>
		<xsl:param name="totalcounter" />


		<xsl:variable name="toprint">
			<xsl:call-template name="extractsubstringforme">
				<xsl:with-param name="mainstring" select="$totalstring"/>
				<xsl:with-param name="delimiter" select="'1'"/> 
				<xsl:with-param name="counter" select ="$totalcounter - $counter + 1" />	
			</xsl:call-template>
		</xsl:variable>


		<!--set text for first row first column-->
		<xsl:variable name="worsetext">
			<xsl:choose>
				<xsl:when test="$counter = $totalcounter">
					<xsl:copy-of select="'Worse'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:copy-of select="''"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<xsl:if test="$counter > 0">

			<xsl:choose>
				<xsl:when test="contains($toprint, ':')">
					<!---call to 2 level text print-->

					<xsl:variable name="level2counter">
						<xsl:call-template name="count-substring">
							<xsl:with-param name="texts" select="substring-after($toprint, ':')"/>
							<xsl:with-param name="chars" select="'.'"/>
						</xsl:call-template>
					</xsl:variable>

					<xsl:call-template name="print2levelnestworse">
						<xsl:with-param name="totalstring" select="$toprint"/>
						<xsl:with-param name="counter" select="$level2counter"/>
						<xsl:with-param name="totalcounter" select="$level2counter"/>
						<xsl:with-param name="worsetext" select="$worsetext"/>
					</xsl:call-template>

					<xsl:call-template name="outputrstringworse">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter" />
					</xsl:call-template>

				</xsl:when>


				<!--it is a level 1 text-->
				<xsl:otherwise>


					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
								<xsl:value-of select="$worsetext"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">

								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$toprint"/>
									<xsl:with-param name ="section" select="substring-before(following::text:p[@text:style-name='P2'][2], ':')"/>
								</xsl:call-template>


							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents">
								<text:span text:style-name="Strong_20_Emphasis"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="outputrstringworse">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter" />
					</xsl:call-template>

				</xsl:otherwise>
			</xsl:choose>

		</xsl:if>

	</xsl:template>

	<xsl:template name="dummycall">

		<text:span text:style-name="Emphasis">
			<xsl:value-of select="'ABC'"/>
		</text:span>

	</xsl:template>

	<!--table formulation for only level 2 nesting worse-->
	<xsl:template name="print2levelnestworse">
		<xsl:param name="totalstring" />
		<xsl:param name="counter" />
		<xsl:param name="totalcounter" />
		<xsl:param name="worsetext" />

		<xsl:variable name="toprint">
			<xsl:call-template name="extractsubstring">
				<xsl:with-param name="stringlist" select="substring-after($totalstring, ':')"/>
				<xsl:with-param name="delimiter" select="'.'"/>
				<xsl:with-param name ="counter" select="$totalcounter - $counter + 1"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:if test="$counter > 0">
			<xsl:choose>
				<!--first row-->
				<xsl:when test="$counter = $totalcounter">

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
								<xsl:value-of select="$worsetext"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">



								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="substring-before($totalstring, ':')"/>
									<xsl:with-param name ="section" select="substring-before(following::text:p[@text:style-name='P2'][2], ':')"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$toprint"/>
									<xsl:with-param name ="section" select="substring-before(following::text:p[@text:style-name='P2'][2], ':')"/>
								</xsl:call-template>



							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnestworse">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>

				</xsl:when>

				<xsl:otherwise >

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$toprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][2], ':'))"/>
								</xsl:call-template>


							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnestworse">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>

				</xsl:otherwise>
			</xsl:choose>

		</xsl:if>
	</xsl:template>


	<!-- table formulation for Better-->
	<xsl:template name="outputrstringbetter">
		<xsl:param name="totalstring"/>
		<xsl:param name="counter"/>
		<xsl:param name="totalcounter" />

		<xsl:variable name="toprint">
			<xsl:call-template name="extractsubstringforme">
				<xsl:with-param name="mainstring" select="$totalstring"/>
				<xsl:with-param name="delimiter" select="'1'"/> 
				<xsl:with-param name="counter" select ="$totalcounter - $counter + 1" />	
			</xsl:call-template>
		</xsl:variable>

		<!--set text for first row first column-->
		<xsl:variable name="bettertext">
			<xsl:choose>
				<xsl:when test="$counter = $totalcounter">
					<xsl:copy-of select="'Better'"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:copy-of select="''"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>

		<xsl:if test="$counter > 0">

			<xsl:choose>
				<xsl:when test="contains($toprint, ':')">
					<!---call to 2 level text print-->

					<xsl:variable name="level2counter">
						<xsl:call-template name="count-substring">
							<xsl:with-param name="texts" select="substring-after($toprint, ':')"/>
							<xsl:with-param name="chars" select="'.'"/>
						</xsl:call-template>
					</xsl:variable>

					<xsl:call-template name="print2levelnestbetter">
						<xsl:with-param name="totalstring" select="$toprint"/>
						<xsl:with-param name="counter" select="$level2counter"/>
						<xsl:with-param name="totalcounter" select="$level2counter"/>
						<xsl:with-param name="bettertext" select="$bettertext"/>
					</xsl:call-template>

					<xsl:call-template name="outputrstringbetter">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter" />
					</xsl:call-template>

				</xsl:when>

				<xsl:otherwise>

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
								<xsl:value-of select="$bettertext"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">

								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$toprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][3], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents">
								<text:span text:style-name="Strong_20_Emphasis"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="outputrstringbetter">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter" />
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>

		</xsl:if>

	</xsl:template>

	<!--table formulation for only level 2 nesting better-->
	<xsl:template name="print2levelnestbetter">
		<xsl:param name="totalstring" />
		<xsl:param name="counter" />
		<xsl:param name="totalcounter" />
		<xsl:param name="bettertext" />

		<xsl:variable name="texttoprint">
			<xsl:call-template name="extractsubstring">
				<xsl:with-param name="stringlist" select="substring-after($totalstring, ':')"/>
				<xsl:with-param name="delimiter" select="'.'"/>
				<xsl:with-param name ="counter" select="$totalcounter - $counter + 1"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:if test="$counter > 0">
			<xsl:choose>
				<xsl:when test="$counter = $totalcounter">


					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
								<xsl:value-of select="$bettertext"/>
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="substring-before($totalstring, ':')"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][3], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$texttoprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][3], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnestbetter">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>

				</xsl:when>

				<xsl:otherwise >

					<table:table-row>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="P1">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L1">

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L2">


								<xsl:call-template name="findstyle">
									<xsl:with-param name="strtofindstyle" select="$texttoprint"/>
									<xsl:with-param name ="section" select="normalize-space(substring-before(following::text:p[@text:style-name='P2'][3], ':'))"/>
								</xsl:call-template>

							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="SK-MM-L3">
							</text:p>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.A2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
						<table:table-cell table:style-name="Tabelle1.G2" office:value-type="string">
							<text:p text:style-name="Table_20_Contents"/>
						</table:table-cell>
					</table:table-row>

					<xsl:call-template name="print2levelnestbetter">
						<xsl:with-param name="totalstring" select="$totalstring"/>
						<xsl:with-param name="counter" select="$counter - 1"/>
						<xsl:with-param name="totalcounter" select="$totalcounter"/>
					</xsl:call-template>


				</xsl:otherwise>
			</xsl:choose>


		</xsl:if>
	</xsl:template>

	<xsl:template name="findstyle">
		<xsl:param name="strtofindstyle" />
		<xsl:param name="section" />



		<xsl:choose>

			<xsl:when test="contains($strtofindstyle, ',')">
				<!--find how many substrings
			for each substring find style
			and print with associated style-->
				<xsl:variable name="no-of-substrings">
					<xsl:call-template name="count-substring">
						<xsl:with-param name="texts" select="$strtofindstyle"/>
						<xsl:with-param name="chars" select="','"/>
					</xsl:call-template>
				</xsl:variable>


				<xsl:call-template name="extractstyle">
					<xsl:with-param name="strtofindstyle" select="$strtofindstyle"/>
					<xsl:with-param name="counter" select="$no-of-substrings"/>
					<xsl:with-param name="totoalcounter" select="$no-of-substrings"/>
					<xsl:with-param name="delimiter" select="','"/>
					<xsl:with-param name="section" select="$section" />
				</xsl:call-template>

			</xsl:when>

			<xsl:when test="contains($strtofindstyle, ';')">

				<xsl:variable name="no-of-substrings">
					<xsl:call-template name="count-substring">
						<xsl:with-param name="texts" select="$strtofindstyle"/>
						<xsl:with-param name="chars" select="';'"/>
					</xsl:call-template>
				</xsl:variable>


				<xsl:call-template name="extractstyle">
					<xsl:with-param name="strtofindstyle" select="$strtofindstyle"/>
					<xsl:with-param name="counter" select="$no-of-substrings"/>
					<xsl:with-param name="totoalcounter" select="$no-of-substrings"/>
					<xsl:with-param name="delimiter" select="';'"/>
					<xsl:with-param name="section" select="$section" />
				</xsl:call-template>


			</xsl:when>

			<xsl:otherwise>


				<xsl:call-template name="extractstyle">
					<xsl:with-param name="strtofindstyle" select="$strtofindstyle"/>
					<xsl:with-param name="counter" select="1"/>
					<xsl:with-param name="totoalcounter" select="1"/>
					<xsl:with-param name="section" select="$section" />
				</xsl:call-template>


			</xsl:otherwise>

		</xsl:choose>

	</xsl:template>


	<xsl:template name="extractstyle">
		<xsl:param name="strtofindstyle"/>
		<xsl:param name="counter"/>
		<xsl:param name="totoalcounter"/>
		<xsl:param name="delimiter"/>
		<xsl:param name="section" />


		<xsl:if test="$counter > 0">


			<xsl:variable name="textsactual">
				<xsl:choose >
					<xsl:when test="$delimiter = ''">
						<xsl:value-of select="$strtofindstyle"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="extractsubstring">
							<xsl:with-param name="stringlist" select="$strtofindstyle"/>
							<xsl:with-param name="delimiter" select="$delimiter"/>
							<xsl:with-param name ="counter" select="$totoalcounter - $counter + 1"/>
						</xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>

			<xsl:variable name="texts">
				<xsl:choose>
					<xsl:when test="contains($textsactual, '.')">
						<xsl:value-of select="substring-before($textsactual, '.')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$textsactual"/>
					</xsl:otherwise>

				</xsl:choose>

			</xsl:variable>


			<xsl:variable name="styleinfo">

				<!-- <xsl:for-each select="text:span">
					<xsl:if test="contains(.,$texts)">
						<xsl:value-of select="@text:style-name"/>
					</xsl:if>
				</xsl:for-each> -->

				<xsl:choose>
					<xsl:when test="contains($section, 'WORSE')">
						<xsl:for-each select="following::text:p[2]/text:span">

							<!-- need some rethinking here about if not contained in text span-->

							<xsl:if test="contains(.,normalize-space($texts))">
								<xsl:variable name="textstyle">
									<xsl:value-of select="@text:style-name"/>
								</xsl:variable>

								<xsl:choose>
									<xsl:when test="$textstyle = 'T6' or $textstyle = 'T7'">
										<xsl:value-of select="'Gr2'"/>
									</xsl:when>
								</xsl:choose>

							</xsl:if>

						</xsl:for-each>

						<xsl:if test="matches(normalize-space($texts), '^[A-Z\.\s]+$')">
							<xsl:value-of select="'Gr3'"/>
						</xsl:if>
					</xsl:when>

					<xsl:when test="contains($section, 'BETTER')">
						<xsl:for-each select="following::text:p[3]/text:span">

							<!-- need some rethinking here about if not contained in text span-->

							<xsl:if test="contains(.,normalize-space($texts))">
								<xsl:variable name="textstyle">
									<xsl:value-of select="@text:style-name"/>
								</xsl:variable>

								<xsl:choose>
									<xsl:when test="$textstyle = 'T6' or $textstyle = 'T7'">
										<xsl:value-of select="'Gr2'"/>
									</xsl:when>
								</xsl:choose>

							</xsl:if>

						</xsl:for-each>

						<xsl:if test="matches(normalize-space($texts), '^[A-Z\.\s]+$')">
							<xsl:value-of select="'Gr3'"/>
						</xsl:if>
					</xsl:when>

					<xsl:when test="contains($section, 'REGION')">
						<xsl:for-each select="following::text:p[1]/text:span">

							<!-- need some rethinking here about if not contained in text span-->

							<xsl:if test="contains(.,normalize-space($texts))">
								<xsl:variable name="textstyle">
									<xsl:value-of select="@text:style-name"/>
								</xsl:variable>

								<xsl:choose>
									<xsl:when test="$textstyle = 'T6' or $textstyle = 'T7'">
										<xsl:value-of select="'Gr2'"/>
									</xsl:when>
								</xsl:choose>
							</xsl:if>
						</xsl:for-each>

						<xsl:if test="matches(normalize-space($texts), '^[A-Z\.\s]+$')">
							<xsl:value-of select="'Gr3'"/>
						</xsl:if>
					</xsl:when>

				</xsl:choose>

			</xsl:variable>

			<!-- <xsl:value-of select="$styleinfo"/>  -->

			<xsl:choose>
				<xsl:when test="$styleinfo = 'Gr2' ">
					<text:span text:style-name="Emphasis">
						<xsl:value-of select="$texts"/>
					</text:span>
					<xsl:if test="not($counter = 1) ">
						<text:span>
							<xsl:value-of select="concat($delimiter, ' ')"/>
						</text:span>
					</xsl:if>
				</xsl:when>
				<xsl:when test="$styleinfo = 'Gr3'">
					<text:span text:style-name="Strong Emphasis">
						<xsl:value-of select="$texts"/>
					</text:span>
				</xsl:when>

				<xsl:otherwise>
					<xsl:value-of select="$texts"/>
				</xsl:otherwise>
			</xsl:choose>

			<xsl:call-template name="extractstyle">
				<xsl:with-param name="strtofindstyle" select="$strtofindstyle"/>
				<xsl:with-param name="counter" select="$counter - 1"/>
				<xsl:with-param name="totoalcounter" select="$totoalcounter"/>
				<xsl:with-param name="delimiter" select="$delimiter"/>
				<xsl:with-param name="section" select="$section" />
			</xsl:call-template>


		</xsl:if>

	</xsl:template>



	<xsl:template name="print-substring">
		<xsl:param name="string-list" />
		<xsl:param name="pos-of-substrings"/>
		<xsl:param name="no-of-substrings" />

		<xsl:if test="$pos-of-substrings &gt; 0">
			<xsl:variable name="substring-to-print">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="stringlist" select="$string-list"/>
					<xsl:with-param name="delimiter" select="'.'"/>
					<xsl:with-param name ="counter" select="$no-of-substrings - $pos-of-substrings + 1"/>
				</xsl:call-template>
			</xsl:variable>

			<xsl:variable name="newline">
				<xsl:text>
				</xsl:text>
			</xsl:variable>

			<xsl:value-of select="concat($substring-to-print, $newline)" />



			<xsl:call-template name="print-substring">
				<xsl:with-param name="string-list" select="$string-list"/>
				<xsl:with-param name="pos-of-substrings" select="$pos-of-substrings - 1"/>
				<xsl:with-param name="no-of-substrings" select="$no-of-substrings"/>
			</xsl:call-template>


		</xsl:if>

	</xsl:template>

	<xsl:template name="extractsubstring">
		<xsl:param name="stringlist"/>
		<xsl:param name="delimiter" />
		<xsl:param name ="counter" />

		<xsl:choose >
			<xsl:when test="$counter &gt; 1">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="stringlist" select="substring-after($stringlist,$delimiter)" />
					<xsl:with-param name="delimiter" select="$delimiter"/>
					<xsl:with-param name="counter" select="$counter -1"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>

				<xsl:choose>
					<xsl:when test="not(contains($stringlist,$delimiter))">

						<xsl:value-of select="normalize-space($stringlist)"/>

					</xsl:when>
					<xsl:otherwise>

						<xsl:value-of select="normalize-space(substring-before($stringlist,$delimiter))"/>


						<!-- //only first remdedy need to be returned
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="stringlist" select="substring-after($stringlist,$delimiter)"/>
					<xsl:with-param name="delimiter" select="','"/>
				</xsl:call-template>
				-->
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

	<xsl:template name="capitalise">
		<xsl:param name="text"/>
		<xsl:param name="all" select="true()"/>

		<xsl:variable name="xsltsl-str-ws" select="'&#x20;&#x9;&#xD;&#xA;'"/>

		<xsl:choose>
			<xsl:when test="$all and (contains($text, ' ') or contains($text, '	') or contains($text, '&#10;'))">
				<xsl:variable name="firstword">
					<xsl:call-template name="substring-before-first">
						<xsl:with-param name="text" select="$text"/>
						<xsl:with-param name="chars" select="$xsltsl-str-ws"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:call-template name="capitalise">
					<xsl:with-param name="text">
						<xsl:value-of select="$firstword"/>
					</xsl:with-param>
					<xsl:with-param name="all" select="false()"/>
				</xsl:call-template>
				<xsl:value-of select="substring($text, string-length($firstword) + 1, 1)"/>
				<xsl:call-template name="capitalise">
					<xsl:with-param name="text">
						<xsl:value-of select="substring($text, string-length($firstword) + 2)"/>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:when>

			<xsl:otherwise>
				<xsl:call-template name="to-upper">
					<xsl:with-param name="text" select="substring($text, 1, 1)"/>
				</xsl:call-template>
				<xsl:call-template name="to-lower">
					<xsl:with-param name="text" select="substring($text, 2)"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="to-upper">
		<xsl:param name="text"/>


		<!-- Below exception is extracted from unicode's SpecialCasing.txt
         file. It's the german lowercase "eszett" (the thing looking
         like a greek beta) that's to become "SS" in uppercase (note:
         that are *two* characters, that's why it doesn't fit in the
         list of upper/lowercase characters). There are more
         characters in that file (103, excluding the locale-specific
         ones), but they seemed to be much less used to me and they
         add up to a hellish long stylesheet.... - Reinout -->
		<xsl:param name="modified-text">
			<xsl:call-template name="subst">
				<xsl:with-param name="text">
					<xsl:value-of select="$text"/>
				</xsl:with-param>
				<xsl:with-param name="replace">
					<xsl:text>&#x00DF;</xsl:text>
				</xsl:with-param>
				<xsl:with-param name="with">
					<xsl:text>&#x0053;</xsl:text>
					<xsl:text>&#x0053;</xsl:text>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:param>

		<xsl:variable name="xsltsl-str-lower" select="'&#x0061;&#x0062;&#x0063;&#x0064;&#x0065;&#x0066;&#x0067;&#x0068;&#x0069;&#x006A;&#x006B;&#x006C;&#x006D;&#x006E;&#x006F;&#x0070;&#x0071;&#x0072;&#x0073;&#x0074;&#x0075;&#x0076;&#x0077;&#x0078;&#x0079;&#x007A;&#x00B5;&#x00E0;&#x00E1;&#x00E2;&#x00E3;&#x00E4;&#x00E5;&#x00E6;&#x00E7;&#x00E8;&#x00E9;&#x00EA;&#x00EB;&#x00EC;&#x00ED;&#x00EE;&#x00EF;&#x00F0;&#x00F1;&#x00F2;&#x00F3;&#x00F4;&#x00F5;&#x00F6;&#x00F8;&#x00F9;&#x00FA;&#x00FB;&#x00FC;&#x00FD;&#x00FE;&#x00FF;&#x0101;&#x0103;&#x0105;&#x0107;&#x0109;&#x010B;&#x010D;&#x010F;&#x0111;&#x0113;&#x0115;&#x0117;&#x0119;&#x011B;&#x011D;&#x011F;&#x0121;&#x0123;&#x0125;&#x0127;&#x0129;&#x012B;&#x012D;&#x012F;&#x0131;&#x0133;&#x0135;&#x0137;&#x013A;&#x013C;&#x013E;&#x0140;&#x0142;&#x0144;&#x0146;&#x0148;&#x014B;&#x014D;&#x014F;&#x0151;&#x0153;&#x0155;&#x0157;&#x0159;&#x015B;&#x015D;&#x015F;&#x0161;&#x0163;&#x0165;&#x0167;&#x0169;&#x016B;&#x016D;&#x016F;&#x0171;&#x0173;&#x0175;&#x0177;&#x017A;&#x017C;&#x017E;&#x017F;&#x0183;&#x0185;&#x0188;&#x018C;&#x0192;&#x0195;&#x0199;&#x01A1;&#x01A3;&#x01A5;&#x01A8;&#x01AD;&#x01B0;&#x01B4;&#x01B6;&#x01B9;&#x01BD;&#x01BF;&#x01C5;&#x01C6;&#x01C8;&#x01C9;&#x01CB;&#x01CC;&#x01CE;&#x01D0;&#x01D2;&#x01D4;&#x01D6;&#x01D8;&#x01DA;&#x01DC;&#x01DD;&#x01DF;&#x01E1;&#x01E3;&#x01E5;&#x01E7;&#x01E9;&#x01EB;&#x01ED;&#x01EF;&#x01F2;&#x01F3;&#x01F5;&#x01F9;&#x01FB;&#x01FD;&#x01FF;&#x0201;&#x0203;&#x0205;&#x0207;&#x0209;&#x020B;&#x020D;&#x020F;&#x0211;&#x0213;&#x0215;&#x0217;&#x0219;&#x021B;&#x021D;&#x021F;&#x0223;&#x0225;&#x0227;&#x0229;&#x022B;&#x022D;&#x022F;&#x0231;&#x0233;&#x0253;&#x0254;&#x0256;&#x0257;&#x0259;&#x025B;&#x0260;&#x0263;&#x0268;&#x0269;&#x026F;&#x0272;&#x0275;&#x0280;&#x0283;&#x0288;&#x028A;&#x028B;&#x0292;&#x0345;&#x03AC;&#x03AD;&#x03AE;&#x03AF;&#x03B1;&#x03B2;&#x03B3;&#x03B4;&#x03B5;&#x03B6;&#x03B7;&#x03B8;&#x03B9;&#x03BA;&#x03BB;&#x03BC;&#x03BD;&#x03BE;&#x03BF;&#x03C0;&#x03C1;&#x03C2;&#x03C3;&#x03C4;&#x03C5;&#x03C6;&#x03C7;&#x03C8;&#x03C9;&#x03CA;&#x03CB;&#x03CC;&#x03CD;&#x03CE;&#x03D0;&#x03D1;&#x03D5;&#x03D6;&#x03DB;&#x03DD;&#x03DF;&#x03E1;&#x03E3;&#x03E5;&#x03E7;&#x03E9;&#x03EB;&#x03ED;&#x03EF;&#x03F0;&#x03F1;&#x03F2;&#x03F5;&#x0430;&#x0431;&#x0432;&#x0433;&#x0434;&#x0435;&#x0436;&#x0437;&#x0438;&#x0439;&#x043A;&#x043B;&#x043C;&#x043D;&#x043E;&#x043F;&#x0440;&#x0441;&#x0442;&#x0443;&#x0444;&#x0445;&#x0446;&#x0447;&#x0448;&#x0449;&#x044A;&#x044B;&#x044C;&#x044D;&#x044E;&#x044F;&#x0450;&#x0451;&#x0452;&#x0453;&#x0454;&#x0455;&#x0456;&#x0457;&#x0458;&#x0459;&#x045A;&#x045B;&#x045C;&#x045D;&#x045E;&#x045F;&#x0461;&#x0463;&#x0465;&#x0467;&#x0469;&#x046B;&#x046D;&#x046F;&#x0471;&#x0473;&#x0475;&#x0477;&#x0479;&#x047B;&#x047D;&#x047F;&#x0481;&#x048D;&#x048F;&#x0491;&#x0493;&#x0495;&#x0497;&#x0499;&#x049B;&#x049D;&#x049F;&#x04A1;&#x04A3;&#x04A5;&#x04A7;&#x04A9;&#x04AB;&#x04AD;&#x04AF;&#x04B1;&#x04B3;&#x04B5;&#x04B7;&#x04B9;&#x04BB;&#x04BD;&#x04BF;&#x04C2;&#x04C4;&#x04C8;&#x04CC;&#x04D1;&#x04D3;&#x04D5;&#x04D7;&#x04D9;&#x04DB;&#x04DD;&#x04DF;&#x04E1;&#x04E3;&#x04E5;&#x04E7;&#x04E9;&#x04EB;&#x04ED;&#x04EF;&#x04F1;&#x04F3;&#x04F5;&#x04F9;&#x0561;&#x0562;&#x0563;&#x0564;&#x0565;&#x0566;&#x0567;&#x0568;&#x0569;&#x056A;&#x056B;&#x056C;&#x056D;&#x056E;&#x056F;&#x0570;&#x0571;&#x0572;&#x0573;&#x0574;&#x0575;&#x0576;&#x0577;&#x0578;&#x0579;&#x057A;&#x057B;&#x057C;&#x057D;&#x057E;&#x057F;&#x0580;&#x0581;&#x0582;&#x0583;&#x0584;&#x0585;&#x0586;&#x1E01;&#x1E03;&#x1E05;&#x1E07;&#x1E09;&#x1E0B;&#x1E0D;&#x1E0F;&#x1E11;&#x1E13;&#x1E15;&#x1E17;&#x1E19;&#x1E1B;&#x1E1D;&#x1E1F;&#x1E21;&#x1E23;&#x1E25;&#x1E27;&#x1E29;&#x1E2B;&#x1E2D;&#x1E2F;&#x1E31;&#x1E33;&#x1E35;&#x1E37;&#x1E39;&#x1E3B;&#x1E3D;&#x1E3F;&#x1E41;&#x1E43;&#x1E45;&#x1E47;&#x1E49;&#x1E4B;&#x1E4D;&#x1E4F;&#x1E51;&#x1E53;&#x1E55;&#x1E57;&#x1E59;&#x1E5B;&#x1E5D;&#x1E5F;&#x1E61;&#x1E63;&#x1E65;&#x1E67;&#x1E69;&#x1E6B;&#x1E6D;&#x1E6F;&#x1E71;&#x1E73;&#x1E75;&#x1E77;&#x1E79;&#x1E7B;&#x1E7D;&#x1E7F;&#x1E81;&#x1E83;&#x1E85;&#x1E87;&#x1E89;&#x1E8B;&#x1E8D;&#x1E8F;&#x1E91;&#x1E93;&#x1E95;&#x1E9B;&#x1EA1;&#x1EA3;&#x1EA5;&#x1EA7;&#x1EA9;&#x1EAB;&#x1EAD;&#x1EAF;&#x1EB1;&#x1EB3;&#x1EB5;&#x1EB7;&#x1EB9;&#x1EBB;&#x1EBD;&#x1EBF;&#x1EC1;&#x1EC3;&#x1EC5;&#x1EC7;&#x1EC9;&#x1ECB;&#x1ECD;&#x1ECF;&#x1ED1;&#x1ED3;&#x1ED5;&#x1ED7;&#x1ED9;&#x1EDB;&#x1EDD;&#x1EDF;&#x1EE1;&#x1EE3;&#x1EE5;&#x1EE7;&#x1EE9;&#x1EEB;&#x1EED;&#x1EEF;&#x1EF1;&#x1EF3;&#x1EF5;&#x1EF7;&#x1EF9;&#x1F00;&#x1F01;&#x1F02;&#x1F03;&#x1F04;&#x1F05;&#x1F06;&#x1F07;&#x1F10;&#x1F11;&#x1F12;&#x1F13;&#x1F14;&#x1F15;&#x1F20;&#x1F21;&#x1F22;&#x1F23;&#x1F24;&#x1F25;&#x1F26;&#x1F27;&#x1F30;&#x1F31;&#x1F32;&#x1F33;&#x1F34;&#x1F35;&#x1F36;&#x1F37;&#x1F40;&#x1F41;&#x1F42;&#x1F43;&#x1F44;&#x1F45;&#x1F51;&#x1F53;&#x1F55;&#x1F57;&#x1F60;&#x1F61;&#x1F62;&#x1F63;&#x1F64;&#x1F65;&#x1F66;&#x1F67;&#x1F70;&#x1F71;&#x1F72;&#x1F73;&#x1F74;&#x1F75;&#x1F76;&#x1F77;&#x1F78;&#x1F79;&#x1F7A;&#x1F7B;&#x1F7C;&#x1F7D;&#x1F80;&#x1F81;&#x1F82;&#x1F83;&#x1F84;&#x1F85;&#x1F86;&#x1F87;&#x1F90;&#x1F91;&#x1F92;&#x1F93;&#x1F94;&#x1F95;&#x1F96;&#x1F97;&#x1FA0;&#x1FA1;&#x1FA2;&#x1FA3;&#x1FA4;&#x1FA5;&#x1FA6;&#x1FA7;&#x1FB0;&#x1FB1;&#x1FB3;&#x1FBE;&#x1FC3;&#x1FD0;&#x1FD1;&#x1FE0;&#x1FE1;&#x1FE5;&#x1FF3;&#x2170;&#x2171;&#x2172;&#x2173;&#x2174;&#x2175;&#x2176;&#x2177;&#x2178;&#x2179;&#x217A;&#x217B;&#x217C;&#x217D;&#x217E;&#x217F;&#x24D0;&#x24D1;&#x24D2;&#x24D3;&#x24D4;&#x24D5;&#x24D6;&#x24D7;&#x24D8;&#x24D9;&#x24DA;&#x24DB;&#x24DC;&#x24DD;&#x24DE;&#x24DF;&#x24E0;&#x24E1;&#x24E2;&#x24E3;&#x24E4;&#x24E5;&#x24E6;&#x24E7;&#x24E8;&#x24E9;&#xFF41;&#xFF42;&#xFF43;&#xFF44;&#xFF45;&#xFF46;&#xFF47;&#xFF48;&#xFF49;&#xFF4A;&#xFF4B;&#xFF4C;&#xFF4D;&#xFF4E;&#xFF4F;&#xFF50;&#xFF51;&#xFF52;&#xFF53;&#xFF54;&#xFF55;&#xFF56;&#xFF57;&#xFF58;&#xFF59;&#xFF5A;&#x10428;&#x10429;&#x1042A;&#x1042B;&#x1042C;&#x1042D;&#x1042E;&#x1042F;&#x10430;&#x10431;&#x10432;&#x10433;&#x10434;&#x10435;&#x10436;&#x10437;&#x10438;&#x10439;&#x1043A;&#x1043B;&#x1043C;&#x1043D;&#x1043E;&#x1043F;&#x10440;&#x10441;&#x10442;&#x10443;&#x10444;&#x10445;&#x10446;&#x10447;&#x10448;&#x10449;&#x1044A;&#x1044B;&#x1044C;&#x1044D;'"/>
		<xsl:variable name="xsltsl-str-upper" select="'&#x0041;&#x0042;&#x0043;&#x0044;&#x0045;&#x0046;&#x0047;&#x0048;&#x0049;&#x004A;&#x004B;&#x004C;&#x004D;&#x004E;&#x004F;&#x0050;&#x0051;&#x0052;&#x0053;&#x0054;&#x0055;&#x0056;&#x0057;&#x0058;&#x0059;&#x005A;&#x039C;&#x00C0;&#x00C1;&#x00C2;&#x00C3;&#x00C4;&#x00C5;&#x00C6;&#x00C7;&#x00C8;&#x00C9;&#x00CA;&#x00CB;&#x00CC;&#x00CD;&#x00CE;&#x00CF;&#x00D0;&#x00D1;&#x00D2;&#x00D3;&#x00D4;&#x00D5;&#x00D6;&#x00D8;&#x00D9;&#x00DA;&#x00DB;&#x00DC;&#x00DD;&#x00DE;&#x0178;&#x0100;&#x0102;&#x0104;&#x0106;&#x0108;&#x010A;&#x010C;&#x010E;&#x0110;&#x0112;&#x0114;&#x0116;&#x0118;&#x011A;&#x011C;&#x011E;&#x0120;&#x0122;&#x0124;&#x0126;&#x0128;&#x012A;&#x012C;&#x012E;&#x0049;&#x0132;&#x0134;&#x0136;&#x0139;&#x013B;&#x013D;&#x013F;&#x0141;&#x0143;&#x0145;&#x0147;&#x014A;&#x014C;&#x014E;&#x0150;&#x0152;&#x0154;&#x0156;&#x0158;&#x015A;&#x015C;&#x015E;&#x0160;&#x0162;&#x0164;&#x0166;&#x0168;&#x016A;&#x016C;&#x016E;&#x0170;&#x0172;&#x0174;&#x0176;&#x0179;&#x017B;&#x017D;&#x0053;&#x0182;&#x0184;&#x0187;&#x018B;&#x0191;&#x01F6;&#x0198;&#x01A0;&#x01A2;&#x01A4;&#x01A7;&#x01AC;&#x01AF;&#x01B3;&#x01B5;&#x01B8;&#x01BC;&#x01F7;&#x01C4;&#x01C4;&#x01C7;&#x01C7;&#x01CA;&#x01CA;&#x01CD;&#x01CF;&#x01D1;&#x01D3;&#x01D5;&#x01D7;&#x01D9;&#x01DB;&#x018E;&#x01DE;&#x01E0;&#x01E2;&#x01E4;&#x01E6;&#x01E8;&#x01EA;&#x01EC;&#x01EE;&#x01F1;&#x01F1;&#x01F4;&#x01F8;&#x01FA;&#x01FC;&#x01FE;&#x0200;&#x0202;&#x0204;&#x0206;&#x0208;&#x020A;&#x020C;&#x020E;&#x0210;&#x0212;&#x0214;&#x0216;&#x0218;&#x021A;&#x021C;&#x021E;&#x0222;&#x0224;&#x0226;&#x0228;&#x022A;&#x022C;&#x022E;&#x0230;&#x0232;&#x0181;&#x0186;&#x0189;&#x018A;&#x018F;&#x0190;&#x0193;&#x0194;&#x0197;&#x0196;&#x019C;&#x019D;&#x019F;&#x01A6;&#x01A9;&#x01AE;&#x01B1;&#x01B2;&#x01B7;&#x0399;&#x0386;&#x0388;&#x0389;&#x038A;&#x0391;&#x0392;&#x0393;&#x0394;&#x0395;&#x0396;&#x0397;&#x0398;&#x0399;&#x039A;&#x039B;&#x039C;&#x039D;&#x039E;&#x039F;&#x03A0;&#x03A1;&#x03A3;&#x03A3;&#x03A4;&#x03A5;&#x03A6;&#x03A7;&#x03A8;&#x03A9;&#x03AA;&#x03AB;&#x038C;&#x038E;&#x038F;&#x0392;&#x0398;&#x03A6;&#x03A0;&#x03DA;&#x03DC;&#x03DE;&#x03E0;&#x03E2;&#x03E4;&#x03E6;&#x03E8;&#x03EA;&#x03EC;&#x03EE;&#x039A;&#x03A1;&#x03A3;&#x0395;&#x0410;&#x0411;&#x0412;&#x0413;&#x0414;&#x0415;&#x0416;&#x0417;&#x0418;&#x0419;&#x041A;&#x041B;&#x041C;&#x041D;&#x041E;&#x041F;&#x0420;&#x0421;&#x0422;&#x0423;&#x0424;&#x0425;&#x0426;&#x0427;&#x0428;&#x0429;&#x042A;&#x042B;&#x042C;&#x042D;&#x042E;&#x042F;&#x0400;&#x0401;&#x0402;&#x0403;&#x0404;&#x0405;&#x0406;&#x0407;&#x0408;&#x0409;&#x040A;&#x040B;&#x040C;&#x040D;&#x040E;&#x040F;&#x0460;&#x0462;&#x0464;&#x0466;&#x0468;&#x046A;&#x046C;&#x046E;&#x0470;&#x0472;&#x0474;&#x0476;&#x0478;&#x047A;&#x047C;&#x047E;&#x0480;&#x048C;&#x048E;&#x0490;&#x0492;&#x0494;&#x0496;&#x0498;&#x049A;&#x049C;&#x049E;&#x04A0;&#x04A2;&#x04A4;&#x04A6;&#x04A8;&#x04AA;&#x04AC;&#x04AE;&#x04B0;&#x04B2;&#x04B4;&#x04B6;&#x04B8;&#x04BA;&#x04BC;&#x04BE;&#x04C1;&#x04C3;&#x04C7;&#x04CB;&#x04D0;&#x04D2;&#x04D4;&#x04D6;&#x04D8;&#x04DA;&#x04DC;&#x04DE;&#x04E0;&#x04E2;&#x04E4;&#x04E6;&#x04E8;&#x04EA;&#x04EC;&#x04EE;&#x04F0;&#x04F2;&#x04F4;&#x04F8;&#x0531;&#x0532;&#x0533;&#x0534;&#x0535;&#x0536;&#x0537;&#x0538;&#x0539;&#x053A;&#x053B;&#x053C;&#x053D;&#x053E;&#x053F;&#x0540;&#x0541;&#x0542;&#x0543;&#x0544;&#x0545;&#x0546;&#x0547;&#x0548;&#x0549;&#x054A;&#x054B;&#x054C;&#x054D;&#x054E;&#x054F;&#x0550;&#x0551;&#x0552;&#x0553;&#x0554;&#x0555;&#x0556;&#x1E00;&#x1E02;&#x1E04;&#x1E06;&#x1E08;&#x1E0A;&#x1E0C;&#x1E0E;&#x1E10;&#x1E12;&#x1E14;&#x1E16;&#x1E18;&#x1E1A;&#x1E1C;&#x1E1E;&#x1E20;&#x1E22;&#x1E24;&#x1E26;&#x1E28;&#x1E2A;&#x1E2C;&#x1E2E;&#x1E30;&#x1E32;&#x1E34;&#x1E36;&#x1E38;&#x1E3A;&#x1E3C;&#x1E3E;&#x1E40;&#x1E42;&#x1E44;&#x1E46;&#x1E48;&#x1E4A;&#x1E4C;&#x1E4E;&#x1E50;&#x1E52;&#x1E54;&#x1E56;&#x1E58;&#x1E5A;&#x1E5C;&#x1E5E;&#x1E60;&#x1E62;&#x1E64;&#x1E66;&#x1E68;&#x1E6A;&#x1E6C;&#x1E6E;&#x1E70;&#x1E72;&#x1E74;&#x1E76;&#x1E78;&#x1E7A;&#x1E7C;&#x1E7E;&#x1E80;&#x1E82;&#x1E84;&#x1E86;&#x1E88;&#x1E8A;&#x1E8C;&#x1E8E;&#x1E90;&#x1E92;&#x1E94;&#x1E60;&#x1EA0;&#x1EA2;&#x1EA4;&#x1EA6;&#x1EA8;&#x1EAA;&#x1EAC;&#x1EAE;&#x1EB0;&#x1EB2;&#x1EB4;&#x1EB6;&#x1EB8;&#x1EBA;&#x1EBC;&#x1EBE;&#x1EC0;&#x1EC2;&#x1EC4;&#x1EC6;&#x1EC8;&#x1ECA;&#x1ECC;&#x1ECE;&#x1ED0;&#x1ED2;&#x1ED4;&#x1ED6;&#x1ED8;&#x1EDA;&#x1EDC;&#x1EDE;&#x1EE0;&#x1EE2;&#x1EE4;&#x1EE6;&#x1EE8;&#x1EEA;&#x1EEC;&#x1EEE;&#x1EF0;&#x1EF2;&#x1EF4;&#x1EF6;&#x1EF8;&#x1F08;&#x1F09;&#x1F0A;&#x1F0B;&#x1F0C;&#x1F0D;&#x1F0E;&#x1F0F;&#x1F18;&#x1F19;&#x1F1A;&#x1F1B;&#x1F1C;&#x1F1D;&#x1F28;&#x1F29;&#x1F2A;&#x1F2B;&#x1F2C;&#x1F2D;&#x1F2E;&#x1F2F;&#x1F38;&#x1F39;&#x1F3A;&#x1F3B;&#x1F3C;&#x1F3D;&#x1F3E;&#x1F3F;&#x1F48;&#x1F49;&#x1F4A;&#x1F4B;&#x1F4C;&#x1F4D;&#x1F59;&#x1F5B;&#x1F5D;&#x1F5F;&#x1F68;&#x1F69;&#x1F6A;&#x1F6B;&#x1F6C;&#x1F6D;&#x1F6E;&#x1F6F;&#x1FBA;&#x1FBB;&#x1FC8;&#x1FC9;&#x1FCA;&#x1FCB;&#x1FDA;&#x1FDB;&#x1FF8;&#x1FF9;&#x1FEA;&#x1FEB;&#x1FFA;&#x1FFB;&#x1F88;&#x1F89;&#x1F8A;&#x1F8B;&#x1F8C;&#x1F8D;&#x1F8E;&#x1F8F;&#x1F98;&#x1F99;&#x1F9A;&#x1F9B;&#x1F9C;&#x1F9D;&#x1F9E;&#x1F9F;&#x1FA8;&#x1FA9;&#x1FAA;&#x1FAB;&#x1FAC;&#x1FAD;&#x1FAE;&#x1FAF;&#x1FB8;&#x1FB9;&#x1FBC;&#x0399;&#x1FCC;&#x1FD8;&#x1FD9;&#x1FE8;&#x1FE9;&#x1FEC;&#x1FFC;&#x2160;&#x2161;&#x2162;&#x2163;&#x2164;&#x2165;&#x2166;&#x2167;&#x2168;&#x2169;&#x216A;&#x216B;&#x216C;&#x216D;&#x216E;&#x216F;&#x24B6;&#x24B7;&#x24B8;&#x24B9;&#x24BA;&#x24BB;&#x24BC;&#x24BD;&#x24BE;&#x24BF;&#x24C0;&#x24C1;&#x24C2;&#x24C3;&#x24C4;&#x24C5;&#x24C6;&#x24C7;&#x24C8;&#x24C9;&#x24CA;&#x24CB;&#x24CC;&#x24CD;&#x24CE;&#x24CF;&#xFF21;&#xFF22;&#xFF23;&#xFF24;&#xFF25;&#xFF26;&#xFF27;&#xFF28;&#xFF29;&#xFF2A;&#xFF2B;&#xFF2C;&#xFF2D;&#xFF2E;&#xFF2F;&#xFF30;&#xFF31;&#xFF32;&#xFF33;&#xFF34;&#xFF35;&#xFF36;&#xFF37;&#xFF38;&#xFF39;&#xFF3A;&#x10400;&#x10401;&#x10402;&#x10403;&#x10404;&#x10405;&#x10406;&#x10407;&#x10408;&#x10409;&#x1040A;&#x1040B;&#x1040C;&#x1040D;&#x1040E;&#x1040F;&#x10410;&#x10411;&#x10412;&#x10413;&#x10414;&#x10415;&#x10416;&#x10417;&#x10418;&#x10419;&#x1041A;&#x1041B;&#x1041C;&#x1041D;&#x1041E;&#x1041F;&#x10420;&#x10421;&#x10422;&#x10423;&#x10424;&#x10425;'"/>


		<xsl:value-of select="translate($modified-text, $xsltsl-str-lower, $xsltsl-str-upper)"/>
	</xsl:template>

	<xsl:template name="to-lower">
		<xsl:param name="text"/>

		<xsl:variable name="xsltsl-str-lower" select="'&#x0061;&#x0062;&#x0063;&#x0064;&#x0065;&#x0066;&#x0067;&#x0068;&#x0069;&#x006A;&#x006B;&#x006C;&#x006D;&#x006E;&#x006F;&#x0070;&#x0071;&#x0072;&#x0073;&#x0074;&#x0075;&#x0076;&#x0077;&#x0078;&#x0079;&#x007A;&#x00B5;&#x00E0;&#x00E1;&#x00E2;&#x00E3;&#x00E4;&#x00E5;&#x00E6;&#x00E7;&#x00E8;&#x00E9;&#x00EA;&#x00EB;&#x00EC;&#x00ED;&#x00EE;&#x00EF;&#x00F0;&#x00F1;&#x00F2;&#x00F3;&#x00F4;&#x00F5;&#x00F6;&#x00F8;&#x00F9;&#x00FA;&#x00FB;&#x00FC;&#x00FD;&#x00FE;&#x00FF;&#x0101;&#x0103;&#x0105;&#x0107;&#x0109;&#x010B;&#x010D;&#x010F;&#x0111;&#x0113;&#x0115;&#x0117;&#x0119;&#x011B;&#x011D;&#x011F;&#x0121;&#x0123;&#x0125;&#x0127;&#x0129;&#x012B;&#x012D;&#x012F;&#x0131;&#x0133;&#x0135;&#x0137;&#x013A;&#x013C;&#x013E;&#x0140;&#x0142;&#x0144;&#x0146;&#x0148;&#x014B;&#x014D;&#x014F;&#x0151;&#x0153;&#x0155;&#x0157;&#x0159;&#x015B;&#x015D;&#x015F;&#x0161;&#x0163;&#x0165;&#x0167;&#x0169;&#x016B;&#x016D;&#x016F;&#x0171;&#x0173;&#x0175;&#x0177;&#x017A;&#x017C;&#x017E;&#x017F;&#x0183;&#x0185;&#x0188;&#x018C;&#x0192;&#x0195;&#x0199;&#x01A1;&#x01A3;&#x01A5;&#x01A8;&#x01AD;&#x01B0;&#x01B4;&#x01B6;&#x01B9;&#x01BD;&#x01BF;&#x01C5;&#x01C6;&#x01C8;&#x01C9;&#x01CB;&#x01CC;&#x01CE;&#x01D0;&#x01D2;&#x01D4;&#x01D6;&#x01D8;&#x01DA;&#x01DC;&#x01DD;&#x01DF;&#x01E1;&#x01E3;&#x01E5;&#x01E7;&#x01E9;&#x01EB;&#x01ED;&#x01EF;&#x01F2;&#x01F3;&#x01F5;&#x01F9;&#x01FB;&#x01FD;&#x01FF;&#x0201;&#x0203;&#x0205;&#x0207;&#x0209;&#x020B;&#x020D;&#x020F;&#x0211;&#x0213;&#x0215;&#x0217;&#x0219;&#x021B;&#x021D;&#x021F;&#x0223;&#x0225;&#x0227;&#x0229;&#x022B;&#x022D;&#x022F;&#x0231;&#x0233;&#x0253;&#x0254;&#x0256;&#x0257;&#x0259;&#x025B;&#x0260;&#x0263;&#x0268;&#x0269;&#x026F;&#x0272;&#x0275;&#x0280;&#x0283;&#x0288;&#x028A;&#x028B;&#x0292;&#x0345;&#x03AC;&#x03AD;&#x03AE;&#x03AF;&#x03B1;&#x03B2;&#x03B3;&#x03B4;&#x03B5;&#x03B6;&#x03B7;&#x03B8;&#x03B9;&#x03BA;&#x03BB;&#x03BC;&#x03BD;&#x03BE;&#x03BF;&#x03C0;&#x03C1;&#x03C2;&#x03C3;&#x03C4;&#x03C5;&#x03C6;&#x03C7;&#x03C8;&#x03C9;&#x03CA;&#x03CB;&#x03CC;&#x03CD;&#x03CE;&#x03D0;&#x03D1;&#x03D5;&#x03D6;&#x03DB;&#x03DD;&#x03DF;&#x03E1;&#x03E3;&#x03E5;&#x03E7;&#x03E9;&#x03EB;&#x03ED;&#x03EF;&#x03F0;&#x03F1;&#x03F2;&#x03F5;&#x0430;&#x0431;&#x0432;&#x0433;&#x0434;&#x0435;&#x0436;&#x0437;&#x0438;&#x0439;&#x043A;&#x043B;&#x043C;&#x043D;&#x043E;&#x043F;&#x0440;&#x0441;&#x0442;&#x0443;&#x0444;&#x0445;&#x0446;&#x0447;&#x0448;&#x0449;&#x044A;&#x044B;&#x044C;&#x044D;&#x044E;&#x044F;&#x0450;&#x0451;&#x0452;&#x0453;&#x0454;&#x0455;&#x0456;&#x0457;&#x0458;&#x0459;&#x045A;&#x045B;&#x045C;&#x045D;&#x045E;&#x045F;&#x0461;&#x0463;&#x0465;&#x0467;&#x0469;&#x046B;&#x046D;&#x046F;&#x0471;&#x0473;&#x0475;&#x0477;&#x0479;&#x047B;&#x047D;&#x047F;&#x0481;&#x048D;&#x048F;&#x0491;&#x0493;&#x0495;&#x0497;&#x0499;&#x049B;&#x049D;&#x049F;&#x04A1;&#x04A3;&#x04A5;&#x04A7;&#x04A9;&#x04AB;&#x04AD;&#x04AF;&#x04B1;&#x04B3;&#x04B5;&#x04B7;&#x04B9;&#x04BB;&#x04BD;&#x04BF;&#x04C2;&#x04C4;&#x04C8;&#x04CC;&#x04D1;&#x04D3;&#x04D5;&#x04D7;&#x04D9;&#x04DB;&#x04DD;&#x04DF;&#x04E1;&#x04E3;&#x04E5;&#x04E7;&#x04E9;&#x04EB;&#x04ED;&#x04EF;&#x04F1;&#x04F3;&#x04F5;&#x04F9;&#x0561;&#x0562;&#x0563;&#x0564;&#x0565;&#x0566;&#x0567;&#x0568;&#x0569;&#x056A;&#x056B;&#x056C;&#x056D;&#x056E;&#x056F;&#x0570;&#x0571;&#x0572;&#x0573;&#x0574;&#x0575;&#x0576;&#x0577;&#x0578;&#x0579;&#x057A;&#x057B;&#x057C;&#x057D;&#x057E;&#x057F;&#x0580;&#x0581;&#x0582;&#x0583;&#x0584;&#x0585;&#x0586;&#x1E01;&#x1E03;&#x1E05;&#x1E07;&#x1E09;&#x1E0B;&#x1E0D;&#x1E0F;&#x1E11;&#x1E13;&#x1E15;&#x1E17;&#x1E19;&#x1E1B;&#x1E1D;&#x1E1F;&#x1E21;&#x1E23;&#x1E25;&#x1E27;&#x1E29;&#x1E2B;&#x1E2D;&#x1E2F;&#x1E31;&#x1E33;&#x1E35;&#x1E37;&#x1E39;&#x1E3B;&#x1E3D;&#x1E3F;&#x1E41;&#x1E43;&#x1E45;&#x1E47;&#x1E49;&#x1E4B;&#x1E4D;&#x1E4F;&#x1E51;&#x1E53;&#x1E55;&#x1E57;&#x1E59;&#x1E5B;&#x1E5D;&#x1E5F;&#x1E61;&#x1E63;&#x1E65;&#x1E67;&#x1E69;&#x1E6B;&#x1E6D;&#x1E6F;&#x1E71;&#x1E73;&#x1E75;&#x1E77;&#x1E79;&#x1E7B;&#x1E7D;&#x1E7F;&#x1E81;&#x1E83;&#x1E85;&#x1E87;&#x1E89;&#x1E8B;&#x1E8D;&#x1E8F;&#x1E91;&#x1E93;&#x1E95;&#x1E9B;&#x1EA1;&#x1EA3;&#x1EA5;&#x1EA7;&#x1EA9;&#x1EAB;&#x1EAD;&#x1EAF;&#x1EB1;&#x1EB3;&#x1EB5;&#x1EB7;&#x1EB9;&#x1EBB;&#x1EBD;&#x1EBF;&#x1EC1;&#x1EC3;&#x1EC5;&#x1EC7;&#x1EC9;&#x1ECB;&#x1ECD;&#x1ECF;&#x1ED1;&#x1ED3;&#x1ED5;&#x1ED7;&#x1ED9;&#x1EDB;&#x1EDD;&#x1EDF;&#x1EE1;&#x1EE3;&#x1EE5;&#x1EE7;&#x1EE9;&#x1EEB;&#x1EED;&#x1EEF;&#x1EF1;&#x1EF3;&#x1EF5;&#x1EF7;&#x1EF9;&#x1F00;&#x1F01;&#x1F02;&#x1F03;&#x1F04;&#x1F05;&#x1F06;&#x1F07;&#x1F10;&#x1F11;&#x1F12;&#x1F13;&#x1F14;&#x1F15;&#x1F20;&#x1F21;&#x1F22;&#x1F23;&#x1F24;&#x1F25;&#x1F26;&#x1F27;&#x1F30;&#x1F31;&#x1F32;&#x1F33;&#x1F34;&#x1F35;&#x1F36;&#x1F37;&#x1F40;&#x1F41;&#x1F42;&#x1F43;&#x1F44;&#x1F45;&#x1F51;&#x1F53;&#x1F55;&#x1F57;&#x1F60;&#x1F61;&#x1F62;&#x1F63;&#x1F64;&#x1F65;&#x1F66;&#x1F67;&#x1F70;&#x1F71;&#x1F72;&#x1F73;&#x1F74;&#x1F75;&#x1F76;&#x1F77;&#x1F78;&#x1F79;&#x1F7A;&#x1F7B;&#x1F7C;&#x1F7D;&#x1F80;&#x1F81;&#x1F82;&#x1F83;&#x1F84;&#x1F85;&#x1F86;&#x1F87;&#x1F90;&#x1F91;&#x1F92;&#x1F93;&#x1F94;&#x1F95;&#x1F96;&#x1F97;&#x1FA0;&#x1FA1;&#x1FA2;&#x1FA3;&#x1FA4;&#x1FA5;&#x1FA6;&#x1FA7;&#x1FB0;&#x1FB1;&#x1FB3;&#x1FBE;&#x1FC3;&#x1FD0;&#x1FD1;&#x1FE0;&#x1FE1;&#x1FE5;&#x1FF3;&#x2170;&#x2171;&#x2172;&#x2173;&#x2174;&#x2175;&#x2176;&#x2177;&#x2178;&#x2179;&#x217A;&#x217B;&#x217C;&#x217D;&#x217E;&#x217F;&#x24D0;&#x24D1;&#x24D2;&#x24D3;&#x24D4;&#x24D5;&#x24D6;&#x24D7;&#x24D8;&#x24D9;&#x24DA;&#x24DB;&#x24DC;&#x24DD;&#x24DE;&#x24DF;&#x24E0;&#x24E1;&#x24E2;&#x24E3;&#x24E4;&#x24E5;&#x24E6;&#x24E7;&#x24E8;&#x24E9;&#xFF41;&#xFF42;&#xFF43;&#xFF44;&#xFF45;&#xFF46;&#xFF47;&#xFF48;&#xFF49;&#xFF4A;&#xFF4B;&#xFF4C;&#xFF4D;&#xFF4E;&#xFF4F;&#xFF50;&#xFF51;&#xFF52;&#xFF53;&#xFF54;&#xFF55;&#xFF56;&#xFF57;&#xFF58;&#xFF59;&#xFF5A;&#x10428;&#x10429;&#x1042A;&#x1042B;&#x1042C;&#x1042D;&#x1042E;&#x1042F;&#x10430;&#x10431;&#x10432;&#x10433;&#x10434;&#x10435;&#x10436;&#x10437;&#x10438;&#x10439;&#x1043A;&#x1043B;&#x1043C;&#x1043D;&#x1043E;&#x1043F;&#x10440;&#x10441;&#x10442;&#x10443;&#x10444;&#x10445;&#x10446;&#x10447;&#x10448;&#x10449;&#x1044A;&#x1044B;&#x1044C;&#x1044D;'"/>
		<xsl:variable name="xsltsl-str-upper" select="'&#x0041;&#x0042;&#x0043;&#x0044;&#x0045;&#x0046;&#x0047;&#x0048;&#x0049;&#x004A;&#x004B;&#x004C;&#x004D;&#x004E;&#x004F;&#x0050;&#x0051;&#x0052;&#x0053;&#x0054;&#x0055;&#x0056;&#x0057;&#x0058;&#x0059;&#x005A;&#x039C;&#x00C0;&#x00C1;&#x00C2;&#x00C3;&#x00C4;&#x00C5;&#x00C6;&#x00C7;&#x00C8;&#x00C9;&#x00CA;&#x00CB;&#x00CC;&#x00CD;&#x00CE;&#x00CF;&#x00D0;&#x00D1;&#x00D2;&#x00D3;&#x00D4;&#x00D5;&#x00D6;&#x00D8;&#x00D9;&#x00DA;&#x00DB;&#x00DC;&#x00DD;&#x00DE;&#x0178;&#x0100;&#x0102;&#x0104;&#x0106;&#x0108;&#x010A;&#x010C;&#x010E;&#x0110;&#x0112;&#x0114;&#x0116;&#x0118;&#x011A;&#x011C;&#x011E;&#x0120;&#x0122;&#x0124;&#x0126;&#x0128;&#x012A;&#x012C;&#x012E;&#x0049;&#x0132;&#x0134;&#x0136;&#x0139;&#x013B;&#x013D;&#x013F;&#x0141;&#x0143;&#x0145;&#x0147;&#x014A;&#x014C;&#x014E;&#x0150;&#x0152;&#x0154;&#x0156;&#x0158;&#x015A;&#x015C;&#x015E;&#x0160;&#x0162;&#x0164;&#x0166;&#x0168;&#x016A;&#x016C;&#x016E;&#x0170;&#x0172;&#x0174;&#x0176;&#x0179;&#x017B;&#x017D;&#x0053;&#x0182;&#x0184;&#x0187;&#x018B;&#x0191;&#x01F6;&#x0198;&#x01A0;&#x01A2;&#x01A4;&#x01A7;&#x01AC;&#x01AF;&#x01B3;&#x01B5;&#x01B8;&#x01BC;&#x01F7;&#x01C4;&#x01C4;&#x01C7;&#x01C7;&#x01CA;&#x01CA;&#x01CD;&#x01CF;&#x01D1;&#x01D3;&#x01D5;&#x01D7;&#x01D9;&#x01DB;&#x018E;&#x01DE;&#x01E0;&#x01E2;&#x01E4;&#x01E6;&#x01E8;&#x01EA;&#x01EC;&#x01EE;&#x01F1;&#x01F1;&#x01F4;&#x01F8;&#x01FA;&#x01FC;&#x01FE;&#x0200;&#x0202;&#x0204;&#x0206;&#x0208;&#x020A;&#x020C;&#x020E;&#x0210;&#x0212;&#x0214;&#x0216;&#x0218;&#x021A;&#x021C;&#x021E;&#x0222;&#x0224;&#x0226;&#x0228;&#x022A;&#x022C;&#x022E;&#x0230;&#x0232;&#x0181;&#x0186;&#x0189;&#x018A;&#x018F;&#x0190;&#x0193;&#x0194;&#x0197;&#x0196;&#x019C;&#x019D;&#x019F;&#x01A6;&#x01A9;&#x01AE;&#x01B1;&#x01B2;&#x01B7;&#x0399;&#x0386;&#x0388;&#x0389;&#x038A;&#x0391;&#x0392;&#x0393;&#x0394;&#x0395;&#x0396;&#x0397;&#x0398;&#x0399;&#x039A;&#x039B;&#x039C;&#x039D;&#x039E;&#x039F;&#x03A0;&#x03A1;&#x03A3;&#x03A3;&#x03A4;&#x03A5;&#x03A6;&#x03A7;&#x03A8;&#x03A9;&#x03AA;&#x03AB;&#x038C;&#x038E;&#x038F;&#x0392;&#x0398;&#x03A6;&#x03A0;&#x03DA;&#x03DC;&#x03DE;&#x03E0;&#x03E2;&#x03E4;&#x03E6;&#x03E8;&#x03EA;&#x03EC;&#x03EE;&#x039A;&#x03A1;&#x03A3;&#x0395;&#x0410;&#x0411;&#x0412;&#x0413;&#x0414;&#x0415;&#x0416;&#x0417;&#x0418;&#x0419;&#x041A;&#x041B;&#x041C;&#x041D;&#x041E;&#x041F;&#x0420;&#x0421;&#x0422;&#x0423;&#x0424;&#x0425;&#x0426;&#x0427;&#x0428;&#x0429;&#x042A;&#x042B;&#x042C;&#x042D;&#x042E;&#x042F;&#x0400;&#x0401;&#x0402;&#x0403;&#x0404;&#x0405;&#x0406;&#x0407;&#x0408;&#x0409;&#x040A;&#x040B;&#x040C;&#x040D;&#x040E;&#x040F;&#x0460;&#x0462;&#x0464;&#x0466;&#x0468;&#x046A;&#x046C;&#x046E;&#x0470;&#x0472;&#x0474;&#x0476;&#x0478;&#x047A;&#x047C;&#x047E;&#x0480;&#x048C;&#x048E;&#x0490;&#x0492;&#x0494;&#x0496;&#x0498;&#x049A;&#x049C;&#x049E;&#x04A0;&#x04A2;&#x04A4;&#x04A6;&#x04A8;&#x04AA;&#x04AC;&#x04AE;&#x04B0;&#x04B2;&#x04B4;&#x04B6;&#x04B8;&#x04BA;&#x04BC;&#x04BE;&#x04C1;&#x04C3;&#x04C7;&#x04CB;&#x04D0;&#x04D2;&#x04D4;&#x04D6;&#x04D8;&#x04DA;&#x04DC;&#x04DE;&#x04E0;&#x04E2;&#x04E4;&#x04E6;&#x04E8;&#x04EA;&#x04EC;&#x04EE;&#x04F0;&#x04F2;&#x04F4;&#x04F8;&#x0531;&#x0532;&#x0533;&#x0534;&#x0535;&#x0536;&#x0537;&#x0538;&#x0539;&#x053A;&#x053B;&#x053C;&#x053D;&#x053E;&#x053F;&#x0540;&#x0541;&#x0542;&#x0543;&#x0544;&#x0545;&#x0546;&#x0547;&#x0548;&#x0549;&#x054A;&#x054B;&#x054C;&#x054D;&#x054E;&#x054F;&#x0550;&#x0551;&#x0552;&#x0553;&#x0554;&#x0555;&#x0556;&#x1E00;&#x1E02;&#x1E04;&#x1E06;&#x1E08;&#x1E0A;&#x1E0C;&#x1E0E;&#x1E10;&#x1E12;&#x1E14;&#x1E16;&#x1E18;&#x1E1A;&#x1E1C;&#x1E1E;&#x1E20;&#x1E22;&#x1E24;&#x1E26;&#x1E28;&#x1E2A;&#x1E2C;&#x1E2E;&#x1E30;&#x1E32;&#x1E34;&#x1E36;&#x1E38;&#x1E3A;&#x1E3C;&#x1E3E;&#x1E40;&#x1E42;&#x1E44;&#x1E46;&#x1E48;&#x1E4A;&#x1E4C;&#x1E4E;&#x1E50;&#x1E52;&#x1E54;&#x1E56;&#x1E58;&#x1E5A;&#x1E5C;&#x1E5E;&#x1E60;&#x1E62;&#x1E64;&#x1E66;&#x1E68;&#x1E6A;&#x1E6C;&#x1E6E;&#x1E70;&#x1E72;&#x1E74;&#x1E76;&#x1E78;&#x1E7A;&#x1E7C;&#x1E7E;&#x1E80;&#x1E82;&#x1E84;&#x1E86;&#x1E88;&#x1E8A;&#x1E8C;&#x1E8E;&#x1E90;&#x1E92;&#x1E94;&#x1E60;&#x1EA0;&#x1EA2;&#x1EA4;&#x1EA6;&#x1EA8;&#x1EAA;&#x1EAC;&#x1EAE;&#x1EB0;&#x1EB2;&#x1EB4;&#x1EB6;&#x1EB8;&#x1EBA;&#x1EBC;&#x1EBE;&#x1EC0;&#x1EC2;&#x1EC4;&#x1EC6;&#x1EC8;&#x1ECA;&#x1ECC;&#x1ECE;&#x1ED0;&#x1ED2;&#x1ED4;&#x1ED6;&#x1ED8;&#x1EDA;&#x1EDC;&#x1EDE;&#x1EE0;&#x1EE2;&#x1EE4;&#x1EE6;&#x1EE8;&#x1EEA;&#x1EEC;&#x1EEE;&#x1EF0;&#x1EF2;&#x1EF4;&#x1EF6;&#x1EF8;&#x1F08;&#x1F09;&#x1F0A;&#x1F0B;&#x1F0C;&#x1F0D;&#x1F0E;&#x1F0F;&#x1F18;&#x1F19;&#x1F1A;&#x1F1B;&#x1F1C;&#x1F1D;&#x1F28;&#x1F29;&#x1F2A;&#x1F2B;&#x1F2C;&#x1F2D;&#x1F2E;&#x1F2F;&#x1F38;&#x1F39;&#x1F3A;&#x1F3B;&#x1F3C;&#x1F3D;&#x1F3E;&#x1F3F;&#x1F48;&#x1F49;&#x1F4A;&#x1F4B;&#x1F4C;&#x1F4D;&#x1F59;&#x1F5B;&#x1F5D;&#x1F5F;&#x1F68;&#x1F69;&#x1F6A;&#x1F6B;&#x1F6C;&#x1F6D;&#x1F6E;&#x1F6F;&#x1FBA;&#x1FBB;&#x1FC8;&#x1FC9;&#x1FCA;&#x1FCB;&#x1FDA;&#x1FDB;&#x1FF8;&#x1FF9;&#x1FEA;&#x1FEB;&#x1FFA;&#x1FFB;&#x1F88;&#x1F89;&#x1F8A;&#x1F8B;&#x1F8C;&#x1F8D;&#x1F8E;&#x1F8F;&#x1F98;&#x1F99;&#x1F9A;&#x1F9B;&#x1F9C;&#x1F9D;&#x1F9E;&#x1F9F;&#x1FA8;&#x1FA9;&#x1FAA;&#x1FAB;&#x1FAC;&#x1FAD;&#x1FAE;&#x1FAF;&#x1FB8;&#x1FB9;&#x1FBC;&#x0399;&#x1FCC;&#x1FD8;&#x1FD9;&#x1FE8;&#x1FE9;&#x1FEC;&#x1FFC;&#x2160;&#x2161;&#x2162;&#x2163;&#x2164;&#x2165;&#x2166;&#x2167;&#x2168;&#x2169;&#x216A;&#x216B;&#x216C;&#x216D;&#x216E;&#x216F;&#x24B6;&#x24B7;&#x24B8;&#x24B9;&#x24BA;&#x24BB;&#x24BC;&#x24BD;&#x24BE;&#x24BF;&#x24C0;&#x24C1;&#x24C2;&#x24C3;&#x24C4;&#x24C5;&#x24C6;&#x24C7;&#x24C8;&#x24C9;&#x24CA;&#x24CB;&#x24CC;&#x24CD;&#x24CE;&#x24CF;&#xFF21;&#xFF22;&#xFF23;&#xFF24;&#xFF25;&#xFF26;&#xFF27;&#xFF28;&#xFF29;&#xFF2A;&#xFF2B;&#xFF2C;&#xFF2D;&#xFF2E;&#xFF2F;&#xFF30;&#xFF31;&#xFF32;&#xFF33;&#xFF34;&#xFF35;&#xFF36;&#xFF37;&#xFF38;&#xFF39;&#xFF3A;&#x10400;&#x10401;&#x10402;&#x10403;&#x10404;&#x10405;&#x10406;&#x10407;&#x10408;&#x10409;&#x1040A;&#x1040B;&#x1040C;&#x1040D;&#x1040E;&#x1040F;&#x10410;&#x10411;&#x10412;&#x10413;&#x10414;&#x10415;&#x10416;&#x10417;&#x10418;&#x10419;&#x1041A;&#x1041B;&#x1041C;&#x1041D;&#x1041E;&#x1041F;&#x10420;&#x10421;&#x10422;&#x10423;&#x10424;&#x10425;'"/>


		<xsl:value-of select="translate($text, $xsltsl-str-upper, $xsltsl-str-lower)"/>
	</xsl:template>



	<xsl:template name="substring-before-first">
		<xsl:param name="text"/>
		<xsl:param name="chars"/>

		<xsl:choose>

			<xsl:when test="string-length($text) = 0"/>

			<xsl:when test="string-length($chars) = 0">
				<xsl:value-of select="$text"/>
			</xsl:when>

			<xsl:when test="contains($text, substring($chars, 1, 1))">
				<xsl:variable name="this" select="substring-before($text, substring($chars, 1, 1))"/>
				<xsl:variable name="rest">
					<xsl:call-template name="substring-before-first">
						<xsl:with-param name="text" select="$text"/>
						<xsl:with-param name="chars" select="substring($chars, 2)"/>
					</xsl:call-template>
				</xsl:variable>

				<xsl:choose>
					<xsl:when test="string-length($this) &lt; string-length($rest)">
						<xsl:value-of select="$this"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$rest"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>

			<xsl:otherwise>
				<xsl:call-template name="substring-before-first">
					<xsl:with-param name="text" select="$text"/>
					<xsl:with-param name="chars" select="substring($chars, 2)"/>
				</xsl:call-template>
			</xsl:otherwise>

		</xsl:choose>
	</xsl:template>

	<xsl:template name="subst">
		<xsl:param name="text"/>
		<xsl:param name="replace"/>
		<xsl:param name="with"/>
		<xsl:param name='disable-output-escaping'>no</xsl:param>

		<xsl:choose>
			<xsl:when test="string-length($replace) = 0 and $disable-output-escaping = 'yes'">
				<xsl:value-of select="$text" disable-output-escaping='yes'/>
			</xsl:when>
			<xsl:when test="string-length($replace) = 0">
				<xsl:value-of select="$text"/>
			</xsl:when>
			<xsl:when test="contains($text, $replace)">

				<xsl:variable name="before" select="substring-before($text, $replace)"/>
				<xsl:variable name="after" select="substring-after($text, $replace)"/>

				<xsl:choose>
					<xsl:when test='$disable-output-escaping = "yes"'>
						<xsl:value-of select="$before" disable-output-escaping="yes"/>
						<xsl:value-of select="$with" disable-output-escaping="yes"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$before"/>
						<xsl:value-of select="$with"/>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:call-template name="subst">
					<xsl:with-param name="text" select="$after"/>
					<xsl:with-param name="replace" select="$replace"/>
					<xsl:with-param name="with" select="$with"/>
					<xsl:with-param name="disable-output-escaping" select="$disable-output-escaping"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:when test='$disable-output-escaping = "yes"'>
				<xsl:value-of select="$text" disable-output-escaping="yes"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>            
	</xsl:template>

	<xsl:template name="extractsubstringforme">
		<xsl:param name="mainstring"/>
		<xsl:param name="delimiter" select="'1'"/> 
		<xsl:param name ="counter" />

		<xsl:choose >
			<xsl:when test="$counter &gt; 1">
				<xsl:call-template name="extractsubstringforme">
					<xsl:with-param name="mainstring" select="substring-after($mainstring,$delimiter)" />
					<xsl:with-param name="delimiter" select="'1'"/>
					<xsl:with-param name="counter" select="$counter -1"/>
				</xsl:call-template>
			</xsl:when>

			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="not(contains($mainstring,$delimiter))">
						<xsl:value-of select="$mainstring"/>
					</xsl:when>

					<xsl:otherwise>
						<xsl:value-of select="substring-before($mainstring,$delimiter)"/>
					</xsl:otherwise>

				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>



</xsl:stylesheet>