@module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~value: 'value=?,
    ~onChange: 'value => unit=?,
    ~disabled: bool=?,
    ~className: string=?,
    ~children: 'children,
  ) => React.element = "RadioGroup"

  module Option = {
    type renderProps = {active: bool, checked: bool, disabled: bool}
    @module("@headlessui/react") @react.component @scope("RadioGroup")
    external make: (
      ~_as: 'asType=?,
      ~value: 'value=?,
      ~disabled: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Option"
  }

  module Label = {
    @module("@headlessui/react") @react.component @scope("RadioGroup")
    external make: (~_as: 'asType=?, ~className: string=?, ~children: 'children) => React.element =
      "Label"
  }

  module Description = {
    @module("@headlessui/react") @react.component @scope("RadioGroup")
    external make: (~_as: 'asType=?, ~className: string=?, ~children: 'children) => React.element =
      "Description"
  }
