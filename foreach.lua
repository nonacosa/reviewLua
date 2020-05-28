-- while

-- while true do
    
-- end


a=10
while( a < 20 )
do
   print("a 的值为:", a)
   a = a+1
end

print("\n ===================")

-- for
-- for key, value in pairs(t) do
    
-- end

-- for i = 1, 10, 2 do
    
-- end

days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}  
for key, value in pairs(days) do
    print("a 的索引为:", key)
    print("a 的值为:", value)
end


-- repeat

repeat
    print("a 的值为:", a)
    a =  a + 1
until (a > 100)