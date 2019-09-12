INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?><Langs>	<Lang>		<code>it</code>		<descr>Italiano</descr>	</Lang>	<Lang>		<code>en</code>		<descr>English</descr>		<default>true</default>	</Lang></Langs>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?><profiletypes>	<profiletype typecode="PFL" typedescr="Default user profile">		<attributes>			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">				<validations>					<required>true</required>				</validations>				<roles>					<role>userprofile:fullname</role>				</roles>			</attribute>			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">				<validations>					<required>true</required>					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>				</validations>				<roles>					<role>userprofile:email</role>				</roles>			</attribute>		</attributes>	</profiletype></profiletypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?><Params>	<Param name="urlStyle">classic</Param>	<Param name="hypertextEditor">none</Param>	<Param name="treeStyle_page">classic</Param>	<Param name="treeStyle_category">classic</Param>	<Param name="startLangFromBrowser">false</Param>	<Param name="firstTimeMessages">false</Param>	<Param name="baseUrl">request</Param>	<Param name="baseUrlContext">true</Param>	<Param name="useJsessionId">false</Param>	<Param name="gravatarIntegrationEnabled">false</Param>	<Param name="editEmptyFragmentEnabled">false</Param>	<Param name="argon2">true</Param>	<SpecialPages>		<Param name="notFoundPageCode">notfound</Param>		<Param name="homePageCode">login</Param>		<Param name="errorPageCode">errorpage</Param>		<Param name="loginPageCode">login</Param>	</SpecialPages>	<FeaturesOnDemand>		<Param name="groupsOnDemand">true</Param>		<Param name="categoriesOnDemand">true</Param>		<Param name="contentTypesOnDemand">true</Param>		<Param name="contentModelsOnDemand">true</Param>		<Param name="apisOnDemand">true</Param>		<Param name="resourceArchivesOnDemand">true</Param>	</FeaturesOnDemand>	<ExtendendPrivacyModule>		<Param name="extendedPrivacyModuleEnabled">false</Param>		<Param name="maxMonthsSinceLastAccess">6</Param>		<Param name="maxMonthsSinceLastPasswordChange">3</Param>	</ExtendendPrivacyModule>	<ExtraParams>		<Param name="page_preview_hash">Kilaa2kwT4rjZixEZmEg</Param>		<Param name="legacyPasswordsUpdated">true</Param>	</ExtraParams></Params>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>	<Dimension>		<id>1</id>		<dimx>90</dimx>		<dimy>90</dimy>	</Dimension>	<Dimension>		<id>2</id>		<dimx>130</dimx>		<dimy>130</dimy>	</Dimension>	<Dimension>		<id>3</id>		<dimx>150</dimx>		<dimy>150</dimy>	</Dimension></Dimensions>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?><contenttypes>	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="**NULL**" listmodel="10011" defaultmodel="10001">		<attributes>			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">				<validations>					<required>true</required>				</validations>				<roles>					<role>jacms:title</role>				</roles>			</attribute>			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />			<attribute name="Picture" attributetype="Image" />			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />			<list name="Links" attributetype="Monolist">				<nestedtype>					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />				</nestedtype>			</list>			<list name="Attaches" attributetype="Monolist">				<nestedtype>					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />				</nestedtype>			</list>		</attributes>	</contenttype></contenttypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpkiebpm_config','PAM service configuration','<?xml version="1.0" encoding="UTF-8"?><kiaBpmConfigFactory>   <kieBpmConfigeMap>      <entry>         <key>044c21efd4da4ee4984385f03191273c20190827T183715134</key>         <value>            <active>true</active>            <id>044c21efd4da4ee4984385f03191273c20190827T183715134</id>            <name>remote</name>            <username>pamAdmin</username>            <password>eNqUfe5bGoYC5JTml+9ihgKKlGof29M+pwaCwdQXL3Lr1qxZThEC5A==</password>            <hostname>rhpam7-install-kieserver-rhpam7-install-entando.apps.serv.run</hostname>            <schema>http</schema>            <port>80</port>            <webapp></webapp>            <debug>true</debug>         </value>      </entry>      <entry>         <key>b94dbf0f4ad84f5890043fcc133f9eac20190828T104231840</key>         <value>            <active>true</active>            <id>b94dbf0f4ad84f5890043fcc133f9eac20190828T104231840</id>            <name>PAM Server</name>            <username>admin</username>            <password>UNEcsXpuHCxRX/SOdV0RcbEzVnp4LOOhz6Hzmre/zEHsHLBL5nP1SA==</password>            <hostname>192.168.1.25</hostname>            <schema>http</schema>            <port>8080</port>            <webapp>kie-server</webapp>            <debug>true</debug>         </value>      </entry>   </kieBpmConfigeMap></kiaBpmConfigFactory>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<?xml version="1.0" encoding="UTF-8"?><datatypes>	<datatype typecode="AAA" typedescr="Mortgage_Process.MortgageApprovalProcess_mortgage-process_1.0.0-SNAPSHOT" viewpage="**NULL**" listmodel="2" defaultmodel="2">		<attributes>			<attribute name="application_downpayment" attributetype="Number" />			<attribute name="application_amortization" attributetype="Number" />			<attribute name="applicant_name" attributetype="Monotext" />			<attribute name="applicant_annualincome" attributetype="Number" />			<attribute name="applicant_ssn" attributetype="Number" />			<attribute name="property_age" attributetype="Number" />			<attribute name="property_address" attributetype="Monotext" />			<attribute name="property_locale" attributetype="Monotext" />			<attribute name="property_saleprice" attributetype="Number" />		</attributes>	</datatype></datatypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?><reports status="OK">	<creation>2019-08-27 18:36:01</creation>	<lastupdate>2019-08-28 14:26:59</lastupdate>	<components>		<component code="entandoCore" date="2019-08-27 18:36:01" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="OK">					<table name="sysconfig" />					<table name="categories" />					<table name="localstrings" />					<table name="pagemodels" />					<table name="pages" />					<table name="pages_metadata_online" />					<table name="pages_metadata_draft" />					<table name="widgetcatalog" />					<table name="guifragment" />					<table name="widgetconfig" />					<table name="widgetconfig_draft" />					<table name="uniquekeys" />				</datasource>				<datasource name="servDataSource" status="OK">					<table name="authgroups" />					<table name="authpermissions" />					<table name="authroles" />					<table name="authrolepermissions" />					<table name="authusers" />					<table name="authusergrouprole" />					<table name="api_oauth_consumers" />					<table name="api_oauth_tokens" />					<table name="apicatalog_methods" />					<table name="apicatalog_services" />					<table name="authuserprofiles" />					<table name="authuserprofilesearch" />					<table name="authuserprofileattrroles" />					<table name="actionlogrecords" />					<table name="actionlogrelations" />					<table name="actionloglikerecords" />					<table name="actionlogcommentrecords" />					<table name="dataobjectmodels" />					<table name="dataobjects" />					<table name="dataobjectrelations" />					<table name="dataobjectsearch" />					<table name="dataobjectattributeroles" />				</datasource>			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="jprestapi" date="2019-08-27 18:36:02" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-widget-login_form_inspinia" date="2019-08-27 18:36:02" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="jacms" date="2019-08-27 18:36:02" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="OK">					<table name="contentmodels" />					<table name="contents" />					<table name="resources" />					<table name="resourcerelations" />					<table name="contentrelations" />					<table name="contentsearch" />					<table name="contentattributeroles" />					<table name="workcontentrelations" />					<table name="workcontentsearch" />					<table name="workcontentattributeroles" />				</datasource>				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-content-generic" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-widget-language_choose_inspinia" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-misc-inspinia" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-page-inspinia" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-admin-console" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="OK">					<table name="authusershortcuts" />				</datasource>			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-portal-ui" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-app-view-cms-default" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="jpinfinispan" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-widget-navigation_bar_inspinia" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="entando-page-inspinia_BPM" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="jpkiebpm" date="2019-08-27 18:36:03" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="OK">					<table name="jpkiebpm_kieformoverride" />					<table name="jpkiebpm_widgetinfo" />				</datasource>			</schema>			<data status="OK">				<datasource name="portDataSource" status="RESTORE" />				<datasource name="servDataSource" status="RESTORE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>		<component code="jpldap" date="2019-08-28 14:26:59" status="OK">			<schema status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</schema>			<data status="OK">				<datasource name="portDataSource" status="NOT_AVAILABLE" />				<datasource name="servDataSource" status="NOT_AVAILABLE" />			</data>			<postProcess status="NOT_AVAILABLE" />		</component>	</components></reports>');
