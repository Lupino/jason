{-# LANGUAGE OverloadedStrings #-}

module Jason.Core
  (
    action
  , actionRow
  , actions
  , album
  , align
  , author
  , autocapitalize
  , autocorrect
  , background
  , badge
  , body
  , border
  , bottom
  , class_
  , color
  , colorDiabaled
  , components
  , contentType
  , coord
  , cornerRadius
  , css
  , dataRow
  , dataType
  , data_
  , description
  , distance
  , domain
  , edit
  , error_
  , fileUrl
  , font
  , footer
  , foreground
  , head
  , header
  , height
  , href
  , icon
  , image
  , input
  , interval
  , items
  , jason
  , layers
  , left
  , load
  , menu
  , method
  , move
  , muted
  , name
  , options
  , padding
  , pins
  , placeholder
  , placeholderColor
  , position
  , pull
  , quality
  , region
  , repeats
  , resize
  , right
  , rotate
  , search
  , sections
  , secure
  , selected
  , show_
  , size
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
  , title
  , top
  , transition
  , trigger
  , type_
  , url
  , value
  , view
  , width
  , zIndex
  ) where

import           Data.Text      (Text)
import           Jason.Internal
import           Prelude        hiding (head)

action :: Jason -> Jason
action = parent "action"

actionRow :: Text -> Jason -> Jason
actionRow = parent

actions :: Jason -> Jason
actions = parent "actions"

album :: Jason -> Jason
album = parent "album"

align :: Jason -> Jason
align = parent "align"

author :: Jason -> Jason
author = parent "author"

autocapitalize :: Jason -> Jason
autocapitalize = parent "autocapitalize"

autocorrect :: Jason -> Jason
autocorrect = parent "autocorrect"

background :: Jason -> Jason
background = parent "background"

badge :: Jason -> Jason
badge = parent "badge"

body :: Jason -> Jason
body = parent "body"

border :: Jason -> Jason
border = parent "border"

bottom :: Jason -> Jason
bottom = parent "bottom"

class_ :: Jason -> Jason
class_ = parent "class"

color :: Jason -> Jason
color = parent "color"

colorDiabaled :: Jason -> Jason
colorDiabaled = parent "color:disabled"

components :: Jason -> Jason
components = arrayParent "components"

contentType :: Jason -> Jason
contentType = parent "content_type"

coord :: Jason -> Jason
coord = parent "coord"

cornerRadius :: Jason -> Jason
cornerRadius = parent "corner_radius"

css :: Jason -> Jason
css = parent "css"

dataRow :: Text -> Jason -> Jason
dataRow = parent

dataType :: Jason -> Jason
dataType = parent "data_type"

data_ :: Jason -> Jason
data_ = parent "data"

description :: Jason -> Jason
description = parent "description"

distance :: Jason -> Jason
distance = parent "distance"

domain :: Jason -> Jason
domain = parent "domain"

edit :: Jason -> Jason
edit = parent "edit"

error_ :: Jason -> Jason
error_ = parent "error"

fileUrl :: Jason -> Jason
fileUrl = parent "file_url"

font :: Jason -> Jason
font = parent "font"

footer :: Jason -> Jason
footer = parent "footer"

foreground :: Jason -> Jason
foreground = parent "$foreground"

head :: Jason -> Jason
head = parent "head"

header :: Jason -> Jason
header = parent "header"

height :: Jason -> Jason
height = parent "height"

href :: Jason -> Jason
href = parent "href"

icon :: Jason -> Jason
icon = parent "icon"

image :: Jason -> Jason
image = parent "image"

input :: Jason -> Jason
input = parent "input"

interval :: Jason -> Jason
interval = parent "interval"

items :: Jason -> Jason
items = arrayParent "items"

jason :: Jason -> Jason
jason = parent "$jason"

layers :: Jason -> Jason
layers = arrayParent "layers"

left :: Jason -> Jason
left = parent "left"

load :: Jason -> Jason
load = parent "$load"

menu :: Jason -> Jason
menu = parent "menu"

method :: Jason -> Jason
method = parent "method"

move :: Jason -> Jason
move = parent "move"

muted :: Jason -> Jason
muted = parent "muted"

name :: Jason -> Jason
name = parent "name"

options :: Jason -> Jason
options = parent "options"

padding :: Jason -> Jason
padding = parent "padding"

pins :: Jason -> Jason
pins = arrayParent "pins"

placeholder :: Jason -> Jason
placeholder = parent "placeholder"

placeholderColor :: Jason -> Jason
placeholderColor = parent "placeholder_color"

position :: Jason -> Jason
position = parent "position"

pull :: Jason -> Jason
pull = parent "$pull"

quality :: Jason -> Jason
quality = parent "quality"

region :: Jason -> Jason
region = parent "region"

repeats :: Jason -> Jason
repeats = parent "repeats"

resize :: Jason -> Jason
resize = parent "resize"

right :: Jason -> Jason
right = parent "right"

rotate :: Jason -> Jason
rotate = parent "rotate"

search :: Jason -> Jason
search = parent "search"

sections :: Jason -> Jason
sections = arrayParent "sections"

secure :: Jason -> Jason
secure = parent "secure"

selected :: Jason -> Jason
selected = parent "selected"

show_ :: Jason -> Jason
show_ = parent "$show"

size :: Jason -> Jason
size = parent "size"

spellcheck :: Jason -> Jason
spellcheck = parent "spellcheck"

style :: Jason -> Jason
style = parent "style"

styleRow :: Text -> Jason -> Jason
styleRow = parent

styles :: Jason -> Jason
styles = parent "styles"

success :: Jason -> Jason
success = parent "success"

tabs :: Jason -> Jason
tabs = parent "tabs"

template :: Jason -> Jason
template = parent "template"

templateRow :: Text -> Jason -> Jason
templateRow = parent

templates :: Jason -> Jason
templates = parent "templates"

text_ :: Jason -> Jason
text_ = parent "text"

theme :: Jason -> Jason
theme = parent "theme"

title :: Jason -> Jason
title = parent "title"

top :: Jason -> Jason
top = parent "top"

transition :: Jason -> Jason
transition = parent "transition"

trigger :: Jason -> Jason
trigger = parent "trigger"

type_ :: Jason -> Jason
type_ = parent "type"

url :: Jason -> Jason
url = parent "url"

value :: Jason -> Jason
value = parent "value"

view :: Jason -> Jason
view = parent "view"

width :: Jason -> Jason
width = parent "width"

zIndex :: Jason -> Jason
zIndex = parent "z_index"