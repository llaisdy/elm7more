import Color
import Graphics.Collage exposing (collage, filled, rect, moveX, moveY)
import Mouse
import Signal
import Window

drawPaddle w h x =
  filled Color.black (rect 80 10)
    |> moveX (toFloat x - toFloat w / 2)
    |> moveY (toFloat h * -0.45)
                    
display (w, h) x  = collage w h
       [ drawPaddle w h x ]

main = Signal.map2 display Window.dimensions Mouse.x

