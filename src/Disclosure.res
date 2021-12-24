type renderProps = {@as("open") _open: bool, close: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~defaultOption: bool=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Disclosure"

  module Button = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Disclosure")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Button"
  }

  module Panel = {
    type renderProps = {@as("open") _open: bool, close: bool}
    @module("@headlessui/react") @react.component @scope("Disclosure")
    external make: (
      ~_as: 'asType=?,
      ~static: bool=?,
      ~unmount: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Panel"
  }
