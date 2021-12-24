type renderProps = {@as("open") _open: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Menu"

  module Button = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Menu")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Button"
  }

  module Items = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Menu")
    external make: (
      ~_as: 'asType=?,
      ~static: bool=?,
      ~unmount: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Items"
  }

  module Item = {
    type renderProps = {@as("open") _open: bool, active: bool}
    @module("@headlessui/react") @react.component @scope("Menu")
    external make: (
      ~_as: 'asType=?,
      ~disabled: bool=?,
      ~active: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Item"
  }
