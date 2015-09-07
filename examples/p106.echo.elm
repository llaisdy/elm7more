import Graphics.Element exposing (flow, down, Element, show)
import Graphics.Input.Field exposing (Content, noContent, field, defaultStyle)
import Signal exposing (map, Mailbox, mailbox, message)
import String

content :  Mailbox Content
content =  mailbox noContent

shout : String -> String
shout text = String.toUpper text

whisper : String -> String
whisper text = String.toLower text

echo : String -> String
echo text = (shout text) ++ " " ++ (whisper text)

scene : Content -> Element
scene fieldContent =
    flow down
    [ field defaultStyle (message content.address) "Speak" fieldContent
    , show (echo fieldContent.string)
    ]
   
main = map scene content.signal
