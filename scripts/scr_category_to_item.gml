///scr_category_to_item(category)

var cat = argument0;

var item = scr_shop_item(
    cat[category.name],
    cat[category.sprite],
    cat[category.subimage],
    cat
);

return item;
