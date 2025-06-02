sprite_index = toggle ? spr_button : spr_button_off
draw_self()
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_text(x + image_xscale * 16 / 2, y + image_yscale * 16 / 2, text)