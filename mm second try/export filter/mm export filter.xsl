<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
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
			<xsl:value-of select="count(following::text:p[@text:style-name='SK-MM-Region'])" />
		</xsl:variable>

		<!-- no of worse following this region -->
		<xsl:variable name="remaining-worse">
			<xsl:value-of select="count(following::text:p[@text:style-name='SK-MM-Worse'])" />
		</xsl:variable>

        <!-- no of better following this region -->
		<xsl:variable name="remaining-better">
			<xsl:value-of select="count(following::text:p[@text:style-name='SK-MM-Better'])" />
		</xsl:variable>

		<xsl:element name="remedy">	

			<xsl:attribute name="added">
				<xsl:value-of select="''"/>
			</xsl:attribute>

			<xsl:element name="remedy-abbr">
				<xsl:value-of select="preceding::text:p[@text:style-name='SK-MM-Rem-Short'][1]"/>
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

			<!-- symptoms -->
			<xsl:element name="symptoms">

				<xsl:for-each select="following::text:p[@text:style-name = 'Primary']">

					<xsl:variable name="current-node" select="current()" />

					<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies and not(normalize-space(.)='') ">

						<xsl:element name="sentence">
							<xsl:attribute name="part">
								<xsl:value-of select="'1'" />
							</xsl:attribute>


							<xsl:variable name="no-of-txspan" select="count(text:span)" />

                            <!-- TODO remove it -->
                            <xsl:element name="textspan">
                                <xsl:value-of select="$no-of-txspan" />
                            </xsl:element>

							<xsl:choose>
								<xsl:when test="$no-of-txspan = 0">
									<xsl:value-of select="." />
								</xsl:when>

								<xsl:when test="$no-of-txspan = 1" >

									<xsl:variable name="grade-suffix">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>

									<xsl:variable name="first-txspan" select="text:span[1]" />
									<xsl:variable name="start-tag" select="concat('grade',$grade-suffix)" />
									<xsl:variable name="end-tag" select="concat('&lt;', '/', 'grade',$grade-suffix, '>')" />


									<!--here outputs are print-->
									<xsl:variable name="temporary-string">
										<xsl:value-of select="substring-before(.,$first-txspan)" />
										<xsl:element name="{$start-tag}">
											<xsl:value-of select="$first-txspan" />
										</xsl:element>
										<xsl:value-of select="substring-after(.,$first-txspan)" />
									</xsl:variable>

									<xsl:copy-of select="$temporary-string"/>

									<xsl:if test="matches($temporary-string, '\([a-zA-Z\-]+\.\)')">
										<xsl:value-of select="'got is'" />
									</xsl:if>


								</xsl:when>

								<xsl:when test="$no-of-txspan = 2" >

									<xsl:variable name="grade-suffix-one">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span[1]/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>

									<xsl:variable name="grade-suffix-two">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span[2]/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>


									<xsl:variable name="first-txspan" select="text:span[1]" />
									<xsl:variable name="second-txspan" select="text:span[2]" />

									<xsl:variable name="start-tag-first" select="concat('grade',$grade-suffix-one)" />
									<xsl:variable name="end-tag-first" select="concat('&lt;', '/', 'grade',$grade-suffix-one, '>')" />									


									<xsl:variable name="start-tag-second" select="concat('grade',$grade-suffix-two)" />
									<xsl:variable name="end-tag-second" select="concat('&lt;', '/', 'grade',$grade-suffix-two, '>')" />

									<!--here outputs are print-->
									<xsl:value-of select="substring-before(.,$first-txspan)" />
									<xsl:element name="{$start-tag-first}">
										<xsl:value-of select="$first-txspan" />
									</xsl:element>
									<xsl:value-of select="substring-after(substring-before(., $second-txspan),$first-txspan)" />
									<xsl:element name="{$start-tag-second}">
										<xsl:value-of select="$second-txspan" />
									</xsl:element>
									<xsl:value-of select= "substring-after(., $second-txspan)" />


									<!-- <xsl:variable name="concated-text"  select="concat(substring-before(.,$first-txspan), $start-tag-first, $first-txspan, $end-tag-first, substring-after(substring-before(., $second-txspan),$first-txspan), $start-tag-second, $second-txspan, $end-tag-second, substring-after(., $second-txspan))" />
									<xsl:value-of  select="$concated-text" /> -->
								</xsl:when>
							</xsl:choose>

						</xsl:element>
					</xsl:if>
				</xsl:for-each>

				<xsl:for-each select="following::text:p[@text:style-name = 'Secondary']">
					<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies">
						<xsl:element name="sentence">
							<xsl:attribute name="part">
								<xsl:value-of select="'2'" />
							</xsl:attribute>


							<xsl:variable name="no-of-txspan" select="count(text:span)" />

							<xsl:choose>
								<xsl:when test="$no-of-txspan = 0">
									<xsl:value-of select="." />
								</xsl:when>
								<xsl:when test="$no-of-txspan = 1" >

									<xsl:variable name="grade-suffix">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>

									<xsl:variable name="first-txspan" select="text:span[1]" />
									<xsl:variable name="start-tag" select="concat('grade',$grade-suffix)" />

									<!--here outputs are print-->
									<xsl:variable name="temporary-string">
										<xsl:value-of select="substring-before(.,$first-txspan)" />
										<xsl:element name="{$start-tag}">
											<xsl:value-of select="$first-txspan" />
										</xsl:element>
										<xsl:value-of select="substring-after(.,$first-txspan)" />	
									</xsl:variable>

									<xsl:copy-of select="$temporary-string"/>

									<!-- <xsl:if test="matches($temporary-string, '\([a-zA-Z\-]+\.\)')">
										<xsl:copy-of select="$temporary-string" />
										<xsl:variable name="abcd" select="replace($temporary-string, 'Sul', 'bhul')" />
										<xsl:copy-of select="$abcd" />
									</xsl:if> -->



								</xsl:when>

								<xsl:when test="$no-of-txspan = 2" >

									<xsl:variable name="grade-suffix-one">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span[1]/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>

									<xsl:variable name="grade-suffix-two">
										<xsl:call-template name="determine-grade" >
											<xsl:with-param name="gradename" select="text:span[2]/@text:style-name" />
										</xsl:call-template>
									</xsl:variable>


									<xsl:variable name="first-txspan" select="text:span[1]" />
									<xsl:variable name="second-txspan" select="text:span[2]" />

									<xsl:variable name="start-tag-first" select="concat('grade',$grade-suffix-one)" />

									<xsl:variable name="start-tag-second" select="concat('grade',$grade-suffix-two)" />

									<!--here outputs are print-->
									<xsl:value-of select="substring-before(.,$first-txspan)" />
									<xsl:element name="{$start-tag-first}">
										<xsl:value-of select="$first-txspan" />
									</xsl:element>
									<xsl:value-of select="substring-after(substring-before(., $second-txspan),$first-txspan)" />
									<xsl:element name="{$start-tag-second}">
										<xsl:value-of select="$second-txspan" />
									</xsl:element>
									<xsl:value-of select= "substring-after(., $second-txspan)" />

								</xsl:when>
							</xsl:choose>
						</xsl:element>
					</xsl:if>
				</xsl:for-each>
			</xsl:element>

			<!-- generate remedy-reference tags-->
			<xsl:for-each select="following::text:p[@text:style-name='SK-MM-Remedy-Reference']" >
				<xsl:if test="count(following::text:p[@text:style-name='SK-MM-Rem']) = $remaining-remedies">

					<xsl:if test="contains(.,'Complementary:')">						
						<xsl:element name="remedy-reference">
							<xsl:attribute name="type">
								<xsl:value-of select="'Complementary'" />								
							</xsl:attribute>

							<xsl:choose>
								<!-- check if Complementary immediately followed by Follows -->
								<xsl:when test="contains(substring-after(., 'Complementary'), 'Follows')">									
									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Follows'), 'Complementary:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<!-- check if Complementary immediately followed by Antidote -->
								<xsl:when test="contains(substring-after(., 'Complementary'), 'Antidote')">
									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Antidote'), 'Complementary:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<!-- check if Complementary immediately followed by Related -->
								<xsl:when test="contains(substring-after(., 'Complementary'), 'Related')">

									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Related'), 'Complementary:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<xsl:otherwise>

									<xsl:variable name="remedy-list" select="substring-after(., 'Complementary:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:otherwise>

							</xsl:choose>
						</xsl:element>
					</xsl:if>

					<xsl:if test="contains(.,'Follows:')">						
						<xsl:element name="remedy-reference">
							<xsl:attribute name="type">
								<xsl:value-of select="'Follows'" />
							</xsl:attribute>

							<xsl:choose>

								<xsl:when test="contains(substring-after(., 'Follows'), 'Antidote')">

									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Antidote'), 'Follows:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<xsl:when test="contains(substring-after(., 'Follows'), 'Related')">

									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Related'), 'Follows:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<xsl:otherwise>
									<xsl:variable name="remedy-list" select="substring-after(., 'Follows:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>

									</xsl:for-each>
								</xsl:otherwise>

							</xsl:choose>
						</xsl:element>
					</xsl:if>

					<xsl:if test="contains(.,'Antidote:')">						
						<xsl:element name="remedy-reference">
							<xsl:attribute name="type">
								<xsl:value-of select="'Antidote'" />
							</xsl:attribute>

							<xsl:choose>
								<xsl:when test="contains(substring-after(., 'Antidote'), 'Related')">
									<xsl:variable name="remedy-list" select="substring-after(substring-before(.,'Related'), 'Antidote:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>
									</xsl:for-each>
								</xsl:when>

								<xsl:otherwise>
									<xsl:variable name="remedy-list" select="substring-after(., 'Antidote:')" />

									<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

									<xsl:for-each select="$remedy-indv" >
										<xsl:call-template name="generate-remedy-tags">
											<xsl:with-param name="remedy-indv" select="." />
										</xsl:call-template>

									</xsl:for-each>
								</xsl:otherwise>
							</xsl:choose>

						</xsl:element>
					</xsl:if>

					<xsl:if test="contains(.,'Related:')">						
						<xsl:element name="remedy-reference">
							<xsl:attribute name="type">
								<xsl:value-of select="'Related'" />
							</xsl:attribute>

							<xsl:variable name="remedy-list" select="substring-after(., 'Related:')" />

							<xsl:variable name="remedy-indv" select="tokenize(normalize-space($remedy-list), '\.')" />

							<xsl:for-each select="$remedy-indv" >
								<xsl:call-template name="generate-remedy-tags">
									<xsl:with-param name="remedy-indv" select="." />
								</xsl:call-template>

							</xsl:for-each>
						</xsl:element>
					</xsl:if>

				</xsl:if>
			</xsl:for-each>

		</xsl:element>

	</xsl:template>


	<xsl:template name="generate-remedy-tags">
		<xsl:param name="remedy-indv" />
		<xsl:if test="not(normalize-space($remedy-indv)='')">
			<xsl:element name="remedy">
				<!--NEED TO FIX THIS IN FUTRE-->
				<xsl:attribute name="grade">
					<xsl:value-of select="1" />
				</xsl:attribute>
				<xsl:value-of select="$remedy-indv" />
			</xsl:element>
		</xsl:if>

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