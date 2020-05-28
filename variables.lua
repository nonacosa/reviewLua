print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string

-- string
-- variables.lua:1
-- number
-- variables.lua:2
-- function
-- variables.lua:3
-- function
-- variables.lua:4
-- boolean
-- variables.lua:5
-- nil
-- variables.lua:6
-- string


tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
 
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- 1 - val3
-- variables.lua:12
-- key1 - val1
-- variables.lua:12
-- key2 - val2
-- variables.lua:12
-- 1 - val3
-- variables.lua:17
-- key2 - val2


-- Lua 默认只有一种 number 类型 -- double（双精度）类型（默认类型可以修改 luaconf.h 里的定义），以下几种写法都被看作是 number 类型

print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))



html = [[
<html>
<head></head>
<body>
    <a href="http://www.gitrue.com/">原子蛋</a>
</body>
</html>
]]

print(html)



print("\n============")



-- 创建一个空的 table
local tbl1 = {}
 
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}

-- Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
-- table_test.lua 脚本文件
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

print("\n============")

-- 不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。

-- table_test2.lua 脚本文件
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end


print("\n============")

-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])



-- 在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里:

-- 递归函数
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

print("\n============")

-- function 可以以匿名函数（anonymous function）的方式通过参数传递:

function testFun(tab,fun)
    for k ,v in pairs(tab) do
            print(fun(k,v));
    end
end


tab={key1="val1",key2="val2"};
testFun(tab,
function(key,val)--匿名函数
    return key.."="..val;
end
);