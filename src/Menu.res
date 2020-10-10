@bs.module("@headlessui/react") @react.component
external make: (~children: 'children=?, ~className: string=?) => React.element = "Menu"

module Button = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (~children: 'children=?, ~className: string=?) => React.element = "Button"
}

module Items = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (~children: 'children=?, ~className: string=?) => React.element = "Items"
}

type childFuncProp = {active: bool}

module Item = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (
    ~children: childFuncProp => React.element,
    ~className: string=?,
  ) => React.element = "Item"
}
