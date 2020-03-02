-----------------------------------------------------------------------------
--                               conkyrc_seamod
-- Date    : 04/23/2016
-- Author  : SeaJey and Maxiwell
-- Conky   : >= 1.10 
-- License : Distributed under the terms of GNU GPL version 2 or later
-----------------------------------------------------------------------------

conky.config = {

	background = true,
	update_interval = 1,

	cpu_avg_samples = 2,
	net_avg_samples = 2,
	temperature_unit = 'celsius',

	double_buffer = true,
	no_buffers = true,
	text_buffer_size = 2048,

	gap_x = 80,
	gap_y = 70,
	minimum_width = 300, minimum_height = 900,
	maximum_width = 350,

	--own_window = false,
	own_window = true,
	--own_window_type = 'normal',
	own_window_type = 'override',
	own_window_transparent = true,
	own_window_argb_visual = true,
--	own_window_class = 'conky-semi',
	own_window_class = 'conky',
	own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',

	border_inner_margin = 0,
	border_outer_margin = 0,
	alignment = 'top_right',


	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	override_utf8_locale = true,
	use_xft = true,
	font = 'caviar dreams:size=11',
	xftalpha = 0.5,
	uppercase = false,

-- Defining colors
	default_color = '#FFFFFF',
-- Shades of Gray
	color1 = '#AAAAAA',
	color2 = '#AAAAAA',
	color3 = '#AAAAAA',
-- Orange
	-- color4 = '#EF5A29',
	color4 = '#AAAAAA',
-- Green
	color5 = '#AAAAAA',
	color6 = '#77B753',
-- Loading lua script for drawning rings
	lua_load = '~/.config/conky/seamod_rings.lua',
	lua_draw_hook_pre = 'main',

};

--${offset 15}${font Ubuntu:size=11:style=normal}${color1}${pre_exec lsb_release -d | cut -f 2} - $sysname $kernel
conky.text = [[
${font Ubuntu:size=11:style=bold}${color4}${time %H:%M:%S}
${voffset 5}
${font Ubuntu:size=11:style=bold}${color4}SYSTEM ${hr 2}
${offset 15}${font Ubuntu:size=11:style=normal}${color1}$sysname $kernel
${offset 15}${font Ubuntu:size=11:style=normal}${color1}Battery:  ${color3}${battery_bar 5,150 BAT0} ${color3}${battery_percent BAT0}%
${offset 15}${font Ubuntu:size=11:style=normal}${color1}Uptime: ${color3}$uptime

# Showing CPU Graph
${voffset 40}
${offset 15}${font Ubuntu:size=10:style=normal}${color1}${cpubar cpu0 10, 100}     ${top name 1}${alignr}${top cpu 1}%
${offset 15}${font Ubuntu:size=10:style=normal}${color1}${cpubar cpu1 10, 100}     ${top name 2}${alignr}${top cpu 2}%
${offset 15}${font Ubuntu:size=10:style=normal}${color1}${cpubar cpu2 10, 100}     ${top name 3}${alignr}${top cpu 3}%
${offset 15}${font Ubuntu:size=10:style=normal}${color1}${cpubar cpu3 10, 100}     ${top name 4}${alignr}${top cpu 4}%

${offset 15}${font Ubuntu:size=11:style=normal}${color4}${membar 5, 280}${alignr} ${memperc}%
#Showing memory part with TOP 5
${offset 15}${font Ubuntu:size=11:style=normal}${color4}${top_mem name 1}${alignr}${top_mem mem_res 1}
${offset 15}${font Ubuntu:size=11:style=normal}${color1}${top_mem name 2}${alignr}${top_mem mem_res 2}

${voffset 30}
${offset 15}${font Ubuntu:size=11:style=bold}${color6}Wireless
${voffset 10}             
${offset 15}${color1}${font ubuntu:size=10:style=bold}Up: ${alignr}${font Ubuntu:size=10:style=normal}$color2${upspeed wlp1s0} / ${totalup wlan0}
${offset 15}${upspeedgraph wlp1s0 40,320 4B1B0C FF5C2B 1280KiB -l}
${offset 15}${color1}${font Ubuntu:size=10:style=bold}Down: ${alignr}${font Ubuntu:size=10:style=normal}$color2${downspeed wlp1s0} / ${totaldown wlan0}
${offset 15}${downspeedgraph wlp1s0 40,320 324D23 77B753 1280KiB -l}

# ${color4}${hr 2}

]];
