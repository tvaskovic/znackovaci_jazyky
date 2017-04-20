<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
	{
		<xsl:for-each select="settings">
		"settings": {			
			"game": {
				"version": "<xsl:value-of select="game/@version" />",
				"status": "<xsl:value-of select="game/@status" />",
			}
			<xsl:for-each select="user">
			"user":{
				"id":"<xsl:value-of select="user/@id"/>",
				"name":"<xsl:value-of select="user/name"/>",
				"surname":"<xsl:value-of select="user/surname"/>",
				"age":"<xsl:value-of select="user/age"/>",
				"location":{
					"country":"<xsl:value-of select="user/location/country"/>",
					"city":"<xsl:value-of select="user/location/city"/>",
				{	
				"nationality":"<xsl:value-of select="user/nationality"/>",
				"login":"{
					"visible"<xsl:value-of select="user/login/visible"/>",
					"login":"<xsl:value-of select="user/login"/>",
				},
				"password":"<xsl:value-of select="user/password"/>",
				"ip":"<xsl:value-of select="user/ip"/>",
			}</xsl:for-each>,
			"video":{
				"type":"<xsl:value-of select="video/@type"/>",
				"display_mode":"<xsl:value-of select="video/display_mode"/>",
				"terrain":"<xsl:value-of select="video/terrain"/>",
				"geometry":"<xsl:value-of select="video/geometry"/>",
				"texture":"<xsl:value-of select="video/texture"/>",
				"dynamic_shadows":"<xsl:value-of select="video/dynamic_shadows"/>",
				"dynamic_light":"<xsl:value-of select="video/dynamic_light"/>",
				"texture_filtering":"<xsl:value-of select="video/texture_filtering"/>",
			},
			"audio":{
				"sound_quality":"<xsl:value-of select="audio/sound_quality"/>",
				"game_volume":{
					"effects":"<xsl:value-of select="audio/game_volume/effects/@value"/>",
					"music":"<xsl:value-of select="audio/game_volume/music/@value"/>",
					"voice_over":"<xsl:value-of select="audio/game_volume/voice_over/@value"/>",
				}
				"language":"<xsl:value-of select="audio/language/"/>",
				"subtitles": {
					"enabled": "<xsl:value-of select="audio/subtitles/@enabled" />",
					"language": "<xsl:value-of select="audio/subtitles/@language" />"	
				}
			},
			"sys_date":{
				"day":"<xsl:value-of select="sys_date/day"/>",
				"mounth":"<xsl:value-of select="sys_date/mounth"/>",
				"year":"<xsl:value-of select="sys_date/year"/>",
			},
			"sys_time":{
				"zone":"<xsl:value-of select="sys_time/@zone"/>",
				"hour":"<xsl:value-of select="sys_time/hour"/>",
				"minutes":"<xsl:value-of select="sys_time/minutes"/>",
				"seconds":"<xsl:value-of select="sys_time/seconds"/>",
			},
			"periphery":{
				"mouse":{
					"buttons":{
						"change"{
						"left_to_right":"<xsl:value-of select="periphery/mouse/buttons/change/left_to_right/@enabled"/>",
						"scroll_up_to_down":"<xsl:value-of select="periphery/mouse/buttons/change/scroll_up_to_down/@enabled"/>",
						}
					}
					"axis": {
						"vertical": {
							"reverse": "<xsl:value-of select="controls/mouse/axis/vertical/reverse/@enabled"/>"
						},
						"horizontal": {
							"reverse": "<xsl:value-of select="controls/mouse/axis/horizontal/reverse/@enabled"/>"
						}
					}
				},
				"keyboard": {
					"shortcuts": {
						"m": "<xsl:value-of select="periphery/keyboard/shortcuts/m/@enabled" />",
						"n": "<xsl:value-of select="periphery/keyboard/shortcuts/n/@enabled" />",
						"k": "<xsl:value-of select="periphery/keyboard/shortcuts/k/@enabled" />",
						"p": "<xsl:value-of select="periphery/keyboard/shortcuts/p/@enabled" />",
					}
				}

			}
		}
		</xsl:for-each>
	}
	</xsl:template>
</xsl:stylesheet>			