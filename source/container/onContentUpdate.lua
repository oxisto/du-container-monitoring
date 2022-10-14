system.print("hello?")

local list = container.getContent()

items = {}
for _,v in ipairs(list) do
    local quantity = math.floor(v.quantity*100)/100
    local item = system.getItem(v.id)
    local item_data = {
        id = v.id,
        name = item.displayNameWithSize,
        quantity = quantity,
        icon_path = item.iconPath
    }
    system.print(item.displayNameWithSize.." "..quantity)    
    table.insert(items, item_data)
end
