type menuChildrenRenderProps = {open_: bool}

@bs.module("@headlessui/react") @react.component
external make: (
  ~as_: React.element=?,
  ~children: menuChildrenRenderProps => React.element,
  ~className: string=?
) => React.element = "Menu"

type buttonChildrenRenderProps = {open_: bool}

module Button = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: buttonChildrenRenderProps => React.element,
    ~className: string=?
  ) => React.element = "Button"
}

type itemsChildrenRenderProps = {open_: bool}

module Items = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: itemsChildrenRenderProps => React.element,
    ~className: string=?,
    ~static: bool=?
  ) => React.element = "Items"
}

type itemChildrenRenderProps = {active: bool, disabled: bool}

module Item = {
  @bs.module("@headlessui/react") @bs.scope("Menu") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: itemChildrenRenderProps => React.element,
    ~className: string=?,
    ~disabled: bool=?
  ) => React.element = "Item"
}
