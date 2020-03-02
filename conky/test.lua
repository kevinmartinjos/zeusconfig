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
--  own_window_class = 'conky-semi',
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

    lua_load = '~/.config/conky/script.lua',
    lua_draw_hook_pre = 'main',

};
conky.text = [[]]
