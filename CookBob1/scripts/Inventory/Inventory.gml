function Script1() constructor {
	_inventory_items = [];
	
	item_set = function(_name, _quantity, _sprite) {
		array_push(_inventory_items, {
			Name: _name,
			quantity: _quantity, 
			sprite: _sprite,
		});
	}

	item_find = function(_name) {
		for (var i = 0; i < array_length(_inventory_items); i++) {
			if(_name == _inventory_items[i]. name) {
				return i;
			}
		}
		return -1;
	}

	item_add = function(_name, _quantity, _sprite) {
		var index = item_find(_name);

		if(index >= 0) {
			_inventory_items[index]. quantity += _quantity;
		} else {
			item_set(_name, _quantity, _sprite);
		}
	}








	item_has = function(_name, _quantity) {
		var index = item_find(_name);

		if(index >= 0) {
			return _inventory_items[index].quantity >= _quantity;
		}
		return false;
	}
	item_subtract = function(_name, quantity) {
		var index = item_find(_name);
		
		if(index >= 0) {
			if(item_has(_name, _quantity)) {
				_inventory_items[index].quantity -= _quantity;

				if(_inventory_items[index].quantity <= 0) {
					item_remove(index);
				}
			}
		}
	}

	item_remove = function(_index) {
		array_delete(_inventory_items, _index, 1);
	} 

	toString = function() {
		return json_stringify(_inventory_items)
}



//Coding the user interface

inventory_columns = 9;
inventory_rows = 5;

ui_padding_x = 64;
ui_padding_y = 64;
ui_panel_left = 320;
ui_border_size = 8;
ui_inventory_padding = 48;
ui_inventory_box = 64;
ui_inventory_margin = 16;

}