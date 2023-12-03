<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="DEVOPS CRAFT" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_497924796" CREATED="1693986223773" MODIFIED="1698142117611">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<hook NAME="MapStyle" zoom="0.75">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#afd3f7" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#afd3f7"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Problématiques" POSITION="top_or_left" ID="ID_1746999354" CREATED="1695394214039" MODIFIED="1698142117617">
<node TEXT="Des rôles pas toujours définis" POSITION="top_or_left" ID="ID_558474923" CREATED="1694435138475" MODIFIED="1698142117617">
<node TEXT="OPS" ID="ID_1716570220" CREATED="1694446801768" MODIFIED="1698142117619">
<node TEXT="TMA / infogérance / pilotage / niveau 1 / first line" ID="ID_1113515307" CREATED="1694446822510" MODIFIED="1698142117619"/>
<node TEXT="Administrateurs hardware/infrastructre" ID="ID_1433032625" CREATED="1694446826840" MODIFIED="1698142117620">
<node TEXT="network" ID="ID_182045570" CREATED="1694447126972" MODIFIED="1698142117620"/>
<node TEXT="serveurs" ID="ID_43156928" CREATED="1694447128646" MODIFIED="1698142117621"/>
</node>
<node TEXT="Ingénieurs de production" ID="ID_1265463138" CREATED="1694525906149" MODIFIED="1698142117621">
<node TEXT="ancêtre de DEVOPS" ID="ID_812192648" CREATED="1694525920338" MODIFIED="1698142117621"/>
</node>
<node TEXT="Administrateurs spécialisés" ID="ID_854954134" CREATED="1696323335684" MODIFIED="1698142117621">
<node TEXT="DBA" ID="ID_1484276287" CREATED="1696323349622" MODIFIED="1698142117621"/>
<node TEXT="Plateformes d&apos;échanges" ID="ID_1621917561" CREATED="1696323354717" MODIFIED="1698142117622"/>
</node>
</node>
<node TEXT="DEV" ID="ID_1506417098" CREATED="1694526970761" MODIFIED="1698142117622">
<node TEXT="Developpeurs fonctionnels" ID="ID_934261657" CREATED="1694526972483" MODIFIED="1698142117623"/>
<node TEXT="Developpeurs &quot;techniques&quot;" ID="ID_561774684" CREATED="1694526977629" MODIFIED="1698142117623"/>
<node TEXT="Architectes" ID="ID_1078463218" CREATED="1694526982664" MODIFIED="1698142117623"/>
<node TEXT="Product Owners" ID="ID_915213037" CREATED="1694527022951" MODIFIED="1698142117623"/>
</node>
</node>
<node TEXT="Des contraintes et objectifs différents" POSITION="top_or_left" ID="ID_988867288" CREATED="1694527190311" MODIFIED="1698142117624">
<node TEXT="OPS" ID="ID_831540623" CREATED="1694527204226" MODIFIED="1698142117625">
<node TEXT="SLA" ID="ID_60717967" CREATED="1694527269328" MODIFIED="1698142117626">
<node TEXT="stabilité" ID="ID_531631521" CREATED="1694527206274" MODIFIED="1698142117626"/>
<node TEXT="interventions sans impact" ID="ID_1046775857" CREATED="1694527292503" MODIFIED="1698142117626"/>
</node>
<node TEXT="Eviter la perte de données" ID="ID_1052915361" CREATED="1694527322214" MODIFIED="1698142117627">
<node TEXT="sauvegarde" ID="ID_456724254" CREATED="1694527835097" MODIFIED="1698142117627"/>
<node TEXT="migration des schema de données" ID="ID_545739668" CREATED="1694527840582" MODIFIED="1698142117628"/>
</node>
<node TEXT="science &quot;molle&quot;" ID="ID_1006222158" CREATED="1695641678321" MODIFIED="1698142117628">
<node TEXT="erreur hardware (ex: cables)" ID="ID_684093352" CREATED="1695641742923" MODIFIED="1698142117628"/>
<node TEXT="&quot;empilement&quot; de techno" ID="ID_1462098623" CREATED="1695641748408" MODIFIED="1698142117629"/>
<node TEXT="testu compliqué" ID="ID_492152199" CREATED="1695641799945" MODIFIED="1698142117629"/>
<node TEXT="dependent d&apos;autres équipes" ID="ID_1938794912" CREATED="1695641988000" MODIFIED="1698142117630"/>
</node>
<node TEXT="Planification complexe" ID="ID_142928121" CREATED="1696323154814" MODIFIED="1698142117630">
<node TEXT="urgences de production" ID="ID_356445206" CREATED="1696323163189" MODIFIED="1698142117630"/>
<node TEXT="Estimations avec risques" ID="ID_1415388252" CREATED="1696323186303" MODIFIED="1698142117631"/>
</node>
</node>
<node TEXT="DEV" ID="ID_862570633" CREATED="1694527225095" MODIFIED="1698142117631">
<node TEXT="changement permanent" ID="ID_1418669081" CREATED="1694527228168" MODIFIED="1698142117631"/>
<node TEXT="travailles sur des données de test" ID="ID_1835079568" CREATED="1694527383614" MODIFIED="1698142117632"/>
<node TEXT="science &quot;dure&quot;" ID="ID_731167169" CREATED="1695641703409" MODIFIED="1698142117632">
<node TEXT="fonctions &quot;pures&quot;" ID="ID_1018968089" CREATED="1695641758986" MODIFIED="1698142117632"/>
<node TEXT="testu toujours faisable" ID="ID_431838891" CREATED="1695641892432" MODIFIED="1698142117633">
<node TEXT="Inversion de dépedances" ID="ID_992329443" CREATED="1695641767226" MODIFIED="1698142117633"/>
</node>
</node>
<node TEXT="Planification plus prédictible" ID="ID_1521270843" CREATED="1696323132823" MODIFIED="1698142117633">
<node TEXT="Agile" ID="ID_1656140625" CREATED="1696323144308" MODIFIED="1698142117634">
<node TEXT="Scrum" ID="ID_1496823650" CREATED="1696323635106" MODIFIED="1698142117634"/>
<node TEXT="Kanban" ID="ID_72115147" CREATED="1696323610443" MODIFIED="1698142117634"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Culture DEVOPS" POSITION="bottom_or_right" ID="ID_987268995" CREATED="1694435592317" MODIFIED="1698142117635">
<node TEXT="Processus de delivery" ID="ID_44286557" CREATED="1695970394656" MODIFIED="1698142117635">
<node TEXT="Metier" ID="ID_1517800557" CREATED="1695970410848" MODIFIED="1698142117636"/>
<node TEXT="Product" ID="ID_893756657" CREATED="1695970458332" MODIFIED="1698142117637">
<node TEXT="BDD" ID="ID_856891042" CREATED="1695970449068" MODIFIED="1698142117637"/>
<node TEXT="Scrum" ID="ID_1487201868" CREATED="1695970508062" MODIFIED="1698142117638"/>
</node>
<node TEXT="Conception" ID="ID_1422076065" CREATED="1695970413671" MODIFIED="1698142117638">
<icon BUILTIN="idea"/>
<node TEXT="TDD" ID="ID_1267841768" CREATED="1695970452961" MODIFIED="1698142117638"/>
<node TEXT="DDD" ID="ID_316692147" CREATED="1695974413306" MODIFIED="1698142117639"/>
</node>
<node TEXT="Deploiement" ID="ID_1867294055" CREATED="1695973649973" MODIFIED="1698142117639">
<node TEXT="CI/CD" ID="ID_1528053790" CREATED="1695974421097" MODIFIED="1698142117639"/>
</node>
<node TEXT="Service" ID="ID_1671605097" CREATED="1695970788156" MODIFIED="1698142117640">
<node TEXT="SLA" ID="ID_714784007" CREATED="1695973623472" MODIFIED="1698142117640">
<node TEXT="monitoring" ID="ID_47834955" CREATED="1695974448353" MODIFIED="1698142117640"/>
</node>
<node TEXT="Gestion d&apos;incident" ID="ID_1253656015" CREATED="1695974437268" MODIFIED="1698142117641"/>
</node>
</node>
<node TEXT="les OPS sont un &quot;client&quot; des DEV" ID="ID_1157939241" CREATED="1696321412576" MODIFIED="1698142117641">
<node TEXT="les DEV sont aussi un &quot;client&quot; des OPS" ID="ID_711463578" CREATED="1696321427185" MODIFIED="1698142117642"/>
</node>
<node TEXT="Rejoint la notion d&apos;agilité" ID="ID_1519161470" CREATED="1694435644532" MODIFIED="1698142117642">
<node TEXT="Mettre en production plus souvent" ID="ID_1197492265" CREATED="1694438027381" MODIFIED="1698142117642">
<node TEXT="Automatisation des tests" ID="ID_751617163" CREATED="1694527976160" MODIFIED="1698142117643"/>
<node TEXT="Automatisation des deploiements" ID="ID_241824824" CREATED="1694527992388" MODIFIED="1698142117643"/>
</node>
<node TEXT="Detecter plus rapidement les incidents" ID="ID_1827884772" CREATED="1694438018373" MODIFIED="1698142117643">
<node TEXT="Fail Fast" ID="ID_1092980606" CREATED="1694440714764" MODIFIED="1698142117643"/>
</node>
</node>
<node TEXT="DevSecOps" ID="ID_441898462" CREATED="1694446758172" MODIFIED="1698142117644">
<node TEXT="historiquement la sécurité était coté plateforme" ID="ID_849199771" CREATED="1694446768014" MODIFIED="1698142117644"/>
<node TEXT="maintenant la sécurité concerne toute la chaine de production" ID="ID_40625998" CREATED="1694526105537" MODIFIED="1698142117647"/>
</node>
<node TEXT="Juge et parti" ID="ID_1412212544" CREATED="1696324528537" MODIFIED="1698142117650"/>
</node>
<node TEXT="Esprit Craft/Lean" POSITION="bottom_or_right" ID="ID_438540855" CREATED="1695375399436" MODIFIED="1698142117651">
<node TEXT="&quot;Organisation Hexagonale&quot;" ID="ID_1506618547" CREATED="1695375612058" MODIFIED="1698142117651">
<icon BUILTIN="idea"/>
<node TEXT="Application" ID="ID_1068113179" CREATED="1695375726562" MODIFIED="1698142117652">
<node TEXT="coeur fonctionnel" ID="ID_40376186" CREATED="1695375734418" MODIFIED="1698142117653"/>
</node>
<node TEXT="Infrastructure" ID="ID_335816755" CREATED="1695375738561" MODIFIED="1698142117653">
<node TEXT="interface avec un système physique" ID="ID_296022983" CREATED="1695375945811" MODIFIED="1698142117653"/>
</node>
<node TEXT="Inversion de dépendance" ID="ID_83905927" CREATED="1695376588916" MODIFIED="1698142117654">
<node TEXT="Est-ce que les OPS installe une APP dans leur INFRA" ID="ID_1519265629" CREATED="1696320756269" MODIFIED="1698142117655"/>
<node TEXT="Est-ce que les DEV installe une APP dans l&apos;infra des OPS" ID="ID_947546444" CREATED="1696320796123" MODIFIED="1698142117655"/>
</node>
<node TEXT="&quot;contrat&quot; d&apos;interface entre équipes" ID="ID_1442010214" CREATED="1695394501971" MODIFIED="1698142117655">
<node TEXT="fournir doc de configuration" ID="ID_555253141" CREATED="1696320832369" MODIFIED="1698142117656">
<node TEXT="transfert de cerveau à cerveau" ID="ID_1236439707" CREATED="1696320841878" MODIFIED="1698142117656"/>
<node TEXT="sensible à l&apos;erreur humaine" ID="ID_233146193" CREATED="1696320892331" MODIFIED="1698142117657"/>
</node>
<node TEXT="mettre au point un format de livraison" ID="ID_1724996795" CREATED="1696320869419" MODIFIED="1698142117657"/>
</node>
</node>
<node TEXT="Single Responsability" ID="ID_989460254" CREATED="1695382071763" MODIFIED="1698142117657">
<node TEXT="ou s&apos;arrête la frontière entre DEV et OPS ?" ID="ID_907406157" CREATED="1695376358757" MODIFIED="1698142117658"/>
<node TEXT="chaque équipe doit être en mesure de travailler au maximum en autonomie" ID="ID_952936826" CREATED="1695394468204" MODIFIED="1698142117660"/>
<node TEXT="exemples de problèmes" ID="ID_234663738" CREATED="1695376447614" MODIFIED="1698142117663">
<node TEXT="le ficher de configuration de production appartient au OPS" ID="ID_881632336" CREATED="1695376456079" MODIFIED="1698142117664">
<node TEXT="" ID="ID_285136153" CREATED="1695376545567" MODIFIED="1698142117665"/>
</node>
<node TEXT="des metriques sont rémontées aux client" ID="ID_1521063397" CREATED="1695376485238" MODIFIED="1698142117666">
<node TEXT="feature DEV qui utilise l&apos;infra OPS" ID="ID_363053845" CREATED="1695376522238" MODIFIED="1698142117668"/>
</node>
<node TEXT="Les scripts de monitoring OPS dépendent des modifications de l&apos;appli par les DEV" ID="ID_726975309" CREATED="1696322218477" MODIFIED="1698142117668"/>
</node>
</node>
<node TEXT="Connaître sa Supply Chain" ID="ID_963344904" CREATED="1695393858191" MODIFIED="1698142117669">
<node TEXT="aka &quot;Casser les silos&quot;" ID="ID_1005641662" CREATED="1695394095519" MODIFIED="1698142117670">
<node TEXT="Souvent source de confusion" ID="ID_718460875" CREATED="1695973557655" MODIFIED="1698142117672"/>
<node TEXT="ne veux pas dire merger les équipes!" ID="ID_301049671" CREATED="1695394448836" MODIFIED="1698142117672"/>
<node TEXT="Un supply chain = une flèche ?" ID="ID_130516690" CREATED="1696322304527" MODIFIED="1698142117673"/>
</node>
<node TEXT="Comprendre les roles et responsabilité de toute la chaine" ID="ID_94643427" CREATED="1695394015832" MODIFIED="1698142117673">
<node TEXT="client" ID="ID_387856892" CREATED="1695394030199" MODIFIED="1698142117676"/>
<node TEXT="metier" ID="ID_1544954695" CREATED="1695394035238" MODIFIED="1698142117677"/>
<node TEXT="PO" ID="ID_193489242" CREATED="1695394036853" MODIFIED="1698142117677"/>
<node TEXT="DEV" ID="ID_1473620447" CREATED="1695394039190" MODIFIED="1698142117677"/>
<node TEXT="INFRA" ID="ID_1311756875" CREATED="1695973593175" MODIFIED="1698142117678"/>
<node TEXT="OPS" ID="ID_1631425776" CREATED="1695394041351" MODIFIED="1698142117678"/>
</node>
</node>
</node>
<node TEXT="Toolbox dev" POSITION="top_or_left" ID="ID_306270318" CREATED="1694435605197" MODIFIED="1698142117678">
<node TEXT="Un langage commun : l&apos;informatique" ID="ID_406196419" CREATED="1694436338385" MODIFIED="1698142117679">
<node TEXT="les OPS sont des DEV" ID="ID_804294145" CREATED="1693986236165" MODIFIED="1698142117679">
<node TEXT="code" ID="ID_1435157940" CREATED="1693986247885" MODIFIED="1698142117680">
<node TEXT="IAC" ID="ID_1464160872" CREATED="1693986254802" MODIFIED="1698142117680"/>
<node TEXT="script déploiement" ID="ID_723747776" CREATED="1693986258853" MODIFIED="1698142117680"/>
<node TEXT="script inventaires" ID="ID_893736261" CREATED="1696322034488" MODIFIED="1698142117681"/>
<node TEXT="script monitoring" ID="ID_1116879271" CREATED="1694437007252" MODIFIED="1698142117681"/>
<node TEXT="script exploitation" ID="ID_1526622322" CREATED="1696322039823" MODIFIED="1698142117681"/>
</node>
<node TEXT="Tooling" ID="ID_984465069" CREATED="1695397965548" MODIFIED="1698142117682">
<node TEXT="GIT" ID="ID_703433689" CREATED="1695397979108" MODIFIED="1698142117682"/>
<node TEXT="VS Code" ID="ID_681529511" CREATED="1695397980589" MODIFIED="1698142117682">
<node TEXT="enfin un IDE qui s&apos;interesse aux langages des OPS" ID="ID_961584534" CREATED="1696322057823" MODIFIED="1698142117682"/>
</node>
<node TEXT="ShellCheck" ID="ID_1118413918" CREATED="1695397982836" MODIFIED="1698142117683"/>
<node TEXT="docker" ID="ID_1925605464" CREATED="1695398001548" MODIFIED="1698142117683"/>
</node>
<node TEXT="CRAFT" ID="ID_864260266" CREATED="1693986305451" MODIFIED="1698142117683">
<icon BUILTIN="idea"/>
<node TEXT="SRP" ID="ID_1537659002" CREATED="1694436582680" MODIFIED="1698142117684"/>
<node TEXT="SOLID" ID="ID_982801105" CREATED="1696322011063" MODIFIED="1698142117684"/>
<node TEXT="Testing" ID="ID_1181258241" CREATED="1693986251628" MODIFIED="1698142117685"/>
</node>
</node>
<node TEXT="les DEV sont des OPS" ID="ID_1676528488" CREATED="1693986262203" MODIFIED="1698142117685">
<node TEXT="infrastructure impact le dev" ID="ID_252056695" CREATED="1693986270107" MODIFIED="1698142117685">
<node TEXT="réseau" ID="ID_1178274674" CREATED="1693986431949" MODIFIED="1698142117685"/>
<node TEXT="système" ID="ID_937899356" CREATED="1693986433202" MODIFIED="1698142117686"/>
<node TEXT="droits" ID="ID_973433809" CREATED="1695398023764" MODIFIED="1698142117686"/>
<node TEXT="Performances" ID="ID_1119589056" CREATED="1693986438770" MODIFIED="1698142117686"/>
<node TEXT="Haute Dispo" ID="ID_1811723621" CREATED="1695398053956" MODIFIED="1698142117687">
<node TEXT="SLA" ID="ID_764488875" CREATED="1696323778602" MODIFIED="1698142117687"/>
</node>
</node>
<node TEXT="Environnements dev/test" ID="ID_828406254" CREATED="1693986339835" MODIFIED="1698142117687">
<node TEXT="environnements iso-prod" ID="ID_1799344997" CREATED="1693986356667" MODIFIED="1698142117687"/>
<node TEXT="versionnés" ID="ID_1370220282" CREATED="1693986359827" MODIFIED="1698142117688"/>
</node>
</node>
</node>
<node TEXT="Exemples d&apos;actions WIN-WIN" ID="ID_556964025" CREATED="1694527953884" MODIFIED="1698142117688">
<node TEXT="Mettre le code des OPS au même niveau que le code DEV" ID="ID_1712700673" CREATED="1694435625333" MODIFIED="1698142117689">
<node TEXT="égaliser le niveau de qualité " ID="ID_206696507" CREATED="1694436101197" MODIFIED="1698142117692"/>
<node TEXT="proposer des améliorations dans le code infra" ID="ID_1430813153" CREATED="1694436113321" MODIFIED="1698142117693"/>
<node TEXT="proposer des améliorations dans le code dev" ID="ID_551489060" CREATED="1694436404935" MODIFIED="1698142117693"/>
</node>
<node TEXT="Mettre à disposition les metriques et alarmes OPS aux DEV" ID="ID_764279162" CREATED="1694436019473" MODIFIED="1698142117693">
<node TEXT="améliorer les logs" ID="ID_1930720550" CREATED="1694444425159" MODIFIED="1698142117696"/>
<node TEXT="mettre en place des metriques" ID="ID_917378344" CREATED="1694444428832" MODIFIED="1698142117697">
<node TEXT="utiles aux OPS" ID="ID_184903363" CREATED="1694444449121" MODIFIED="1698142117697"/>
<node TEXT="utiles aux DEV" ID="ID_209915592" CREATED="1694444451760" MODIFIED="1698142117697">
<node TEXT="ma feature est-elle utilisées" ID="ID_580741414" CREATED="1694444462736" MODIFIED="1698142117697"/>
</node>
</node>
</node>
<node TEXT="Manager la plateforme de DEV par les OPS" ID="ID_581927167" CREATED="1694527417859" MODIFIED="1698142117698">
<node TEXT="environements à la demande" ID="ID_1643419175" CREATED="1695398114485" MODIFIED="1698142117698"/>
<node TEXT="test infra" ID="ID_1840372861" CREATED="1694527430231" MODIFIED="1698142117698"/>
<node TEXT="test fonctionnels" ID="ID_1832675820" CREATED="1694527432251" MODIFIED="1698142117698"/>
</node>
</node>
</node>
<node TEXT="Pattern d&apos;organisation connus" POSITION="bottom_or_right" ID="ID_348301489" CREATED="1694434732991" MODIFIED="1698142117698">
<node TEXT="DEVOPS" ID="ID_75237615" CREATED="1696321008083" MODIFIED="1698142117698">
<node TEXT="les équipes de DEV possèdes des compétences OPS" ID="ID_151862653" CREATED="1694436285103" MODIFIED="1698142117699"/>
<node TEXT="nécéssite un recrutemente très orienté" ID="ID_1631886949" CREATED="1696321033770" MODIFIED="1698142117701">
<node TEXT="&quot;full-full-stack&quot;" ID="ID_314550623" CREATED="1696321053555" MODIFIED="1698142117701"/>
</node>
</node>
<node TEXT="OPS embarqué" ID="ID_865613600" CREATED="1694436271759" MODIFIED="1698142117702">
<node TEXT="un OPS dans chaque équipe" ID="ID_372368178" CREATED="1696321723751" MODIFIED="1698142117702">
<node TEXT="participe à toutes les instances" ID="ID_1726452312" CREATED="1696321742606" MODIFIED="1698142117702"/>
</node>
<node TEXT="équipe DEVOPS &quot;transerve&quot;" ID="ID_411669508" CREATED="1694436295375" MODIFIED="1698142117702">
<node TEXT="a les défaut des équipes transverses" ID="ID_1680012392" CREATED="1696321708863" MODIFIED="1698142117702"/>
</node>
<node TEXT="PROS" ID="ID_1043984360" CREATED="1694436320016" MODIFIED="1698142117703">
<node TEXT="communication optimale OPS et DEV" ID="ID_1830229355" CREATED="1694440430704" MODIFIED="1698142117703"/>
</node>
<node TEXT="CONS" ID="ID_336567231" CREATED="1694436321768" MODIFIED="1698142117703">
<node TEXT="deviation des metehodes ou architectures communes" ID="ID_835574473" CREATED="1694440460459" MODIFIED="1698142117703"/>
</node>
</node>
<node TEXT="SRE" ID="ID_237245546" CREATED="1694434741527" MODIFIED="1698142117703">
<node TEXT="Implémentation par Google" ID="ID_1893469898" CREATED="1694435263980" MODIFIED="1698142117704">
<node TEXT="Ensuring the availability, efficiency and performance standards of applications" ID="ID_1725243278" CREATED="1694435294103" MODIFIED="1698142117705"/>
<node TEXT="Automatisation et Monitoring" ID="ID_1311893145" CREATED="1694435362438" MODIFIED="1698142117708"/>
</node>
<node TEXT="Equipe unique dédiée" ID="ID_1063000019" CREATED="1694527530215" MODIFIED="1698142117708">
<node TEXT="first line" ID="ID_165937751" CREATED="1694527535785" MODIFIED="1698142117709"/>
<node TEXT="hardware" ID="ID_720722055" CREATED="1694527550342" MODIFIED="1698142117710"/>
<node TEXT="integration" ID="ID_1162714853" CREATED="1694527553566" MODIFIED="1698142117710"/>
</node>
<node TEXT="SRE travaille mains dans la main avec le DEV" ID="ID_539840724" CREATED="1694435393094" MODIFIED="1698142117710"/>
<node TEXT="PROS" ID="ID_1817794720" CREATED="1694435743987" MODIFIED="1698142117711">
<node TEXT="les SRE ont une meilleure visibilité du système complet" ID="ID_505909171" CREATED="1694435720164" MODIFIED="1698142117711"/>
</node>
<node TEXT="CONS" ID="ID_873075685" CREATED="1694435746420" MODIFIED="1698142117713">
<node TEXT="oblige à remettre le OPS au debut de la chaine" ID="ID_1763872598" CREATED="1694435756550" MODIFIED="1698142117713"/>
</node>
</node>
<node TEXT="Team Topology" ID="ID_1149059198" CREATED="1694434743585" MODIFIED="1698142117713">
<node TEXT="Platform Team VS Stream aligned Team" ID="ID_89548715" CREATED="1695394182605" MODIFIED="1698142117714"/>
<node TEXT="SRE As A Service" ID="ID_1890970188" CREATED="1694440919653" MODIFIED="1698142117714">
<icon BUILTIN="help"/>
</node>
<node TEXT="Proposer les outils du SRE " ID="ID_374833569" CREATED="1694440885716" MODIFIED="1698142117714"/>
</node>
<node TEXT="Hybrides" ID="ID_1105849914" CREATED="1694440841143" MODIFIED="1698142117714">
<node TEXT="OPS embarqué + Platform Team" ID="ID_190256359" CREATED="1694440846547" MODIFIED="1698142117714">
<node TEXT="on sépare OPS appli //  OPS infra" ID="ID_310365796" CREATED="1696321896918" MODIFIED="1698142117715"/>
</node>
</node>
</node>
<node TEXT="BBL" POSITION="bottom_or_right" ID="ID_1911256075" CREATED="1696334039107" MODIFIED="1698142117715" LINK="BBL%20DEVOPS.mm"/>
<node TEXT="Ouvertures" POSITION="top_or_left" ID="ID_316483685" CREATED="1695380943310" MODIFIED="1698142117715">
<node TEXT="on éteint le principe aux autre métier de la supply chain" ID="ID_137824558" CREATED="1695380971301" MODIFIED="1698142117716"/>
<node TEXT="DevSecOps" ID="ID_715456632" CREATED="1695380950133" MODIFIED="1698142117718">
<node TEXT="Sécurité par l&apos;automatisation" ID="ID_44761958" CREATED="1695383246190" MODIFIED="1698142117718"/>
<node TEXT="Sécurité par feature du code" ID="ID_16488644" CREATED="1695383252694" MODIFIED="1698142117718">
<node TEXT="code écrit" ID="ID_614193382" CREATED="1694526130557" MODIFIED="1698142117719">
<node TEXT="OWASP" ID="ID_411675144" CREATED="1694526142862" MODIFIED="1698142117719"/>
<node TEXT="droits accès au code" ID="ID_522919075" CREATED="1694526169290" MODIFIED="1698142117719"/>
</node>
<node TEXT="code importé" ID="ID_886268255" CREATED="1694526134297" MODIFIED="1698142117719">
<node TEXT="CVE" ID="ID_1443772717" CREATED="1694526138173" MODIFIED="1698142117719"/>
<node TEXT="Suivi des mises à jours" ID="ID_226106893" CREATED="1694526165130" MODIFIED="1698142117720"/>
</node>
</node>
<node TEXT="Sécurité par feature de l&apos;infrastructure" ID="ID_1828021391" CREATED="1695383258854" MODIFIED="1698142117720"/>
</node>
<node TEXT="DevBizOps" ID="ID_1305732394" CREATED="1695380954133" MODIFIED="1698142117720">
<node TEXT="SLA" ID="ID_22494644" CREATED="1695381005813" MODIFIED="1698142117720"/>
<node TEXT="Metriques" ID="ID_129870636" CREATED="1695381023310" MODIFIED="1698142117721"/>
<node TEXT="amélioration des déploiement" ID="ID_19312552" CREATED="1695381028824" MODIFIED="1698142117721"/>
</node>
</node>
</node>
</map>
