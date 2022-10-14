local screen_data = {}

local max_vol = container.getMaxVolume()
if max_vol == 0 then
    max_vol = maxVolumeForHub
end

screen_data.max_vol = max_vol
screen_data.items_vol = container.getItemsVolume()
screen_data.request_time = math.ceil(container.updateContent())
screen_data.items = items

for _,s in pairs(screens) do
    s.setScriptInput(json.encode(screen_data))
end

        --local screen_data = {update_screen, max_vol, container.getItemsVolume(), request_time, nil}
        --local 
        --if update_screen then
--            for i,item in ipairs(items) do
--                screen_data[5] = {
--                    i,
--                    item[1],
--                    item[2],
--                    item[3],
--                    item[4]
--                }
            --end
        --else
        --    for _,s in pairs(screens) do
        --        s.setScriptInput(json.encode(screen_data))
        --    end
        --end