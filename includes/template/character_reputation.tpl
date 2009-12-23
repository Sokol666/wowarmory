<div class="data-container">
<div class="data-shadow-top">
<!---->
</div>
<div class="data-shadow-sides">
<div class="parch-int">
<div class="parch-bot">
<div id="replaceMain">
<tabInfo subTab="reputation" tab="character" tabGroup="character" tabUrl="{{$character_url_string}}"></tabInfo>
<link href="_css/character/reputation.css" rel="stylesheet" type="text/css">
<div id="dataElement">
<div class="parchment-top">
<div class="parchment-content">
<div class="list">
<link href="_css/character/global.css" rel="stylesheet" type="text/css">
<div class="tabs">
<div class="selected-tab" id="tab_character">
<a href="character-sheet.xml?r={{$realm}}&amp;n={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}">{{#armory_character_sheet_character_string#}}</a>
</div>
{{if $guildName}}
<div class="tab" id="tab_guild">
<a href="guild-info.xml?r={{$realm}}&amp;cn={{$name}}&amp;gn={{$guildName}}">{{#armory_character_sheet_guild_string#}}</a>
</div>
{{/if}}
<div class="clear"></div>
</div>
<div class="subTabs">
<div class="upperLeftCorner"></div>
<div class="upperRightCorner"></div>
<a class="" href="character-sheet.xml?r={{$realm}}&amp;n={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}" id="profile_subTab"><span>{{#armory_character_sheet_profile_tab#}}</span></a>
<a class="" href="character-talents.xml?r={{$realm}}&amp;cn={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}" id="talents_subTab"><span>{{#armory_character_sheet_talents_tab#}}</span></a>
<a class="selected-subTab" href="character-reputation.xml?r={{$realm}}&amp;cn={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}" id="reputation_subTab"><span>{{#armory_character_sheet_reputaion_tab#}}</span></a>
<a class="" href="character-achievements.xml?r={{$realm}}&amp;cn={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}" id="achievements_subTab"><span>{{#armory_character_sheet_achievements_tab#}}</span></a>
<a class="" href="character-statistics.xml?r={{$realm}}&amp;cn={{$name}}{{if $guildName}}&amp;gn={{$guildName}}{{/if}}" id="statistics_subTab"><span>{{#armory_character_sheet_statistic_tab#}}</span></a>
</div>
<div class="full-list">
<div class="info-pane">
<div class="profile-wrapper">
<div class="profile">
<script type="text/javascript">
	$(document).ready(function(){
		$('#repTableUngrouped').tablesorter({sortList: [[0,0]]});
	});
</script>
<script type="text/javascript">
		var charUrl = "{{$character_url_string}}";
		var bookmarkMaxedToolTip = "{{#armory_you_can_remember_string#}}";
		var bookmarkThisChar = "{{#armory_remember_this_character#}}";	
	</script>
<div class="faction-{{$faction_string_class}}">
<div class="profile-right" id="profileRight">
<a class="bmcLink" id="bmcLink"><span>{{#armory_login_to_remember_profile#}}</span><em></em></a>
</div>
<div class="profile-achieve">
<img src="images/portraits/{{$portrait_path}}" /><div class="points">
<a href="character-achievements.xml?r={{$realm}}&amp;cn={{$name}}">{{$pts}}</a>
</div>
<div>
<link href="atom/character.xml?r={{$realm}}&amp;n={{$name}}" rel="alternate" title="WoW Feed" type="application/atom+xml" />
</div>
<div id="leveltext" style="display:none;"></div>
<script type="text/javascript">
		var flashId="leveltext";
		if ((Browser.safari && flashId=="flashback") || (Browser.linux && flashId=="flashback")){//kill the searchbox flash for safari or linux
		   document.getElementById("searchFlash").innerHTML = '<div class="search-noflash"></div>';
		}else
			printFlash("leveltext", "images/{{$ArmoryConfig.locale}}/flash/level.swf", "transparent", "", "", "38", "38", "best", "images/{{$ArmoryConfig.locale}}/flash", "charLevel={{$level}}&pts={{$pts}}", "<div class=level-noflash>{{$level}}<em>{{$level}}</em></div>")
		
		</script>
</div>
<div id="charHeaderTxt_Dark">
<span class="prefix">{{$character_title_prefix}} </span>
<div class="charNameHeader">{{$name}}<span class="suffix">{{$character_title_suffix}}</span>
</div>
{{if $guildName}}<a class="charGuildName" href="guild-info.xml?r={{$realm}}&amp;gn={{$guildName}}&cn={{$name}}">{{$guildName}}</a>{{/if}}<span class="charLvl">{{#armory_character_sheet_level_string#}}&nbsp;{{$level}}&nbsp;{{$class_text}}&nbsp;{{$race_text}}</span>
</div>
<div id="charHeaderTxt_Light">
<span class="prefix">{{$character_title_prefix}} </span>
<div class="charNameHeader">{{$name}}<span class="suffix">{{$character_title_suffix}}</span>
</div>
{{if $guildName}}<a class="charGuildName" href="guild-info.xml?r={{$realm}}&amp;gn={{$guildName}}&cn={{$name}}">{{$guildName}}</a>{{/if}}<span class="charLvl">{{#armory_character_sheet_level_string#}}&nbsp;{{$level}}&nbsp;{{$class_text}}&nbsp;{{$race_text}}</span>
</div>
<div id="forumLinks">
<a class="smFrame" href="javascript:void(0)">
<div>{{$realm}}</div>
<img src="images/icon-header-realm.gif"></a>
</div>
</div>
<div class="reputation-cont">
<div class="groupSwitches">
<a class="selectedGroup" href="javascript:void(0)" onclick="$('#reputation-grouped').css('display','block');$('#reputation-ungrouped').css('display','none');$(this).parent().children().removeClass('selectedGroup');$(this).addClass('selectedGroup')"><span>По умолчанию</span></a><a href="javascript:void(0)" onclick="$('#reputation-grouped').css('display','none');$('#reputation-ungrouped').css('display','block');$(this).parent().children().removeClass('selectedGroup');$(this).addClass('selectedGroup')"><span>Список</span></a>
</div>
<div id="reputation-grouped">
<div class="tier_1">
<div class="tier_1_a">
<div class="tier_1_b">
<div class="tier_1_c">
<div class="tier_1_d">
<!-- Temporary hack: all factions in one case. Need to rewrite some code. // Shadez -->
<a class="tier_1_title" href="javascript:void(0)" onclick="$(this).parents('.tier_1').toggleClass('repCollapse')" onmouseout="$(this).parents('.tier_1_a').removeClass('repSelect1')" onmouseover="$(this).parents('.tier_1_a').addClass('repSelect1')">World of Warcraft</a>
<div class="tier_2">
<div class="tier_2_a">
<div class="tier_2_b">
<table border="0" cellpadding="0" cellspacing="0" class="rep-table">
<tbody>
{{foreach from=$characterReputation item=rep}}
<tr>
<td class="faction-name"><span>{{if $rep.descr}}<a class="staticTip" href="javascript:void(0);" onmouseover="setTipText('{{$rep.descr}}')">{{$rep.name}}</a></span>{{else}}<span style="display:none">{{$rep.name}}</span>{{/if}}</td><td class="rep{{$rep.standings.rank}} repBar"><span style="display:none">{{$rep.standing}}</span>
<div class="faction-bar">
<a class="rep-data">{{$rep.standings.rep}}/{{$rep.standings.max}}</a>
<div class="bar-color" style="width: {{$rep.standings.percent}}%"></div>
</div>
</td><td class="faction-level">
<div>
<span>{{$rep.standings.rank_name}}</span>
</div>
</td>
</tr>
{{/foreach}}
</tbody>
</table>
</div>
</div>
<div class="tier_2_shadow">
<!---->
</div>
</div>
</div>
</div>
</div>
</div>
<div class="tier_1_shadow">
<!---->
</div>
</div>
</div>
<div id="reputation-ungrouped" style="display:none">
<div class="tier_1_a">
<div class="tier_1_b">
<div class="tier_1_c">
<div class="tier_1_d">
<div class="tier_2_a">
<div class="tier_2_b">
<table border="0" cellpadding="0" cellspacing="0" class="rep-table" id="repTableUngrouped">
<thead>
<!--<tr>
<th><a class="selectedSorting" onclick="$(this).parent().parent().children().children().removeClass('selectedSorting');$(this).addClass('selectedSorting')">По имени</a></th>
<th><a onclick="$(this).parent().parent().children().children().removeClass('selectedSorting');$(this).addClass('selectedSorting')">По репутации</a></th><th></th>
</tr>-->
</thead>
<tbody>
{{foreach from=$repList item=rep}}
<tr>
<td class="faction-name">{{if $rep.descr}}<span><a class="staticTip" href="javascript:void(0);" onmouseover="setTipText('{{$rep.descr}}')">{{$rep.name}}</a></span>{{else}}<span>{{$rep.name}}</span>{{/if}}</td><td class="rep{{$rep.standings.rank}} repBar"><span style="display:none">{{$rep.standing}}</span>
<div class="faction-bar">
<a class="rep-data">{{$rep.standings.rep}}/{{$rep.standings.max}}</a>
<div class="bar-color" style="width: {{$rep.standings.percent}}%"></div>
</div>
</td><td class="faction-level">
<div>
<span>{{$rep.standings.rank_name}}</span>
</div>
</td>
</tr>
{{/foreach}}
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="clear">
<!---->
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="data-shadow-bot">
<!---->
</div>
</div>
<div class="page-bot"></div>
{{include file="faq_character_sheet.tpl"}}
{{include file="overall_right_block.tpl"}}
<script type="text/javascript">
    faqSwitch(currentFaq);
</script>
</div>
</div>
{{include file="overall_footer.tpl"}}