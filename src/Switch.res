type renderProps = {checked: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~checked: bool=?,
    ~onChange: bool => unit=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Switch"

  module Label = {
    @module("@headlessui/react") @react.component @scope("Switch")
    external make: (
      ~_as: 'asType=?,
      ~passive: bool=?,
      ~className: string=?,
      ~children: 'children,
    ) => React.element = "Label"
  }

  module Group = {
    @module("@headlessui/react") @react.component @scope("Switch")
    external make: (~_as: 'asType=?, ~className: string=?, ~children: 'children) => React.element =
      "Group"
  }
