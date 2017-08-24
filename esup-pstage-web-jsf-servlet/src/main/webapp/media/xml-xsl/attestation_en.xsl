<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="2.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format"
				xmlns:java="http://xml.apache.org/xalan/java" xmlns:str="http://exslt.org/strings"
				exclude-result-prefixes="java">

	<!-- definition du noeud convention -->
	<xsl:template match="convention-dTO">
		<fo:block>
			<!-- appel mise en page -->
			<xsl:call-template name="miseEnPage" />
		</fo:block>
	</xsl:template>

	<!-- structure du document -->
	<xsl:template name="miseEnPage">
		<fo:block>
			<xsl:call-template name="Attestation" />
		</fo:block>
	</xsl:template>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format"
				 xmlns:fox="http://xml.apache.org/fo/extensions">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all"
									   border="" page-height="29.699cm" page-width="20.999cm"
									   margin-right="1cm" margin-left="0.9cm" margin-bottom="0.4cm"
									   margin-top="0.794cm">
					<fo:region-body margin-bottom="0cm" />
					<fo:region-after display-align="after"
									 space-before="0cm" extent="0.55cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="all">
				<fo:static-content flow-name="xsl-footnote-separator">
					<fo:block>
						<fo:leader rule-thickness="0.5pt" rule-style="solid"
								   leader-length="100%" leader-pattern="rule" />
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:apply-templates select="convention-dTO" />
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="Attestation">
		<fo:block margin-right="1.5cm" margin-left="1.5cm"
				  margin-bottom="1.09cm" font-family="Times New Roman,serif"
				  padding-top="1cm">
			<fo:block text-align="center">
				<fo:inline hyphenate="false" language="fr" country="FR"
						   font-weight="bold" font-size="18pt">
					INTERNSHIP CERTIFICATE
				</fo:inline>
			</fo:block>
			<fo:block text-align="center">
				<fo:inline hyphenate="false" language="fr" country="FR"
						   font-size="10pt" font-style="italic">
					(ATTESTATION DE STAGE )
				</fo:inline>
			</fo:block>
			<fo:block text-align="center" padding-top="5pt">
				<fo:inline hyphenate="false" language="fr" country="FR"
						   font-weight="bold" font-size="16pt" font-style="italic">
					to be issued to the
					intern upon the conclusion of the internship
				</fo:inline>
			</fo:block>
			<fo:block text-align="center">
				<fo:inline hyphenate="false" language="fr" country="FR"
						   font-size="10pt" font-style="italic">
					(� remettre au
					stagiaire � l'issue du
					stage)
				</fo:inline>
			</fo:block>
			<fo:block padding-top="10pt">
				<fo:table border="0.018cm solid #000000" padding="3pt"
						  width="100%" table-layout="fixed">
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block>
									<fo:inline font-weight="bold" text-decoration="underline"
											   font-size="9pt">
										THE HOST ORGANIZATION
									</fo:inline>
									<fo:inline font-size="8pt" font-style="italic">
										(ORGANISME
										D'ACCUEIL)
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif">
									<fo:leader />
								</fo:block>
								<fo:block line-height="150%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										Name or company name
									</fo:inline>
									<fo:inline font-size="8pt" font-style="italic">
										(Nom ou
										d�nomination sociale)
									</fo:inline>
									<fo:inline font-weight="bold">
										:
									</fo:inline>
									<fo:inline>
										<xsl:value-of select="structure/raison-sociale" />
									</fo:inline>
								</fo:block>
								<fo:block line-height="150%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">Address
									</fo:inline>
									<fo:inline font-size="8pt" font-style="italic">(Adresse)
									</fo:inline>
									<fo:inline font-weight="bold"> :
									</fo:inline>
									<fo:inline>
										<xsl:value-of select="structure/batiment-residence" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="structure/voie" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="structure/code-postal" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="structure/commune" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="structure/pays/libelle" />
									</fo:inline>
								</fo:block>

								<fo:block line-height="150%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">Phone : </fo:inline>
									<xsl:value-of select="structure/telephone" />
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:block padding="0.3cm">
					<fo:inline font-size="9pt" font-weight="bold">
						Hereby certifies
						that
					</fo:inline>
					<fo:inline font-style="italic" font-size="8pt">
						(Certifie que)
					</fo:inline>
				</fo:block>
				<fo:table border="0.018cm solid #000000" padding="3pt"
						  width="100%" table-layout="fixed">
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block font-size="9pt">
									<fo:inline font-weight="bold" font-size="9pt"
											   text-decoration="underline">
										THE INTERN
									</fo:inline>
									<fo:inline font-size="8pt" font-style="italic">
										(LE
										STAGIAIRE)
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif">
									<fo:leader />
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										Last name
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Nom)
									</fo:inline>
									<fo:inline>
										:
									</fo:inline>
									<fo:inline>
										<xsl:value-of select="translate(etudiant/nom,$lowers,$uppers)" />
									</fo:inline>
									<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:text>
									<fo:inline font-weight="bold">
										First name
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Pr�nom)
									</fo:inline>
									<fo:inline>
										:
									</fo:inline>
									<fo:inline>
										<xsl:call-template name="start_upper">
											<xsl:with-param name="prenom">
												<xsl:value-of select="etudiant/prenom" />
											</xsl:with-param>
										</xsl:call-template>
									</fo:inline>
									<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:text>
									<fo:inline font-weight="bold">
										Sex :
									</fo:inline>
									<fo:inline>
										<xsl:value-of select="etudiant/code-sexe" />
									</fo:inline>

									<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:text>
									<fo:inline font-weight="bold">
										Date of Birth
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(N� le)
									</fo:inline>
									<fo:inline>
										:
									</fo:inline>
									<fo:inline>
										<xsl:value-of
												select="concat(substring(./etudiant/date-nais,9,2),'/',substring(./etudiant/date-nais,6,2), '/',substring(./etudiant/date-nais,1,4))" />
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										Address
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Adresse)
									</fo:inline>
									<fo:inline>
										:
									</fo:inline>
									<fo:inline>
										<xsl:value-of select="adresse-etudiant" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="code-postal-etudiant" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="ville-etudiant" />
										<xsl:text> </xsl:text>
										<xsl:value-of select="pays-etudiant" />
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline line-height="110%" hyphenate="false"
											   language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
											   padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											   padding-bottom="0.035cm">
										<fo:inline font-weight="bold">
											Phone :
										</fo:inline>
										<xsl:value-of select="tel-etudiant" />
									</fo:inline>
									<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:text>
									<fo:inline line-height="110%" hyphenate="false"
											   language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
											   padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											   padding-bottom="0.035cm">
										<fo:inline font-weight="bold">
											Portable :
										</fo:inline>
										<xsl:value-of select="tel-portable-etudiant" />
									</fo:inline>
									<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:text>
									<fo:inline line-height="110%" hyphenate="false"
											   language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
											   padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											   padding-bottom="0.035cm">
										<fo:inline font-weight="bold">
											email :
										</fo:inline>
										<xsl:value-of select="etudiant/mail" />
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold" font-size="11pt">
										A
										STUDENT OF
									</fo:inline>
									<fo:inline>
										(title of the training course or higher education
										curriculum being followed by the intern) :
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-style="italic" font-size="8pt">
										(ETUDIANT
										EN(intitul� de la formation ou du cursus de
										l'enseignement
										sup�rieur suivi par le ou la stagiaire ))
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<xsl:value-of select="etape/libelle" />
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border="1" margin-left="0.2cm"
										   padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold" font-size="11pt">
										AT
									</fo:inline>
									<fo:inline>
										(name of the higher education institution or
										training organization)
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(AU
										SEIN DE
										(nom de
										l'�tablissement d'enseignement sup�rieur ou
										de
										l'organisme de
										formation))
									</fo:inline>
									<fo:inline>
										:
									</fo:inline>
									<xsl:choose>
										<xsl:when test="nom-etab-ref">
											<xsl:value-of select="nom-etab-ref" />
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="document('config.xml')/config/nomUniversite" />
										</xsl:otherwise>
									</xsl:choose>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:block padding="0.3cm" margin-left="0.5cm">
					<fo:inline font-weight="bold" font-size="11pt">
						has completed an
						internship as part of his/her studies
					</fo:inline>
					<fo:inline font-style="italic" font-size="8pt">
						(a
						effectu� un
						stage pr�vu dans le cadre de ses �tudes)
					</fo:inline>
				</fo:block>
				<fo:table table-layout="fixed" width="100%"
						  border="0.018cm solid #000000">
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  margin-left="0.5cm" padding-top="0.3cm">
									<fo:inline font-size="9pt" font-weight="bold"
											   text-decoration="underline">
										INTERNSHIP DURATION
									</fo:inline>
									<fo:inline font-size="8pt" font-style="italic">
										(DUREE DU
										STAGE)
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										Internship start and end dates
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Dates de
										d�but et de fin
										du stage)
									</fo:inline>
									<fo:inline font-weight="bold">
										:
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.2cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										From
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Du)
									</fo:inline>
									<fo:inline>
										......................................
									</fo:inline>
									<xsl:text> </xsl:text>
									<fo:inline font-weight="bold">
										To
									</fo:inline>
									<fo:inline font-style="italic" font-size="8pt">
										(Au)
									</fo:inline>
									<xsl:text> </xsl:text>
									<fo:inline>
										......................................
									</fo:inline>
									<xsl:if test="@interruption-stage = 'true'">
										<xsl:text> </xsl:text>
										<fo:inline font-weight="bold" font-size="11pt">
											with
											interruption from
										</fo:inline>
										<fo:inline font-style="italic" font-size="8pt">(avec
											interruption du)
										</fo:inline>
										<xsl:text> </xsl:text>
										......................................
										<fo:inline font-weight="bold" font-size="11pt">
											to
										</fo:inline>
										<fo:inline font-style="italic" font-size="8pt">(au)
										</fo:inline>
										<xsl:text> </xsl:text>
										......................................
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding-top="0.2cm">
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="10pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold">
										Representing a total duration
										of
									</fo:inline>
									<fo:inline>
										..................... (Number of months / Number of
										Weeks) (cross out any inappropriate item)
									</fo:inline>
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
										  padding-bottom="0.035cm" font-style="italic">
									(Repr�sentant une dur�e
									totale de ...
									Nombre de Mois
									/ Nombre de Semaines (rayer la
									mention
									inutile))
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:if test="type-convention/code-ctrl != 'FC'">
							<fo:table-row>
								<fo:table-cell padding-top="0.2cm">
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
											  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											  padding-bottom="0.035cm" margin-left="0.5cm" text-align="justify">
										The
										total duration of the internship is assessed in consideration
										of the actual presence of the student
										within the organization,
										subject any authorized time off and
										leaves of absence granted,
										as provided
										under article L.124-13 of the education code (art.
										L.124-18 of
										the education code). Each period of
										at least 7 hours
										of presence, whether consecutive or otherwise,
										is
										considered
										equivalent to one day of
										internship work, and each period equal
										to at least 22 days of presence,
										consecutive or otherwise, is
										considered
										equivalent to one month.
									</fo:block>
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
											  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											  margin-left="0.5cm" text-align="justify" font-style="italic"
											  background-color="#E6E6E6">
										(La dur�e totale du stage
										est appr�ci�e en
										tenant compte de la
										pr�sence effective du
										stagiaire dans
										l'organisme, sous r�serve
										des droits � cong�s et
										autorisations
										d'absence pr�vus �
										l'article L.124-13 du code de
										l'�ducation
										(art. L.124-18 du code
										de l'�ducation). Chaque
										p�riode au moins
										�gale � 7 heures de
										pr�sence cons�cutives ou
										non est consid�r�e
										comme �quivalente �
										un jour de stage et
										chaque p�riode au moins
										�gale � 22 jours de
										pr�sence
										cons�cutifs
										ou non est consid�r�e
										comme �quivalente �
										un mois.)
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-top="0.2cm" border-top="0.018cm solid #000000">
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif">
										<fo:leader />
									</fo:block>
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
											  margin-left="0.5cm">
										<fo:inline font-weight="bold" text-decoration="underline">
											TOTAL
											AMOUNT OF STIPEND PAID TO THE INTERN :
										</fo:inline>
										<fo:inline font-size="8pt">
											(MONTANT DE LA GRATIFICATION
											VERS�E AU STAGIAIRE)
										</fo:inline>
									</fo:block>
									<!-- <fo:block line-height="110%" language="fr" country="FR" -->
									<!-- font-size="9pt" font-family="Times New Roman,serif" -->
									<!-- padding-top="0.2cm"> -->
									<!-- <fo:inline> -->
									<!-- Le stagiaire a per�u une gratification de stage pour un -->
									<!-- montant total de -->
									<!-- <xsl:variable name="nb-montant-gratification" -->
									<!-- select="montant-gratification" /> -->
									<!-- <xsl:choose> -->
									<!-- <xsl:when test='$nb-montant-gratification=""'> -->
									<!-- .................................. &#8364; -->
									<!-- </xsl:when> -->
									<!-- <xsl:otherwise> -->
									<!-- <fo:inline font-weight="bold"> -->
									<!-- <xsl:value-of select="montant-gratification" /> -->
									<!-- </fo:inline> -->
									<!-- euros -->
									<!-- <xsl:text> </xsl:text> -->
									<!-- <xsl:value-of select="unite-gratification/libelle" /> -->
									<!-- par mois -->
									<!-- </xsl:otherwise> -->
									<!-- </xsl:choose> -->
									<!-- </fo:inline> -->
									<!-- </fo:block> -->
									<fo:block line-height="110%" language="fr" country="FR"
											  font-size="10pt" font-family="Times New Roman,serif"
											  padding-top="0.2cm">
										The intern has received an internship stipend
										<fo:inline font-weight="bold"> totaling
										</fo:inline>
										..................................
										&#8364;
									</fo:block>
									<fo:block line-height="110%" language="fr" country="FR"
											  font-size="8pt" font-family="Times New Roman,serif" font-style="italic">
										(Le stagiaire a per�u une
										gratification de stage
										pour un
										montant
										total de)
									</fo:block>
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif">
										<fo:leader />
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:if>
					</fo:table-body>
				</fo:table>


				<fo:table table-layout="fixed" width="100%" margin-left="0cm"
						  padding-top="0.5cm">
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-column column-width="proportional-column-width(1)" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<xsl:if test="type-convention/code-ctrl != 'FC'">
									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
											  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											  padding-bottom="0.035cm" font-style="italic" text-align="justify">
										<fo:inline font-weight="bold">
											The course certificate
										</fo:inline>
										is an indispensable element, for consideration, subject to
										the
										payment of a fee, of the internship
										work in determining
										retirement benefits. Retirement pensions
										legislation (Law No.
										2014-40 of January 20, 2014)
										grants students
										<fo:inline font-weight="bold">
											whose internship work is
											allocated a stipend
										</fo:inline>
										the possibility of having such work validated
										<fo:inline font-weight="bold">within two calendar quarters,
										</fo:inline>
										subject to the
										<fo:inline font-weight="bold">payment of a fee.
										</fo:inline>
										The
										<fo:inline font-weight="bold">The application is to be made
											by the student within the two years
										</fo:inline>
										of the end of the internship, and
										<fo:inline font-weight="bold">requires the presentation of
											the internship certificate
										</fo:inline>
										indicating the total duration of the internship
										and the total
										amount of the
										stipends paid. Specific information
										regarding
										the
										fee to be paid and the
										procedure to follow may be requested from
										the
										Social Security administration
										(Social Security Code, art.
										L.351-17 -
										Education Code, art. D.124-9).
									</fo:block>

									<fo:block line-height="110%" hyphenate="false"
											  language="fr" country="FR" font-size="7pt" font-family="Times New Roman,serif"
											  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.035cm"
											  padding-bottom="0.035cm" font-style="italic" text-align="justify"
											  background-color="#E6E6E6">
										(L'attestation de stage est indispensable pour
										pouvoir, sous
										r�serve du versement d'une
										cotisation, faire
										prendre en compte
										le stage dans les droits �
										retraite. La
										l�gislation sur les
										retraites (loi n�2014-40 du 20
										Janvier 2014)
										ouvre aux �tudiants
										dont le stage a �t� gratifi�, la possibilit�
										de faire valider
										celui-ci dans la limite de deux trimestres,
										sous r�serve du
										versement d'une cotisation. La demande est �
										faire par
										l'�tudiant dans les deux ann�es
										suivant la fin du stage
										et sur
										pr�sentation obligatoire de l'attestation de stage
										mentionnant
										la dur�e totale du stage et le montant total de la
										gratification per�ue. Les informations
										pr�cises sur la
										cotisation � verser et sur la proc�dure � suivre
										sont � demander
										aupr�s de la S�curit� sociale (code de la s�curit� sociale art.
										L.351-17 - code de
										l'�ducation art.D.124-9).)
									</fo:block>
								</xsl:if>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.2cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold" font-size="11pt">
										MADE IN
									</fo:inline>
									<fo:inline font-size="8pt">
										(Fait �)
										...................................................................
									</fo:inline>
								</fo:block>

								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.1cm"
										  padding-bottom="0.035cm">
									<fo:inline font-weight="bold" font-size="11pt">
										THIS DAY THE
									</fo:inline>
									<fo:inline font-size="8pt">
										(Le)
										.........................................................
									</fo:inline>
								</fo:block>

								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="9pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.3cm"
										  padding-bottom="0.035cm">
									Name, position and signature of the
									representative of the host organization
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
										  padding-left="0.141cm" padding-right="0.141cm" padding-top="0.1cm"
										  padding-bottom="0.035cm" font-style="italic">
									(Nom, fonction et signature
									du repr�sentant de
									l'organisme
									d'accueil)
								</fo:block>

								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="8pt" font-family="Times New Roman,serif"
										  padding-top="90pt" text-align="center">
									Date of printing :
									<xsl:value-of
											select="java:format (java:java.text.SimpleDateFormat.new('dd-MM-yyyy kk:mm:ss'), java:java.util.Date.new())" />
								</fo:block>
								<fo:block line-height="110%" hyphenate="false"
										  language="fr" country="FR" font-size="7pt" font-family="Times New Roman,serif"
										  text-align="center" font-style="italic">
									(Date d'impression : ...)
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:block>
	</xsl:template>

	<!-- mises en majuscules -->
	<xsl:variable name='lowers'
				  select='"abcdefghijklmnopqrstuvwxyz�������������������������������"' />
	<xsl:variable name='uppers'
				  select='"ABCDEFGHIJKLMNOPQRSTUVWXYZ�������������������������������"' />
	<!-- majuscule pour 1er lettre de chaque terme (cas prenom compos�s) -->
	<xsl:template name="start_upper">
		<xsl:param name="prenom" />
		<xsl:variable name="temp-prenom">
			<xsl:call-template name="start_upper_bar">
				<xsl:with-param name="prenom">
					<xsl:value-of select="$prenom" />
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="clean-temp-prenom">
			<xsl:choose>
				<xsl:when
						test="substring($temp-prenom, string-length($temp-prenom),  string-length($temp-prenom) +1  ) = '-'">
					<xsl:value-of
							select='substring($temp-prenom,1, string-length($temp-prenom)-1 )' />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select='$temp-prenom' />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:for-each select='str:split($clean-temp-prenom, " ")'>
			<xsl:value-of
					select='concat(
          translate(substring(., 1, 1), $lowers, $uppers),
          substring(., 2),
          " "
         )' />
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="start_upper_bar">
		<xsl:param name="prenom" />
		<xsl:for-each select='str:split($prenom, "-")'>
			<xsl:value-of
					select='concat(
          translate(substring(., 1, 1), $lowers, $uppers),
          translate(substring(., 2),$uppers,$lowers),
          "-"
         )' />
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>