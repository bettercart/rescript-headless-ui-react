type menuChildrenRenderProps = {@as("open") open_: bool}

@module("@headlessui/react") @react.component
external make: (
  ~as_: React.element=?,
  ~children: menuChildrenRenderProps => React.element,
  ~className: string=?,
) => React.element = "Menu"

type buttonChildrenRenderProps = {@as("open") open_: bool}

module Button = {
  @module("@headlessui/react") @scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: buttonChildrenRenderProps => React.element,
    ~className: string=?,
  ) => React.element = "Button"
}

type itemsChildrenRenderProps = {@as("open") open_: bool}

module Items = {
  @module("@headlessui/react") @scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: itemsChildrenRenderProps => React.element,
    ~className: string=?,
    ~static: bool=?,
  ) => React.element = "Items"
}

type itemChildrenRenderProps = {active: bool, disabled: bool}

module Item = {
  @module("@headlessui/react") @scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: itemChildrenRenderProps => React.element,
    ~className: string=?,
    ~disabled: bool=?,
  ) => React.element = "Item"
}
