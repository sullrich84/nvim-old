local function build_icon(symbol)
  return string.format("%s ", symbol)
end

local icons = {
  Function = build_icon(""),
  Constructor = build_icon(""),
  Variable = build_icon("󰫧"),
  Property = build_icon("󰓼"),
  Enum = build_icon("練"),
  Keyword = build_icon(""),
  Snippet = build_icon(""),
  Color = build_icon(""),
  File = build_icon(""),
  Reference = build_icon(""),
  Folder = build_icon(""),
  EnumMember = build_icon(""),
  Event = build_icon(""),
  Operator = build_icon(""),
  TypeParameter = build_icon(""),
  Class = build_icon(""),
  Constant = build_icon(""),
  Field = build_icon(""),
  Interface = build_icon("ﰮ"),
  Method = build_icon("ƒ"),
  Module = build_icon(""),
  Struct = build_icon(""),
  Text = build_icon(""),
  Unit = build_icon(""),
  Value = build_icon(""),
  ---
  Namespace = build_icon(""),
  Package = build_icon(""),
  String = build_icon(""),
  Number = build_icon(""),
  Boolean = build_icon("◩"),
  Array = build_icon(""),
  Object = build_icon(""),
  Key = build_icon(""),
  Null = build_icon("ﳠ"),
}

return icons
