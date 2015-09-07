-- day 2

import Graphics.Element exposing (Element, show)
import Keyboard
import Mouse
import Signal

main : Signal Element
-- main = Signal.map show Mouse.position
-- main = Signal.map show <| count Mouse.position
main = Signal.map show Keyboard.arrows

count : Signal a -> Signal Int
count = Signal.foldp (\x y -> y + 1) 0

