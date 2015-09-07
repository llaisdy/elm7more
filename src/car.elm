import Graphics.Collage exposing (collage, filled, rect, circle, moveY, move)
import Color exposing (black, red)

carBottom = filled black (rect 160 50)
carTop    = filled black (rect 100 60)
tire      = filled red (circle 24)

main = collage 300 300
       [ carBottom
         , carTop |> moveY 30
         , move (-40, -28) tire
         , tire |> move ( 40, -28) ]

