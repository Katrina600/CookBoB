var_g_width = display_get_gui_width();
var_g_height = display_get_gui_height();

//shadow of the display of inventory// 
draw_set(c_black, 0.2);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) + ui_border_size,
	(g_height - ui_padding_y) + ui_border_size,
	false
);

//full rectangle of the display//
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x,
	ui_padding_y,
	(g_width - ui_padding_x),
	(g_height - ui_padding_y),
	false
);

//inner rectangle//
draw-set(color_background, 1 );
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) - ui_border_size,
	(g_height - ui_padding_y) - ui_border_size
	false
);

//draw horizontal line that splits the two panels//
draw_set(color_boarder, 1);
draw_rectangle(
	ui_padding_x + ui_panel_left,
	ui_padding_y + ui_border_size,
	ui_padding_x + ui_panel_left + ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
);

//font setup//
draw_set_font(fn_Ubuntu);
text_align(fa_left, fa_top);

//text shadow, Stats//
draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + (ui_border_size * 3) + 4,
	ui_padding_y + (ui_border_size * 4) + 4,
	“Stats”
);
draw_set(c_white, 1);
draw_text(
	ui_padding_x + (ui_border_size * 3),
	ui_padding_y + (ui_border_size * 4),
	“Stats”
);

//text shadow, inventory//
draw_set(c_black, 0.5);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin + 4,
	ui_padding_y + (ui_border_size * 4) + 4,
	“Inventory”
);
draw_set(c_white, 1);
draw_text(
	ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_margin,
	ui_padding_y + (ui_border_size * 4),
	“Inventory”
);
