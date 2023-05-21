-- ALGEBRAIC DATATYPES

data SwitchSate = On | Off

isOn On = True
isOn Off = False

toggle On = Off
toggle Off = On

-- Error: Haskell doesn't know how to print this data
-- main = print(toggle On)

-- main = print(isOn(toggle On))  -- False


-- Constructor name: IntPair
-- Two types: Int Int (or could be Int Double etc)
data MyIntPair = IntPair Int Int

mySumPair (IntPair x y) = x + y
myFst (IntPair x _) = x

-- main = print(mySumPair(IntPair 10 11))  -- 21
-- main = print(myFst(IntPair 10 11))  -- 10


data BoolOrInt = Abool Bool | Anint Int

intval :: BoolOrInt -> Int
intval (Abool True) = 1
intval (Abool False) = 0
intval (Anint x) = x

-- main = print(intval(Anint 17))  -- 17


data MyPair a b = Pair a b

myFirst (Pair a b) = a

main = print(myFirst(Pair "Hi!" 10))


-- Maybe Int = Nothing | Just Int
-- means it may be an integer or nothing
-- we can use Maybe Int directly
