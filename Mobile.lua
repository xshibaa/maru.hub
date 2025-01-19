-- ฟังก์ชันเช็คแมพ
local function checkMap()
    local mapId = game.PlaceId  -- เก็บ ID ของแมพปัจจุบัน

    -- เช็คว่า ID ของแมพตรงกับหนึ่งในสาม ID ที่ถูกต้อง
    local validMapIds = {2753915549, 4442272183, 7449423635}  -- เก็บ ID ของแมพที่ถูกต้องในตาราง

    -- เช็คว่า mapId มีอยู่ใน validMapIds หรือไม่
    local isValidMap = false
    for _, id in ipairs(validMapIds) do
        if mapId == id then
            isValidMap = true
            break
        end
    end

    if isValidMap then
        -- รันสคริปต์สำหรับแมพที่ถูกต้อง
        print("แมพถูกต้อง")
        game.Players.LocalPlayer:Kick("ไอจนไอควาย")
    else
        -- รันสคริปต์สำหรับแมพที่ผิด
        print("แมพไม่ถูกต้อง")
        game.Players.LocalPlayer:Kick("ไอโง่ไอควาย")  -- ออกจากเกมถ้าแมพไม่ถูกต้อง
        -- ใส่สคริปต์ที่ต้องการสำหรับแมพที่ผิด
    end
end

-- เรียกใช้ฟังก์ชัน
checkMap()

