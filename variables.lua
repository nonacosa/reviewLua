-- Lua 变量有三种类型：全局变量、局部变量、表中的域。

-- Lua 中的变量全是全局变量，那怕是语句块或是函数里，除非用 local 显式声明为局部变量。局部变量的作用域为从声明位置开始到所在语句块结束。

-- 变量的默认值均为 nil。


a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5     
    b = b + 1      -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(b,c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6



-- 赋值是改变一个变量的值和改变表域的最基本的方法。



print("/n === === == == == = ===")
 
-- Lua 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。


a, b = 10, 2 + 10  

print(a,b)

-- 索引
-- 对 table 的索引使用方括号 []。Lua 也提供了 . 操作。


site = {}
site["key"] = "www.gitrue.com"
print(site["key"])

print(site.key)
