type listChildrenRenderProps = {open_: bool}

@module("@headlessui/react") @react.component
external make: (
  ~as_: React.element=?,
  ~value: 't,
  ~onChange: 't => unit,
  ~children: listChildrenRenderProps => React.element,
  ~className: string=?,
) => React.element = "Listbox"

type buttonChildrenRenderProps = {open_: bool}

module Button = {
  @module("@headlessui/react") @scope("Listbox") @react.component
  external make: (
    ~as_: string=?,
    ~children: buttonChildrenRenderProps => React.element,
    ~className: string=?,
  ) => React.element = "Button"
}

module Label = {
  @module("@headlessui/react") @scope("Listbox") @react.component
  external make: (~as_: string=?, ~children: 'children=?, ~className: string=?) => React.element =
    "Label"
}

type optionsChildrenRenderProps = {open_: bool}

module Options = {
  @module("@headlessui/react") @scope("Listbox") @react.component
  external make: (
    ~as_: string=?,
    ~children: optionsChildrenRenderProps => React.element,
    ~className: string=?,
    ~static: bool=?,
  ) => React.element = "Options"
}

type optionChildrenRenderProps = {active: bool, selected: bool, disabled: bool}

module Option = {
  @module("@headlessui/react") @scope("Listbox") @react.component
  external make: (
    ~as_: string=?,
    ~value: 't,
    ~children: optionChildrenRenderProps => React.element,
    ~className: string=?,
    ~disabled: bool=?,
  ) => React.element = "Option"
}
