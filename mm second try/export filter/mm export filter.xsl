<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0">
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">

		<xsl:element name="matemad">

			<xsl:for-each select="//text:p[@text:style-name='SK-MM-Rem']">
				<xsl:call-template name="remedy-section" >
					<xsl:with-param name= "remaining-remedies" select="count(following::text:p[@text:style-name='SK-MM-Rem'])"/>
				</xsl:call-template>
			</xsl:for-each>

		</xsl:element>

	</xsl:template>

	<xsl:template name="remedy-section">
		<xsl:param name="remaining-remedies" />

		<xsl:variable name="remaining-region">
			<xsl:copy-of select="count(following::text:p[@text:style-name='SK-MM-Region'])" />
		</xsl:variable>

		<!-- no of worse following this region -->
		<xsl:variable name="remaining-worse">
			<xsl:copy-of select="count(following::text:p[@text:style-name='SK-MM-Worse'])" />
		</xsl:variable>

		<xsl:variable name="remaining-better">
			<xsl:copy-of select="count(following::text:p[@text:style-name='SK-MM-Better'])" />
		</xsl:variable>

		<xsl:element name="remedy">	


			<xsl:attribute name="added">
				<xsl:value-of select="''"/>
			</xsl:attribute>

			<xsl:element name="remedy-abbr">
				<xsl:value-of select="''"/>
			</xsl:element>

			<xsl:element name="remedy-name">
				<xsl:value-of select="."/>
			</xsl:element>

			<!-- check for a Region Block -->
			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-Region']">		

				<!--check of a SK-MM-Region contains text region -->
				<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and normalize-space(.) = 'Region'">	

					<xsl:element name="abstract">
						<xsl:attribute name="section">
							<xsl:value-of select ="'region'" />
						</xsl:attribute>

						<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L1']">
							<!--check of SK-MM-L1 is not empty-->
							<xsl:if test="normalize-space(.) != ''" >
								<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and preceding::text:p[1]/@text:style-name='SK-MM-Region'">

									<xsl:choose >
										<!--- three level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1]) != ''">

											<!-- process to print first level 1 lelment -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="." />
													</xsl:element>
													<xsl:element name="subsection">
														<!-- process to print first level 2 element -->
														<xsl:element name="line">
															<xsl:element name="item">
																<xsl:element name="content">
																	<xsl:attribute name="grade">
																		<xsl:call-template name="determine-grade" >
																			<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L2'][1]/text:span/@text:style-name" />
																		</xsl:call-template>
																	</xsl:attribute>
																	<xsl:value-of select="following::text:p[@text:style-name='SK-MM-L2'][1]"/>
																</xsl:element>
																<xsl:element name="subsection">
																	<!-- process to print all level 3 element -->
																	<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L3']">																			
																		<xsl:if test="normalize-space(.) != ''">
																			<!-- this logic can provide bugs in future -->
																			<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies">
																				<xsl:element name="line">
																					<xsl:element name="content">
																						<xsl:attribute name="grade">
																							<xsl:call-template name="determine-grade" >
																								<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																							</xsl:call-template>
																						</xsl:attribute>
																						<xsl:value-of select="."/>
																					</xsl:element>
																				</xsl:element>
																			</xsl:if>
																		</xsl:if>
																	</xsl:for-each>
																</xsl:element>

															</xsl:element>
														</xsl:element>
														<!-- process to print other level 2 element -->
														<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">
															<!-- check of no. of following worse and immediate L3 is empty -->
															<xsl:if test="$remaining-worse = count(following::text:p[@text:style-name='SK-MM-Worse']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')">
																<xsl:element name="line">
																	<xsl:element name="item">
																		<xsl:element name="content">
																			<xsl:attribute name="grade">
																				<xsl:call-template name="determine-grade" >
																					<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																				</xsl:call-template>
																			</xsl:attribute>
																			<xsl:value-of select="."/>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:if>
														</xsl:for-each>

													</xsl:element>

												</xsl:element>
											</xsl:element>
										</xsl:when>

										<!-- two level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L2'][1]) != ''">

											<!--process to print first level 1 element -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
													<xsl:element name="subsection">	
														<!-- process to print level 2 element -->
														<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">
															<!-- check of no. of following worse and immediate L3 is empty -->
															<xsl:if test="$remaining-worse = count(following::text:p[@text:style-name='SK-MM-Worse']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')">
																<xsl:element name="line">
																	<xsl:element name="item">
																		<xsl:element name="content">
																			<xsl:attribute name="grade">
																				<xsl:call-template name="determine-grade" >
																					<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																				</xsl:call-template>
																			</xsl:attribute>
																			<xsl:value-of select="."/>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:if>
														</xsl:for-each>

													</xsl:element>

												</xsl:element>
											</xsl:element>
										</xsl:when>

										<xsl:otherwise>											
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
												</xsl:element>
											</xsl:element>											
										</xsl:otherwise>
									</xsl:choose>


								</xsl:if>
							</xsl:if>
						</xsl:for-each>

					</xsl:element>
				</xsl:if>	

			</xsl:for-each>

			<!-- check for a Worse Block -->
			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-Worse']">		

				<!--check of a SK-MM-Worse contains text worse -->
				<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and normalize-space(.) = 'Worse'">	

					<xsl:element name="abstract">
						<xsl:attribute name="section">
							<xsl:value-of select ="'worse'" />

						</xsl:attribute>

						<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L1']">
							<xsl:variable name="no-of-mm-L1">
								<xsl:copy-of select="count(following::text:p[@text:style-name='SK-MM-L1'][normalize-space(.)!='']) " />
							</xsl:variable>

							<!--check of SK-MM-L1 is not empty-->
							<xsl:if test="normalize-space(.) != ''" >
								<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and preceding::text:p[1]/@text:style-name='SK-MM-Worse'">


									<xsl:choose >
										<!--- three level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1]) != ''">

											<!-- process to print first level 1 lelment -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="." />
														<xsl:element name="subsection">
															<!-- process to print first level 2 element -->
															<xsl:element name="line">
																<xsl:element name="item">
																	<xsl:element name="content">
																		<xsl:attribute name="grade">
																			<xsl:call-template name="determine-grade" >
																				<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L2'][1]/text:span/@text:style-name" />
																			</xsl:call-template>
																		</xsl:attribute>
																		<xsl:value-of select="following::text:p[@text:style-name='SK-MM-L2'][1]"/>
																		<xsl:element name="subsection">
																			<!-- process to print all level 3 element -->
																			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L3']">																			
																				<xsl:if test="normalize-space(.) != ''">
																					<!-- this logic can provide bugs in future -->
																					<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies">
																						<xsl:element name="line">
																							<xsl:element name="content">
																								<xsl:attribute name="grade">
																									<xsl:call-template name="determine-grade" >
																										<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																									</xsl:call-template>
																								</xsl:attribute>
																								<xsl:value-of select="."/>
																							</xsl:element>
																						</xsl:element>
																					</xsl:if>
																				</xsl:if>
																			</xsl:for-each>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:element>
															<!-- process to print other level 2 element -->
															<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">
																<!-- check of no. of following worse and immediate L3 is empty -->
																<xsl:if test="$remaining-worse = count(following::text:p[@text:style-name='SK-MM-Worse']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')">
																	<xsl:element name="line">
																		<xsl:element name="item">
																			<xsl:element name="content">
																				<xsl:attribute name="grade">
																					<xsl:call-template name="determine-grade" >
																						<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																					</xsl:call-template>
																				</xsl:attribute>
																				<xsl:value-of select="."/>
																			</xsl:element>
																		</xsl:element>
																	</xsl:element>
																</xsl:if>
															</xsl:for-each>

														</xsl:element>
													</xsl:element>
												</xsl:element>
											</xsl:element>
										</xsl:when>

										<!-- two level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L2'][1]) != ''">

											<!--process to print first level 1 element -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
													<xsl:element name="subsection">	
														<!-- process to print level 2 element -->

														<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">

															<!-- check of no. of following better and immediate L3 is empty -->
															<!-- <xsl:if test="$remaining-better = count(following::text:p[@text:style-name='SK-MM-Better']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')"> -->
															<!-- how many SK-MM-L1 is present after this SK-MM-L2? If less than when entered this node 
																 it means another nesting started-->
															<xsl:if test="count(following::text:p[@text:style-name='SK-MM-L1'][normalize-space(.)!='']) = $no-of-mm-L1">
																<xsl:element name="line">
																	<xsl:element name="item">
																		<xsl:element name="content">
																			<xsl:attribute name="grade">
																				<xsl:call-template name="determine-grade" >
																					<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																				</xsl:call-template>
																			</xsl:attribute>
																			<xsl:value-of select="."/>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:if>
														</xsl:for-each>

													</xsl:element>

												</xsl:element>
											</xsl:element>
										</xsl:when>

										<xsl:otherwise>											
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
												</xsl:element>
											</xsl:element>											
										</xsl:otherwise>
									</xsl:choose>



								</xsl:if>
							</xsl:if>
						</xsl:for-each>
					</xsl:element>
				</xsl:if>	

			</xsl:for-each>

			<!-- check for a Better Block -->
			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-Better']">	

				<!--check of a SK-MM-Better contains text Better -->
				<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and normalize-space(.) = 'Better'">	

					<xsl:element name="abstract">
						<xsl:attribute name="section">
							<xsl:value-of select ="'better'" />

						</xsl:attribute>

						<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L1']">
							<xsl:variable name="no-of-mm-L1">
								<xsl:copy-of select="count(following::text:p[@text:style-name='SK-MM-L1'][normalize-space(.)!='']) " />
							</xsl:variable>

							<!--check of SK-MM-L1 is not empty-->
							<xsl:if test="normalize-space(.) != ''" >
								<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and preceding::text:p[1]/@text:style-name='SK-MM-Better'">


									<xsl:choose >
										<!--- three level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1]) != ''">

											<!-- process to print first level 1 lelment -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="." />
														<xsl:element name="subsection">
															<!-- process to print first level 2 element -->
															<xsl:element name="line">
																<xsl:element name="item">
																	<xsl:element name="content">
																		<xsl:attribute name="grade">
																			<xsl:call-template name="determine-grade" >
																				<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L2'][1]/text:span/@text:style-name" />
																			</xsl:call-template>
																		</xsl:attribute>
																		<xsl:value-of select="following::text:p[@text:style-name='SK-MM-L2'][1]"/>
																		<xsl:element name="subsection">
																			<!-- process to print all level 3 element -->
																			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L3']">																			
																				<xsl:if test="normalize-space(.) != ''">
																					<!-- this logic can provide bugs in future -->
																					<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies">
																						<xsl:element name="line">
																							<xsl:element name="content">
																								<xsl:attribute name="grade">
																									<xsl:call-template name="determine-grade" >
																										<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																									</xsl:call-template>
																								</xsl:attribute>
																								<xsl:value-of select="."/>
																							</xsl:element>
																						</xsl:element>
																					</xsl:if>
																				</xsl:if>
																			</xsl:for-each>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:element>
															<!-- process to print other level 2 element -->
															<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">
																<!-- check of no. of following worse and immediate L3 is empty -->
																<xsl:if test="$remaining-worse = count(following::text:p[@text:style-name='SK-MM-Worse']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')">
																	<xsl:element name="line">
																		<xsl:element name="item">
																			<xsl:element name="content">
																				<xsl:attribute name="grade">
																					<xsl:call-template name="determine-grade" >
																						<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																					</xsl:call-template>
																				</xsl:attribute>
																				<xsl:value-of select="."/>
																			</xsl:element>
																		</xsl:element>
																	</xsl:element>
																</xsl:if>
															</xsl:for-each>

														</xsl:element>
													</xsl:element>
												</xsl:element>
											</xsl:element>
										</xsl:when>

										<!-- two level nesting -->
										<xsl:when test="normalize-space(following::text:p[@text:style-name='SK-MM-L2'][1]) != ''">

											<!--process to print first level 1 element -->
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="following::text:p[@text:style-name='SK-MM-L1'][1]/text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
													<xsl:element name="subsection">	
														<!-- process to print level 2 element -->

														<xsl:for-each select="following::text:p[@text:style-name='SK-MM-L2']">

															<!-- check of no. of following better and immediate L3 is empty -->
															<!-- <xsl:if test="$remaining-better = count(following::text:p[@text:style-name='SK-MM-Better']) and normalize-space(following::text:p[@text:style-name='SK-MM-L3'][1])='' and not(normalize-space(.) = '')"> -->
															<!-- how many SK-MM-L1 is present after this SK-MM-L2? If less than when entered this node 
																 it means another nesting started-->
															<xsl:if test="count(following::text:p[@text:style-name='SK-MM-L1'][normalize-space(.)!='']) = $no-of-mm-L1">
																<xsl:element name="line">
																	<xsl:element name="item">
																		<xsl:element name="content">
																			<xsl:attribute name="grade">
																				<xsl:call-template name="determine-grade" >
																					<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
																				</xsl:call-template>
																			</xsl:attribute>
																			<xsl:value-of select="."/>
																		</xsl:element>
																	</xsl:element>
																</xsl:element>
															</xsl:if>
														</xsl:for-each>

													</xsl:element>

												</xsl:element>
											</xsl:element>
										</xsl:when>

										<xsl:otherwise>											
											<xsl:element name="line">
												<xsl:element name="item">
													<xsl:element name="content">
														<xsl:attribute name="grade">
															<xsl:call-template name="determine-grade" >
																<xsl:with-param name="gradename" select="./text:span/@text:style-name" />
															</xsl:call-template>
														</xsl:attribute>
														<xsl:value-of select="."/>
													</xsl:element>
												</xsl:element>
											</xsl:element>											
										</xsl:otherwise>
									</xsl:choose>



								</xsl:if>
							</xsl:if>
						</xsl:for-each>
					</xsl:element>
				</xsl:if>			



			</xsl:for-each>


		</xsl:element>

	</xsl:template>


	<xsl:template name="region-line-item">

		<xsl:element name="line">

			<xsl:element name="item">

				<xsl:element name="content">
					<xsl:attribute name="grade">

						<xsl:call-template name="determine-grade" >
							<xsl:with-param name="gradename" select="following::table:table-cell[1]/text:p/text:span/@text:style-name" />
						</xsl:call-template>
					</xsl:attribute>
					<xsl:value-of select="following::table:table-cell[1]"/>
				</xsl:element>

				<xsl:if test="not(normalize-space(following::table:table-cell[2]) = '')">
					<xsl:element name="subsection">
						<xsl:value-of select="following::table:table-cell[2]"/>
					</xsl:element>
				</xsl:if> 

			</xsl:element>

		</xsl:element>


	</xsl:template>




	<xsl:template name="determine-grade">
		<xsl:param name="gradename" />

		<xsl:choose>
			<xsl:when test = "$gradename = 'Strong_20_Emphasis'" >
				<xsl:value-of select ="'3'" />
			</xsl:when>
			<xsl:when test= "$gradename = 'Emphasis'">
				<xsl:value-of select="'2'" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="'1'" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>











	<xsl:template name="make-rubric">
		<!-- for each rubric -->

		<xsl:param name="countSortindex" />


		<xsl:variable name="germanSortOrder">
			<xsl:call-template name="extractsubstring">
				<xsl:with-param name="mainstring" select="."/>
				<xsl:with-param name="delimiter" select="','"/> 
				<xsl:with-param name ="counter" select="4" />
			</xsl:call-template>
		</xsl:variable>




		<xsl:element name="rubric">
			<xsl:attribute name="id">

				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="."/>
					<xsl:with-param name="delimiter" select="','"/> 
					<xsl:with-param name ="counter" select="1" />
				</xsl:call-template>

			</xsl:attribute>

			<xsl:attribute name="level">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="."/>
					<xsl:with-param name="delimiter" select="','"/> 
					<xsl:with-param name ="counter" select="2" />
				</xsl:call-template>
			</xsl:attribute>

			<xsl:attribute name="mother-element">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="."/>
					<xsl:with-param name="delimiter" select="','"/> 
					<xsl:with-param name ="counter" select="3" />
				</xsl:call-template>
			</xsl:attribute>

			<!--
			<xsl:attribute name="added">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="."/>
					<xsl:with-param name="delimiter" select="','"/> 
					<xsl:with-param name ="counter" select="4" />
				</xsl:call-template>
			</xsl:attribute>

				-->
			<xsl:element name ="text">

				<xsl:attribute name="sort-index">
					<xsl:value-of select="$countSortindex"/>
				</xsl:attribute>


				<!-- $textindex find out rubric level defined in ridx -->
				<xsl:variable name="textindex">
					<xsl:call-template name="extractsubstring">
						<xsl:with-param name="mainstring" select="."/>
						<xsl:with-param name="delimiter" select="','"/> 
						<xsl:with-param name ="counter" select="2" />
					</xsl:call-template>
				</xsl:variable>

				<xsl:variable name="level" select="concat('SK-T-L',$textindex)"/>

				<xsl:choose>
					<xsl:when test="$textindex = 1">
						<xsl:value-of select="''"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(following::text:p[@text:style-name=$level][1])"/>
					</xsl:otherwise>
				</xsl:choose>


			</xsl:element>

			<xsl:element name ="text-de">
				<xsl:attribute name="sort-index">
					<xsl:value-of select="$germanSortOrder"/>
				</xsl:attribute>

				<xsl:variable name="textindex">
					<xsl:call-template name="extractsubstring">
						<xsl:with-param name="mainstring" select="."/>
						<xsl:with-param name="delimiter" select="','"/> 
						<xsl:with-param name ="counter" select="2" />
					</xsl:call-template>
				</xsl:variable>

				<xsl:variable name="level" select="concat('SK-T-L',$textindex)"/>
				<xsl:variable name="germanLevel" select="concat($level,'-de')"/>

				<xsl:choose>
					<xsl:when test="$textindex = 1">
						<xsl:value-of select="''"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="normalize-space(following::text:p[@text:style-name=$germanLevel][1])"/>
					</xsl:otherwise>
				</xsl:choose>

			</xsl:element>

			<xsl:element name ="see">
				<xsl:value-of select="following::text:p[@text:style-name ='SK-T-See'][1]"/>
			</xsl:element>

			<xsl:element name ="rep-references">

				<xsl:variable name="refCounter">
					<xsl:call-template name="count-substring">
						<xsl:with-param name="texts" select="following::text:p[@text:style-name ='SK-T-Ref'][1]"/>
						<xsl:with-param name="chars" select="','"/>
					</xsl:call-template>
				</xsl:variable>

				<xsl:call-template name="make-references">
					<xsl:with-param name="loopCounter" select="$refCounter"/>
					<xsl:with-param name="totalRef" select="$refCounter"/>
				</xsl:call-template>

			</xsl:element>

			<xsl:element name ="remedies">
				<xsl:call-template name="make-remedy" />
			</xsl:element>

			<xsl:element name="comments">
				<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Rcomm'][1]"/>
			</xsl:element>

			<xsl:element name="comments-de">
				<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Rcomm-de'][1]"/>
			</xsl:element>

			<xsl:element name="compare">
				<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Comp'][1]"/>
			</xsl:element>

			<xsl:element name="rubric-footnote">

				<xsl:if test="normalize-space(following::text:p[@text:style-name='SK-T-Rubfnote']) = '*'">

					<xsl:variable name="rubindex">
						<xsl:call-template name="extractsubstring">
							<xsl:with-param name="mainstring" select="."/>
							<xsl:with-param name="delimiter" select="','"/> 
							<xsl:with-param name ="counter" select="1" />
						</xsl:call-template>
					</xsl:variable>

					<xsl:value-of select="$rubindex"/>
				</xsl:if>

			</xsl:element>

		</xsl:element>
	</xsl:template>

	<xsl:template name="make-remedy">
		<!-- for each remedy -->

		<xsl:variable name="counter" select="count(following::text:p[@text:style-name = 'SK-T-L1'])"/>

		<xsl:for-each select="following::text:p">
			<xsl:choose>
				<xsl:when test="@text:style-name='SK-T-Rem' and count(following::text:p[@text:style-name = 'SK-T-L1']) >= $counter">
					<!-- <xsl:value-of select="@text:style-name"/> -->
					<xsl:element name="remedy">
						<xsl:element name="name">
							<xsl:value-of select="." />
						</xsl:element>

						<xsl:element name="grade">
							<xsl:choose>
								<xsl:when test="./text:span[@text:style-name = 'SK-T-Gr2']">
									<xsl:value-of select="2"/>
								</xsl:when>
								<xsl:when test="./text:span[@text:style-name = 'SK-T-Gr3']">
									<xsl:value-of select="3"/>
								</xsl:when>
								<xsl:when test="./text:span[@text:style-name = 'SK-T-Gr4']">
									<xsl:value-of select="4"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="1"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:element>

						<xsl:element name="constraint">
							<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Constraint'][1]"/>
						</xsl:element>

						<xsl:element name="constraint-de">
							<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Constraint-de'][1]"/>
						</xsl:element>

						<xsl:element name="added">
							<xsl:value-of select="following::text:p[@text:style-name ='SK-T-Added'][1]"/>
						</xsl:element>

						<xsl:element name="footnote">

							<xsl:if test="normalize-space(following::text:p[@text:style-name ='SK-T-Remfnote'][1]) = '*'">

								<xsl:variable name="rubindex">
									<xsl:call-template name="extractsubstring">
										<xsl:with-param name="mainstring" select="preceding::text:p[@text:style-name ='SK-T-L1'][1]"/>
										<xsl:with-param name="delimiter" select="','"/> 
										<xsl:with-param name ="counter" select="1" />
									</xsl:call-template>
								</xsl:variable>

								<xsl:value-of select="concat($rubindex,.)"/>
							</xsl:if>
						</xsl:element>

					</xsl:element>
				</xsl:when>
				<xsl:otherwise>

				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="make-references">
		<xsl:param name="loopCounter"/>
		<xsl:param name="totalRef"/>

		<xsl:if test="$loopCounter > 0">
			<xsl:variable name="refText">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="following::text:p[@text:style-name ='SK-T-Ref'][1]"/>
					<xsl:with-param name="delimiter" select="','"/>
					<xsl:with-param name="counter" select="$totalRef - $loopCounter +1"/>
				</xsl:call-template>
			</xsl:variable>

			<xsl:choose>
				<xsl:when test="$refText > 999">
					<xsl:element name ="rubric-reference">
						<xsl:value-of select="$refText"/>
					</xsl:element>
				</xsl:when>

				<xsl:otherwise>
					<xsl:element name ="chapter-reference">
						<xsl:value-of select="$refText"/>
					</xsl:element>
				</xsl:otherwise>

			</xsl:choose>

			<xsl:call-template name="make-references">
				<xsl:with-param name="loopCounter" select="$loopCounter - 1"/>
				<xsl:with-param name="totalRef" select="$totalRef"/>
			</xsl:call-template>

		</xsl:if>

	</xsl:template>

	<xsl:template name="extractsubstring">
		<xsl:param name="mainstring"/>
		<xsl:param name="delimiter" select="','"/> 
		<xsl:param name ="counter" />

		<xsl:choose >
			<xsl:when test="$counter &gt; 1">
				<xsl:call-template name="extractsubstring">
					<xsl:with-param name="mainstring" select="substring-after($mainstring,$delimiter)" />
					<xsl:with-param name="delimiter" select="','"/>
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

</xsl:stylesheet>