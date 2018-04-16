--[[ *************************************************************************

 This entire file borrowed from ZenonSeth's scitest mod to allow independence

	**************************************************************************]]

function string.starts(String, Start)
   return string.sub(String,1,string.len(Start))==Start
end

function string.ends(String, End)
   return End=='' or string.sub(String,-string.len(End))==End
end

function saveToFile(fileName, table)
   local file = io.open(minetest.get_worldpath().."/"..fileName..".txt", "w")
   if file then
      file:write(minetest.serialize(table))
      file:close()
   end
end

function loadFromFile(fileName)
    local file = io.open(minetest.get_worldpath().."/"..fileName..".txt", "r")
    if file then
        local fileContent = file:read("*all")
        file:close()
        local deserTable = minetest.deserialize(fileContent)
        if type(deserTable) == "table" then
            return deserTable
        end
    else
--        print("file was null?")
    end
    return nil
end

function splitStringToTable(inputString, splitter)
    local ret = {};
    local tmp;

    if inputString == nil then return nil; end

    if (splitter == nil) then
        table.insert(ret, inputString);
        return ret;
    end

    -- print("inputString: " .. inputString .. ", splitter:" .. splitter);
    local found = true;
    while found do
        local s,e = inputString:find(splitter);
        if s == nil then
            table.insert(ret, inputString);
            found = false;
        else
            -- print("s/e=" .. s .. "/" .. e);
            tmp = inputString:sub(0,s - 1);
            table.insert(ret, tmp);
            inputString = inputString:sub(e + 1);
        end
    end
    -- for k,v in pairs(ret) do print(k,v) end
    return ret;
end


function tableLength(table)
    if (table == nil) then return 0; end
    local count = 0
    for _ in pairs(table) do count = count + 1 end
    return count
end

function clamp(value, min, max)
    if value == nil then return nil; end
    if max == nil and min == nil then return value; end
    if min == nil then return math.min(value, max); end
    if max == nil then return math.max(value, min); end
    return math.max(math.min(value, max), min);
end

function toNum(number, default)
    default = default or 0;
    return tonumber(number) or default;
end

function randomCheck(normalizedIntProb, minValue, maxValue)
    minValue = toNum(minValue, 1);
    maxValue = toNum(maxValue, 100);
    return math.random(1,100) <= toNum(normalizedIntProb);
end

function findValueInTable(value, table)
  if not table or not value then return nil end
  for k,v in pairs(table) do
    if v == value then return k end
  end
  return nil
end

function comma_value(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end


-- LUA double-ended-queue implementation, source: https://www.lua.org/pil/11.4.html

deque = {}

function deque.new ()
  return {first = 0, last = -1}
end

function deque.size(list)
  local size = list.last - list.first + 1
  if size > 0 then return size else return 0 end
end

function deque.pushleft (list, value)
  local first = list.first - 1
  list.first = first
  list[first] = value
end

function deque.pushright (list, value)
  local last = list.last + 1
  list.last = last
  list[last] = value
end

function deque.popleft (list)
  local first = list.first
  if first > list.last then error("list is empty") end
  local value = list[first]
  list[first] = nil        -- to allow garbage collection
  list.first = first + 1
  return value
end

function deque.popright (list)
  local last = list.last
  if list.first > last then error("list is empty") end
  local value = list[last]
  list[last] = nil         -- to allow garbage collection
  list.last = last - 1
  return value
end
