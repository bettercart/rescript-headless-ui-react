type listChildrenRenderProps = {open_: bool}

@bs.module("@headlessui/react") @react.component
external make: (
  ~as_: React.element=?,
  ~value: 't,
  ~onChange: 't => unit,
  ~children: listChildrenRenderProps => React.element,
  ~className: string=?
) => React.element = "Listbox"

type buttonChildrenRenderProps = {open_: bool}

module Button = {
  @bs.module("@headlessui/react") @bs.scope("Listbox") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: buttonChildrenRenderProps => React.element,
    ~className: string=?
  ) => React.element = "Button"
}

module Label = {
  @bs.module("@headlessui/react") @bs.scope("Listbox") @react.component
  external make: (
    ~as_: React.element=?,
    ~children:'children=?,
    ~className: string=?
  ) => React.element = "Label"
}

type optionsChildrenRenderProps = {open_: bool}

module Options = {
  @bs.module("@headlessui/react") @bs.scope("Listbox") @react.component
  external make: (
    ~as_: React.element=?,
    ~children: optionsChildrenRenderProps => React.element,
    ~className: string=?,
    ~static: bool=?
  ) => React.element = "Options"
}

type optionChildrenRenderProps = {active: bool, selected: bool, disabled: bool}

module Option = {
  @bs.module("@headlessui/react") @bs.scope("Listbox") @react.component
  external make: (
    ~as_: React.element=?,
    ~value: 't,
    ~children: optionChildrenRenderProps => React.element,
    ~className: string=?,
    ~disabled: bool=?
  ) => React.element = "Option"
}
