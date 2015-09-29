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

--- Combining Signals

-- page 104
-- clickPosition = Signal.sampleOn Mouse.clicks Mouse.position
-- main = Signal.map show clickPosition

-- page 105
-- div x y = show ((toFloat x) / (toFloat y))
-- main = Signal.map2 (div) Mouse.y Window.height

--- Maintaining State
-- page 106
-- main = Signal.map show (Signal.foldp (\dir presses -> presses + dir.x) 0 Keyboard.arrows)
