<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="CraftOps" FOLDED="false" ID="ID_109169753" CREATED="1701076573748" MODIFIED="1702905179556">
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<hook NAME="MapStyle">
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
<stylenode LOCALIZED_TEXT="styles.flower" COLOR="#ffffff" BACKGROUND_COLOR="#255aba" STYLE="oval" TEXT_ALIGN="CENTER" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="22 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f9d71c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="CLOSE_DOTS" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm"/>
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
<node TEXT="Introduction" POSITION="bottom_or_right" ID="ID_1514553933" CREATED="1701076637661" MODIFIED="1702905179564">
<node TEXT="Musclez vos scripts d&apos;exploitation" ID="ID_129317637" CREATED="1701076657065" MODIFIED="1702905179564"/>
<node TEXT="augmenter la qualité de votre exploitation" ID="ID_1323911393" CREATED="1701076740314" MODIFIED="1702905179564"/>
</node>
<node TEXT="tactical patterns" POSITION="bottom_or_right" ID="ID_1834477559" CREATED="1701077949153" MODIFIED="1702905179564">
<node TEXT="immutable infrastructure" ID="ID_526418656" CREATED="1701077991353" MODIFIED="1702905179564">
<node TEXT="Docker" ID="ID_255941153" CREATED="1701078003492" MODIFIED="1702905179564"/>
<node TEXT="AWS AMI" ID="ID_1806122830" CREATED="1701078005356" MODIFIED="1702905179564"/>
<node TEXT="Golden Images" ID="ID_1620810948" CREATED="1701078013190" MODIFIED="1702905179568"/>
</node>
<node TEXT="dry &lt;&gt; coupling" ID="ID_1104157771" CREATED="1701078088225" MODIFIED="1702905179568">
<node TEXT="external lib dependencies" ID="ID_752882598" CREATED="1701080138123" MODIFIED="1702905179569"/>
<node TEXT="1 repository for all environnements" ID="ID_1781314694" CREATED="1701266761691" MODIFIED="1702905179570"/>
</node>
<node TEXT="upstream/downstream" ID="ID_1112465640" CREATED="1701078142127" MODIFIED="1702905179570"/>
<node TEXT="functionnal pattern" ID="ID_628269489" CREATED="1701078573775" MODIFIED="1702905179572">
<node TEXT="indempotence vs orchestration" ID="ID_1774061660" CREATED="1701078598386" MODIFIED="1702905179572">
<node TEXT="declaratif vs impératif" ID="ID_1990382648" CREATED="1701245445519" MODIFIED="1702905179572"/>
<node TEXT="GitOps" ID="ID_1705248299" CREATED="1701267425434" MODIFIED="1702905179572"/>
</node>
<node TEXT="&quot;pure&quot; infra modules" ID="ID_366944963" CREATED="1701078605065" MODIFIED="1702905179572"/>
</node>
</node>
<node TEXT="Script like a dev" POSITION="top_or_left" ID="ID_859827031" CREATED="1701078714849" MODIFIED="1702905179573">
<node TEXT="Terraform" ID="ID_25431537" CREATED="1701076765297" MODIFIED="1702905179573">
<node TEXT="devcontainer" ID="ID_1439176669" CREATED="1701077022253" MODIFIED="1702905179573"/>
<node TEXT="testing" ID="ID_1706187812" CREATED="1701077063791" MODIFIED="1702905179574"/>
</node>
<node TEXT="Ansible" ID="ID_1914831174" CREATED="1701077074782" MODIFIED="1702905179574">
<node TEXT="tooling" ID="ID_1364962625" CREATED="1701077078503" MODIFIED="1702905179574">
<node TEXT="devcontainer" ID="ID_930967180" CREATED="1701080828968" MODIFIED="1702905179574"/>
<node TEXT="bats" ID="ID_1143463437" CREATED="1701080831776" MODIFIED="1702905179574"/>
<node TEXT="ansible-lint" ID="ID_474302302" CREATED="1701080836107" MODIFIED="1702905179574"/>
<node TEXT="mock golden image" ID="ID_1194914647" CREATED="1701080847865" MODIFIED="1702905179574"/>
</node>
<node TEXT="language" ID="ID_1684557586" CREATED="1701080277019" MODIFIED="1702905179575">
<node TEXT="everything is global" ID="ID_120265462" CREATED="1701080381911" MODIFIED="1702905179575"/>
<node TEXT="indempotent commands" ID="ID_1123231753" CREATED="1701080390254" MODIFIED="1702905179575"/>
<node TEXT="JSON stdin autoparsing" ID="ID_1050961444" CREATED="1701080300905" MODIFIED="1702905179575"/>
<node TEXT="master jinja streams" ID="ID_1857995442" CREATED="1701080282560" MODIFIED="1702905179576"/>
<node TEXT="modules instead of jinja ?" ID="ID_1772486057" CREATED="1701080458658" MODIFIED="1702905179576"/>
<node TEXT="playbooks are code" ID="ID_1313921630" CREATED="1701080900312" MODIFIED="1702905179576"/>
<node TEXT="argument_specs" ID="ID_138506286" CREATED="1701088479307" MODIFIED="1702905179576"/>
</node>
<node TEXT="testing" ID="ID_499665837" CREATED="1701077081890" MODIFIED="1702905179576">
<node TEXT="unit tests" ID="ID_1285581449" CREATED="1701080672253" MODIFIED="1702905179576">
<node TEXT="manual fixtures" ID="ID_1013055887" CREATED="1701080199770" MODIFIED="1702905179576"/>
<node TEXT="module assert" ID="ID_1484427911" CREATED="1701080191614" MODIFIED="1702905179577"/>
</node>
<node TEXT="integration tests" ID="ID_2403122" CREATED="1701080700657" MODIFIED="1702905179577">
<node TEXT="molecule" ID="ID_1741895627" CREATED="1701080713756" MODIFIED="1702905179577"/>
</node>
</node>
</node>
<node TEXT="Shell" ID="ID_301052852" CREATED="1701077085455" MODIFIED="1702905179577">
<node TEXT="tooling" ID="ID_861987262" CREATED="1701077088764" MODIFIED="1702905179577"/>
<node TEXT="language" ID="ID_1676529281" CREATED="1701089581334" MODIFIED="1702905179577"/>
<node TEXT="testing" ID="ID_1296216963" CREATED="1701077092220" MODIFIED="1702905179577"/>
<node TEXT="CI" ID="ID_1968941242" CREATED="1701077094007" MODIFIED="1702905179577"/>
</node>
</node>
<node TEXT="Kata" POSITION="top_or_left" ID="ID_756113993" CREATED="1701079204483" MODIFIED="1702905179577">
<node TEXT="Ansible " ID="ID_92066459" CREATED="1701079212117" MODIFIED="1702905179578">
<node TEXT="refactorer un rôle qui a des effets de bords" ID="ID_1545031484" CREATED="1701079611512" MODIFIED="1702905179578"/>
<node TEXT="refactorer un role qui melange indempotence et orcherstration" ID="ID_986346860" CREATED="1701079672652" MODIFIED="1702905179580"/>
</node>
</node>
</node>
</map>
