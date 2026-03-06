//create and open obj_inventory; create event 
///Testing, Testing, Testing. 

randomize();

inventory = new Inventory();

inventory.item_add(Wood, 3, spi_Item_Wood);
inventory.item_add(Wood, 2, spi_Item_Wood);
inventory.item_add(Stone, 10, spi_Item_Stone);
show_debug_message(inventory);

inventory.item_subtract(Wood, 2);
inventory.item_subtract(Stone, 10);

show_debug_message(inventory);

// UI information //

display_set_gui_size(1280, 720);
