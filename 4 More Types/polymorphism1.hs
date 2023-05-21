-- PARAMETRIC POLYMORPHISM

-- for all types a, f returns true
f :: a -> Bool
f _ = True

main = print((f 7) && f True)


-- !error
-- g :: (b -> Bool) -> Bool
-- g h = (h 7) && (h True)

-- b: it should accept all type (Int Char Bool...)
-- but only got specific type Int (7) and Bool (True)


-- !error
-- p :: (a, a)
-- p = (True, True)

-- should accept all type like (Int, Int), (Bool, Bool)...
-- but only got specific pair (Bool, Bool)

