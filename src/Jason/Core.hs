{-# LANGUAGE OverloadedStrings #-}

module Jason.Core
  (
    action
  , actionRow
  , actions
  , album
  , align
  , audioDuration
  , audioPause
  , audioPlay
  , audioPosition
  , audioRecord
  , audioSeek
  , audioStop
  , author
  , autocapitalize
  , autocorrect
  , back
  , background
  , badge
  , body
  , border
  , bottom
  , cacheReset
  , cacheSet
  , class_
  , close
  , color
  , colorDiabaled
  , components
  , contentType
  , convertCsv
  , convertRss
  , coord
  , cornerRadius
  , css
  , dataRow
  , dataType
  , data_
  , description
  , distance
  , distribution
  , domain
  , edit
  , error_
  , fileUrl
  , font
  , footer
  , foreground
  , geoGet
  , head
  , header
  , height
  , href
  , href_
  , icon
  , image
  , input
  , interval
  , items
  , jason
  , layers
  , left
  , load
  , mediaCamera
  , mediaPicker
  , mediaPlay
  , menu
  , method
  , move
  , muted
  , name
  , networkRequest
  , networkUpload
  , options
  , padding
  , pins
  , placeholder
  , placeholderColor
  , position
  , pull
  , quality
  , region
  , reload
  , render
  , repeats
  , resize
  , right
  , rotate
  , search
  , sections
  , secure
  , selected
  , sessionReset
  , sessionSet
  , set
  , show_
  , size
  , snapshot
  , spacing
  , spellcheck
  , style
  , styleRow
  , styles
  , success
  , tabs
  , template
  , templateRow
  , templates
  , text_
  , theme
  , timerStart
  , timerStop
  , title
  , top
  , transition
  , trigger
  , type_
  , url
  , utilAddressbook
  , utilAlert
  , utilBanner
  , utilDatepicker
  , utilPicker
  , utilShare
  , utilToast
  , value
  , view
  , width
  , zIndex
  ) where

import           Data.Text      (Text)
import           Jason.Internal
import           Prelude        hiding (head)

-- generate object action
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
action :: Jason -> Jason
action = parent "action"

-- generate ref actionRow
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
actionRow :: Text -> Jason -> Jason
actionRow = parent

-- generate object actions
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
actions :: Jason -> Jason
actions = parent "actions"

-- generate object album
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
album :: Jason -> Jason
album = parent "album"

-- generate object align
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
align :: Jason -> Jason
align = parent "align"

-- generate api audioDuration
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioDuration :: Jason -> Jason
audioDuration extra = leaf $ do
  type_ "$audio.duration"
  extra

-- generate api audioPause
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioPause :: Jason -> Jason
audioPause extra = leaf $ do
  type_ "$audio.pause"
  extra

-- generate api audioPlay
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioPlay :: Jason -> Jason
audioPlay extra = leaf $ do
  type_ "$audio.play"
  extra

-- generate api audioPosition
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioPosition :: Jason -> Jason
audioPosition extra = leaf $ do
  type_ "$audio.position"
  extra

-- generate api audioRecord
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioRecord :: Jason -> Jason
audioRecord extra = leaf $ do
  type_ "$audio.record"
  extra

-- generate api audioSeek
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioSeek :: Jason -> Jason
audioSeek extra = leaf $ do
  type_ "$audio.seek"
  extra

-- generate api audioStop
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
audioStop :: Jason -> Jason
audioStop extra = leaf $ do
  type_ "$audio.stop"
  extra

-- generate object author
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
author :: Jason -> Jason
author = parent "author"

-- generate object autocapitalize
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
autocapitalize :: Jason -> Jason
autocapitalize = parent "autocapitalize"

-- generate object autocorrect
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
autocorrect :: Jason -> Jason
autocorrect = parent "autocorrect"

-- generate api back
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
back :: Jason -> Jason
back extra = leaf $ do
  type_ "$back"
  extra

-- generate object background
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
background :: Jason -> Jason
background = parent "background"

-- generate object badge
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
badge :: Jason -> Jason
badge = parent "badge"

-- generate object body
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
body :: Jason -> Jason
body = parent "body"

-- generate object border
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
border :: Jason -> Jason
border = parent "border"

-- generate object bottom
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
bottom :: Jason -> Jason
bottom = parent "bottom"

-- generate api cacheReset
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
cacheReset :: Jason -> Jason
cacheReset extra = leaf $ do
  type_ "$cache.reset"
  extra

-- generate api cacheSet
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
cacheSet :: Jason -> Jason
cacheSet extra = leaf $ do
  type_ "$cache.set"
  extra

-- generate object class_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
class_ :: Jason -> Jason
class_ = parent "class"

-- generate api close
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
close :: Jason -> Jason
close extra = leaf $ do
  type_ "$close"
  extra

-- generate object color
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
color :: Jason -> Jason
color = parent "color"

-- generate object colorDiabaled
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
colorDiabaled :: Jason -> Jason
colorDiabaled = parent "color:disabled"

-- generate array components
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
components :: Jason -> Jason
components = arrayParent "components"

-- generate object contentType
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
contentType :: Jason -> Jason
contentType = parent "content_type"

-- generate api convertCsv
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
convertCsv :: Jason -> Jason
convertCsv extra = leaf $ do
  type_ "$convert.csv"
  extra

-- generate api convertRss
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
convertRss :: Jason -> Jason
convertRss extra = leaf $ do
  type_ "$convert.rss"
  extra

-- generate object coord
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
coord :: Jason -> Jason
coord = parent "coord"

-- generate object cornerRadius
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
cornerRadius :: Jason -> Jason
cornerRadius = parent "corner_radius"

-- generate object css
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
css :: Jason -> Jason
css = parent "css"

-- generate ref dataRow
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
dataRow :: Text -> Jason -> Jason
dataRow = parent

-- generate object dataType
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
dataType :: Jason -> Jason
dataType = parent "data_type"

-- generate object data_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
data_ :: Jason -> Jason
data_ = parent "data"

-- generate object description
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
description :: Jason -> Jason
description = parent "description"

-- generate object distance
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
distance :: Jason -> Jason
distance = parent "distance"

-- generate object distribution
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
distribution :: Jason -> Jason
distribution = parent "distribution"

-- generate object domain
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
domain :: Jason -> Jason
domain = parent "domain"

-- generate object edit
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
edit :: Jason -> Jason
edit = parent "edit"

-- generate object error_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
error_ :: Jason -> Jason
error_ = parent "error"

-- generate object fileUrl
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
fileUrl :: Jason -> Jason
fileUrl = parent "file_url"

-- generate object font
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
font :: Jason -> Jason
font = parent "font"

-- generate object footer
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
footer :: Jason -> Jason
footer = parent "footer"

-- generate object foreground
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
foreground :: Jason -> Jason
foreground = parent "$foreground"

-- generate api geoGet
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
geoGet :: Jason -> Jason
geoGet extra = leaf $ do
  type_ "$geo.get"
  extra

-- generate object head
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
head :: Jason -> Jason
head = parent "head"

-- generate object header
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
header :: Jason -> Jason
header = parent "header"

-- generate object height
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
height :: Jason -> Jason
height = parent "height"

-- generate object href
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
href :: Jason -> Jason
href = parent "href"

-- generate api href_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
href_ :: Jason -> Jason
href_ extra = leaf $ do
  type_ "$href"
  extra

-- generate object icon
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
icon :: Jason -> Jason
icon = parent "icon"

-- generate object image
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
image :: Jason -> Jason
image = parent "image"

-- generate object input
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
input :: Jason -> Jason
input = parent "input"

-- generate object interval
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
interval :: Jason -> Jason
interval = parent "interval"

-- generate array items
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
items :: Jason -> Jason
items = arrayParent "items"

-- generate object jason
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
jason :: Jason -> Jason
jason = parent "$jason"

-- generate array layers
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
layers :: Jason -> Jason
layers = arrayParent "layers"

-- generate object left
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
left :: Jason -> Jason
left = parent "left"

-- generate object load
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
load :: Jason -> Jason
load = parent "$load"

-- generate api mediaCamera
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
mediaCamera :: Jason -> Jason
mediaCamera extra = leaf $ do
  type_ "$media.camera"
  extra

-- generate api mediaPicker
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
mediaPicker :: Jason -> Jason
mediaPicker extra = leaf $ do
  type_ "$media.picker"
  extra

-- generate api mediaPlay
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
mediaPlay :: Jason -> Jason
mediaPlay extra = leaf $ do
  type_ "$media.play"
  extra

-- generate object menu
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
menu :: Jason -> Jason
menu = parent "menu"

-- generate object method
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
method :: Jason -> Jason
method = parent "method"

-- generate object move
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
move :: Jason -> Jason
move = parent "move"

-- generate object muted
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
muted :: Jason -> Jason
muted = parent "muted"

-- generate object name
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
name :: Jason -> Jason
name = parent "name"

-- generate api networkRequest
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
networkRequest :: Jason -> Jason
networkRequest extra = leaf $ do
  type_ "$network.request"
  extra

-- generate api networkUpload
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
networkUpload :: Jason -> Jason
networkUpload extra = leaf $ do
  type_ "$network.upload"
  extra

-- generate object options
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
options :: Jason -> Jason
options = parent "options"

-- generate object padding
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
padding :: Jason -> Jason
padding = parent "padding"

-- generate array pins
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
pins :: Jason -> Jason
pins = arrayParent "pins"

-- generate object placeholder
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
placeholder :: Jason -> Jason
placeholder = parent "placeholder"

-- generate object placeholderColor
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
placeholderColor :: Jason -> Jason
placeholderColor = parent "placeholder_color"

-- generate object position
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
position :: Jason -> Jason
position = parent "position"

-- generate object pull
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
pull :: Jason -> Jason
pull = parent "$pull"

-- generate object quality
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
quality :: Jason -> Jason
quality = parent "quality"

-- generate object region
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
region :: Jason -> Jason
region = parent "region"

-- generate api reload
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
reload :: Jason -> Jason
reload extra = leaf $ do
  type_ "$reload"
  extra

-- generate api render
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
render :: Jason -> Jason
render extra = leaf $ do
  type_ "$render"
  extra

-- generate object repeats
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
repeats :: Jason -> Jason
repeats = parent "repeats"

-- generate object resize
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
resize :: Jason -> Jason
resize = parent "resize"

-- generate object right
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
right :: Jason -> Jason
right = parent "right"

-- generate object rotate
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
rotate :: Jason -> Jason
rotate = parent "rotate"

-- generate object search
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
search :: Jason -> Jason
search = parent "search"

-- generate array sections
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
sections :: Jason -> Jason
sections = arrayParent "sections"

-- generate object secure
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
secure :: Jason -> Jason
secure = parent "secure"

-- generate object selected
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
selected :: Jason -> Jason
selected = parent "selected"

-- generate api sessionReset
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
sessionReset :: Jason -> Jason
sessionReset extra = leaf $ do
  type_ "$session.reset"
  extra

-- generate api sessionSet
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
sessionSet :: Jason -> Jason
sessionSet extra = leaf $ do
  type_ "$session.set"
  extra

-- generate api set
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
set :: Jason -> Jason
set extra = leaf $ do
  type_ "$set"
  extra

-- generate object show_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
show_ :: Jason -> Jason
show_ = parent "$show"

-- generate object size
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
size :: Jason -> Jason
size = parent "size"

-- generate api snapshot
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
snapshot :: Jason -> Jason
snapshot extra = leaf $ do
  type_ "$snapshot"
  extra

-- generate object spacing
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
spacing :: Jason -> Jason
spacing = parent "spacing"

-- generate object spellcheck
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
spellcheck :: Jason -> Jason
spellcheck = parent "spellcheck"

-- generate object style
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
style :: Jason -> Jason
style = parent "style"

-- generate ref styleRow
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
styleRow :: Text -> Jason -> Jason
styleRow = parent

-- generate object styles
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
styles :: Jason -> Jason
styles = parent "styles"

-- generate object success
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
success :: Jason -> Jason
success = parent "success"

-- generate object tabs
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
tabs :: Jason -> Jason
tabs = parent "tabs"

-- generate object template
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
template :: Jason -> Jason
template = parent "template"

-- generate ref templateRow
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
templateRow :: Text -> Jason -> Jason
templateRow = parent

-- generate object templates
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
templates :: Jason -> Jason
templates = parent "templates"

-- generate object text_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
text_ :: Jason -> Jason
text_ = parent "text"

-- generate object theme
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
theme :: Jason -> Jason
theme = parent "theme"

-- generate api timerStart
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
timerStart :: Jason -> Jason
timerStart extra = leaf $ do
  type_ "$timer.start"
  extra

-- generate api timerStop
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
timerStop :: Jason -> Jason
timerStop extra = leaf $ do
  type_ "$timer.stop"
  extra

-- generate object title
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
title :: Jason -> Jason
title = parent "title"

-- generate object top
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
top :: Jason -> Jason
top = parent "top"

-- generate object transition
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
transition :: Jason -> Jason
transition = parent "transition"

-- generate object trigger
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
trigger :: Jason -> Jason
trigger = parent "trigger"

-- generate object type_
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
type_ :: Jason -> Jason
type_ = parent "type"

-- generate object url
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
url :: Jason -> Jason
url = parent "url"

-- generate api utilAddressbook
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilAddressbook :: Jason -> Jason
utilAddressbook extra = leaf $ do
  type_ "$util.addressbook"
  extra

-- generate api utilAlert
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilAlert :: Jason -> Jason
utilAlert extra = leaf $ do
  type_ "$util.alert"
  extra

-- generate api utilBanner
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilBanner :: Jason -> Jason
utilBanner extra = leaf $ do
  type_ "$util.banner"
  extra

-- generate api utilDatepicker
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilDatepicker :: Jason -> Jason
utilDatepicker extra = leaf $ do
  type_ "$util.datepicker"
  extra

-- generate api utilPicker
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilPicker :: Jason -> Jason
utilPicker extra = leaf $ do
  type_ "$util.picker"
  extra

-- generate api utilShare
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilShare :: Jason -> Jason
utilShare extra = leaf $ do
  type_ "$util.share"
  extra

-- generate api utilToast
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
utilToast :: Jason -> Jason
utilToast extra = leaf $ do
  type_ "$util.toast"
  extra

-- generate object value
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
value :: Jason -> Jason
value = parent "value"

-- generate object view
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
view :: Jason -> Jason
view = parent "view"

-- generate object width
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
width :: Jason -> Jason
width = parent "width"

-- generate object zIndex
-- WARNING: this file is generate by generater.py, do not change.
--          edit elems.txt and run `python3 generater.py` to regenerate.
zIndex :: Jason -> Jason
zIndex = parent "z_index"