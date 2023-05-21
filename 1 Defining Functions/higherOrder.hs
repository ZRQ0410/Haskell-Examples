
-- Function with 2 args
addConst n m = n + m
-- Take a number 3 and return addConst
addThree = addConst 3 -- addConst 3 m = 3 + m


-- \m: take a value m
-- -> return a function n + m
addConstB n = \m -> n + m

-- Take n and return (\m -> n + m)
-- Take m and return (n + m)
addConstC = \n -> (\m -> n + m)

-- main = print (addConstB 3 7)  -- 10


-- Take a function as input, do f 3 times
thriceFromZero f = f(f(f(0)))

-- main = print (thriceFromZero(\n -> 2*n + 1))  -- 7


-- Take n and return n
-- The output n must be the most recently defined n
-- Hence return value of \n
h n = (\n -> n)

-- main = print (h 1 2)  -- 2


repFromZero 0 f = 0
repFromZero n f = f(repFromZero (n-1) f)

main = print (repFromZero 3 (\x -> x+1))  -- 3
-- f3 = ff2 = fff1 = ffff0
-- 3  <=  2  <=  1  <=  0

