<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Terraform Shady Patterns" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1716813789385" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="debug a variable during plan" POSITION="bottom_or_right" ID="ID_1299769263" CREATED="1708002710105" MODIFIED="1708002723403">
<edge COLOR="#ff0000"/>
<node TEXT="resource &quot;aws_efs_file_system&quot; &quot;gitlab&quot; {&#xa;  kms_key_id = file(data.aws_kms_key.efs_kms.arn)&#xa;}" ID="ID_614785673" CREATED="1708002725719" MODIFIED="1708004805395"/>
<node TEXT="Interdit en production evidement, mais temporairement lors du developpement" ID="ID_933587954" CREATED="1716366412700" MODIFIED="1716366426877"/>
</node>
<node TEXT="conditionnal localstack testing" POSITION="bottom_or_right" ID="ID_652740358" CREATED="1708002765936" MODIFIED="1708002775409">
<edge COLOR="#0000ff"/>
<node TEXT="data &quot;aws_kms_key&quot; &quot;efs_kms&quot; {&#xa;  key_id = var.localstack_community ? &quot;alias/localstack/elasticfilesystem&quot; : &quot;alias/aws/elasticfilesystem&quot;&#xa;}" ID="ID_1281456861" CREATED="1708002777079" MODIFIED="1708004792770"/>
<node TEXT="Interdit d&apos;utiliser sur un &quot;vrai&quot; environnement car ça casse la règle" ID="ID_448779787" CREATED="1716366354723" MODIFIED="1716366386121"/>
<node TEXT="Toléré pour &quot;mocker&quot; les tests" ID="ID_267793245" CREATED="1716366387070" MODIFIED="1716366399438"/>
</node>
<node TEXT="dont create policy if no permissions" POSITION="top_or_left" ID="ID_807906810" CREATED="1708002887118" MODIFIED="1708002908146">
<edge COLOR="#00ff00"/>
<node TEXT="resource &quot;aws_iam_role&quot; &quot;runner_role&quot; {&#xa;  name = &quot;IAM.ROLE.${upper(var.env)}.EC2.GITLAB-RUNNER.${var.app}&quot;&#xa;&#xa;    # only add policies that has been created&#xa;    [for role_policy in aws_iam_policy.target_role_policy : role_policy.arn],&#xa;  )&#xa;}&#xa;&#xa;resource &quot;aws_iam_policy&quot; &quot;target_role_policy&quot; {&#xa;&#xa;  # Do not create policy if not needed&#xa;  count = length(var.target_role_arn_list) &gt; 0 ? 1 : 0&#xa;&#xa;  name   = &quot;IAM.POL.ASSUMEROLE.${var.app}&quot;&#xa;  policy = data.aws_iam_policy_document.target_role_policy_merged.json&#xa;}" ID="ID_15467707" CREATED="1708002938889" MODIFIED="1708004554818"/>
<node TEXT="cas un peu limite mais acceptable" ID="ID_120082580" CREATED="1716366225072" MODIFIED="1716366264042"/>
</node>
<node TEXT="variable with default value" POSITION="top_or_left" ID="ID_591052071" CREATED="1715853374453" MODIFIED="1715853386236">
<edge COLOR="#ff00ff"/>
<node TEXT="variable &quot;cognito_client_credentials_secret_override&quot; {&#xa;  description = &quot;Secret name to get Cognito info&quot;&#xa;  type        = string&#xa;&#xa;  default = &quot;cognito_client_secret&quot;&#xa;}&#xa;&#xa;data &quot;aws_secretsmanager_secret&quot; &quot;cognito-client-credentials&quot; {&#xa;  name = var.cognito_client_credentials_secret_override&#xa;}" ID="ID_1040473697" CREATED="1715853399649" MODIFIED="1715853686468"/>
<node TEXT="variable &quot;cognito_client_credentials_secret_override&quot; {&#xa;  description = &quot;Secret name to get Cognito info&quot;&#xa;  type        = string&#xa;&#xa;  default = null&#xa;}&#xa;&#xa;data &quot;aws_secretsmanager_secret&quot; &quot;cognito-client-credentials&quot; {&#xa;  name = var.cognito_client_credentials_secret_override != null ? var.cognito_client_credentials_secret_override : &quot;cognito_client_secret_${var.env}&quot;&#xa;}" ID="ID_1324226588" CREATED="1715853431982" MODIFIED="1715853638889"/>
<node TEXT="Pourquoi pas utiliser &quot;default=&quot; ?" ID="ID_152685996" CREATED="1716366271907" MODIFIED="1716366283496">
<node TEXT="car pas possible d&apos;utiliser des variables dans default=" ID="ID_1155959557" CREATED="1716366284900" MODIFIED="1716366340214"/>
</node>
</node>
<node TEXT="Démarre RDS sur backup ou vide" POSITION="top_or_left" ID="ID_1781929237" CREATED="1716275205962" MODIFIED="1716275221180">
<edge COLOR="#7c007c"/>
<node TEXT="data &quot;aws_db_snapshot&quot; &quot;last_backup&quot; {&#xa;  db_instance_identifier = local.db_instance_name&#xa;  most_recent            = true&#xa;&#xa;  # workaround to avoid the terraform plan to fail when no backup&#xa;  count = var.db_snapshot_source != &quot;&quot; ? 0 : 1&#xa;}" ID="ID_440570427" CREATED="1716275245333" MODIFIED="1716275247871"/>
<node TEXT="resource &quot;aws_db_instance&quot; &quot;kador2000-rds&quot; {&#xa;&#xa;  identifier = local.db_instance_name&#xa;&#xa;  username                    = &quot;Administrator&quot;&#xa;  manage_master_user_password = true&#xa;&#xa;  engine         = &quot;postgres&quot;&#xa;  engine_version = &quot;14.10&quot;&#xa;&#xa;    final_snapshot_identifier = &quot;${local.db_instance_name}-destroy-${formatdate(&quot;YYYYMMDDhhmm&quot;, timestamp())}&quot;&#xa;&#xa;  snapshot_identifier = var.db_snapshot_source != &quot;&quot; ? var.db_snapshot_source : data.aws_db_snapshot.last_backup[0].id&#xa;}" ID="ID_759005813" CREATED="1716275249627" MODIFIED="1716275282971"/>
</node>
<node TEXT="spliter dans plusieurs repertoire?" POSITION="bottom_or_right" ID="ID_1213501423" CREATED="1715853770916" MODIFIED="1716822861691">
<edge COLOR="#00007c"/>
<node TEXT="inversion de dépendance" ID="ID_433478094" CREATED="1715853784141" MODIFIED="1716275338013"/>
<node TEXT="Cycle de vie différent" POSITION="bottom_or_right" ID="ID_1742806953" CREATED="1716275346986" MODIFIED="1716275535642"/>
<node TEXT="Garder un environnement cohérent" POSITION="bottom_or_right" ID="ID_562012706" CREATED="1716823389669" MODIFIED="1716823396470"/>
<node TEXT="Data transverse" POSITION="bottom_or_right" ID="ID_571839382" CREATED="1716902075928" MODIFIED="1716902084962"/>
<node TEXT="data sans snapshot" POSITION="bottom_or_right" ID="ID_1349235925" CREATED="1716902085477" MODIFIED="1716902089612"/>
</node>
<node TEXT="Eviter la destruction de data" POSITION="bottom_or_right" ID="ID_1433684260" CREATED="1716275454765" MODIFIED="1716275524526">
<edge COLOR="#0000ff"/>
<node TEXT="terraform state rm" ID="ID_734298556" CREATED="1716275475537" MODIFIED="1716275479586"/>
<node TEXT="terraform import" ID="ID_516495006" CREATED="1716275479971" MODIFIED="1716275485265"/>
<node TEXT="ou splitter en plusieurs repertoire" ID="ID_410433859" CREATED="1716902094941" MODIFIED="1716902100958"/>
</node>
<node TEXT="Zip lambda at apply" FOLDED="true" POSITION="top_or_left" ID="ID_801515592" CREATED="1716813821545" MODIFIED="1716813830818">
<edge COLOR="#ff00ff"/>
<node TEXT="# create a temporary archive to compute the hash during plan stage&#xa;data &quot;archive_file&quot; &quot;http_call_for_signature&quot; {&#xa;  type        = &quot;zip&quot;&#xa;  output_path = &quot;/tmp/http_call.zip_for_signature&quot;&#xa;&#xa;  source_dir = &quot;${path.module}/../lambda/http_call/&quot;&#xa;}&#xa;&#xa;# create an archive that will be recreated during apply stage (gitlab CI limitation)&#xa;data &quot;archive_file&quot; &quot;http_call&quot; {&#xa;  type        = &quot;zip&quot;&#xa;  output_path = &quot;${path.root}/.terraform/tmp/http_call.zip&quot;&#xa;&#xa;  source_dir = &quot;${path.module}/../lambda/http_call/&quot;&#xa;&#xa;  # trick to force the ressource to be evaluated at apply stage&#xa;  excludes = [timestamp()]&#xa;}" ID="ID_136281390" CREATED="1716814302644" MODIFIED="1716814458240"/>
<node TEXT="resource &quot;aws_lambda_function&quot; &quot;batch&quot; {&#xa;  function_name = &quot;lambda&quot;&#xa;&#xa;  filename         = data.archive_file.http_call.output_path&#xa;  source_code_hash = data.archive_file.http_call_for_signature.output_base64sha256&#xa;&#xa;  role    = aws_iam_role.lambda.arn&#xa;  runtime = &quot;nodejs20.x&quot;&#xa;&#xa;}" ID="ID_861727899" CREATED="1716814302644" MODIFIED="1716814441405"/>
</node>
</node>
</map>
