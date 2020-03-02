require 'cairo'

function conky_main()
    if conky_window == nil then
		print("foo")
        return
    end
    local cs = cairo_xlib_surface_create(conky_window.display,
                                         conky_window.drawable,
                                         conky_window.visual,
                                         conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)
    local updates=tonumber(conky_parse('${updates}'))
	font_size=12
	text=conky_parse("${cpu cpu1} ${cpu cpu2}")
	xpos,ypos=200,200
	red,green,blue,alpha=1,1,1,1
	font_slant=CAIRO_FONT_SLANT_NORMAL
	font_face=CAIRO_FONT_WEIGHT_NORMAL
	cairo_set_font_size (cr, font_size)
	cairo_set_source_rgba (cr,red,green,blue,alpha)
	cairo_move_to (cr,xpos,ypos)
	cairo_show_text (cr,text)
	cairo_stroke (cr)
end
