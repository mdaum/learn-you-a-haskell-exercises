{-
 - For this exercise, we are dealing with a type for colours of the rainbow
 - The typeclass is defined here, and note its English spelling.
 - For more information on how this is done, look ahead to:
 - http://learnyouahaskell.com/making-our-own-types-and-typeclasses
 -
 - Have a play with the Colour in ghci, try the succ and pred functions and so on.
 -}
data Colour = Red | Orange | Yellow | Green | Blue | Indigo | Violet
    deriving (Eq, Ord, Show, Bounded, Enum)   

{-
 - Again, you should be able to write these functions in one line, 
 - using the information from the chapter http://learnyouahaskell.com/types-and-typeclasses
 - and the chapter before
 -}

{-
 - The Colour typeclass is of type Ord
 - What is the "first" (or least) colour
 -}
firstColour :: Colour --firstColour rets a Colour
firstColour = minBound :: Colour --b/c Colour is Ord and Bounded, you can use minBound to get Least color

-- List the colours in reverse order
reverseColourOrder :: [Colour] --gives back list of Colours
reverseColourOrder = reverse[minBound :: Colour .. maxBound :: Colour] --call reverse on whole colour range

{-
 - Mix two colours together, to produce the average value of the two.
 - Example: paintMix Orange Green = Yellow
 - If necessary, favour the "higher" value when computing the average.
 - For example: paintMix Green Violet = Indigo
 - Hint: Integer division can be performed with the quot function: quot 7 2 = 3
 -}
paintMix :: Colour -> Colour -> Colour -- take in two colours output colour
paintMix c1 c2 = [c1 .. c2] !! quot (length [c1 .. c2]) 2 --grab the element out of Colour's data of index average of the two indexes of Colours passed in
