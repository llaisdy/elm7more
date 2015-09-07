import Graphics.Element as GE
import Keyboard
import Mouse
import Signal

type KeyInput = KeyInput Bool Float

defaultKeyInput : KeyInput
defaultKeyInput = KeyInput False 0.0

keyInput : Signal KeyInput
keyInput = Signal.map2 KeyInput Keyboard.space (Signal.map toFloat Mouse.x)

main = Signal.map GE.show keyInput
