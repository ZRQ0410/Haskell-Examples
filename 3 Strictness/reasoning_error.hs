-- REASONING ABOUT ERRORS

-- main = print((error "Left!") * (error "Right!"))
-- Left!
-- main = print((error "Right!") * (error "Left!"))
-- Right!
-- But * is actually commutative!


eInt :: Int
eInt = error "Hang on..."
eBool :: Bool
eBool = error "Hang on..."

stimes :: Int -> Int -> Int
stimes 0 n = 0
stimes m 0 = 0
stimes m n = m * n
-- stiems is actually non commutative

-- m stimes n is same as: m `stimes` n

-- strict in the first argument:
-- main = print(eInt `stimes` 0)  -- error
-- non-strict in the second argument:
-- main = print(0 `stimes` eInt)  -- 0


-- && ||: non commutative
bottom = bottom
-- main = print(False && bottom)  -- False
-- main = print(bottom && False)  -- run forever



-- A pair which contains error, is different from an error
strangePair = (eInt, eBool)
ePair = error "Hang on..."

-- strict in the shape of the argument: (x,y)
h :: (Int, Bool) -> Int
h (x,y) = 42

j :: (Int, Bool) -> Int
j p = 10

-- main = print(h strangePair)  -- 42
-- main = print(h ePair)  -- error
-- main = print(j strangePair)  -- 10
-- main = print(j ePair)  -- 10


-- fst, snd: first, second element of a pair
-- main = print(fst(1,eBool) == 1)  -- True
-- main = print(fst(eInt,1) == 1)  -- error


ePairb = (fst ePair, snd ePair)
main = print(h ePairb)  -- 42

