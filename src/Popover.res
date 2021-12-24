type renderProps = {@as("open") _open: bool, close: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Popover"

  module Overlay = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Popover")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Overlay"
  }

  module Button = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Popover")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Button"
  }

  module Panel = {
    type renderProps = {@as("open") _open: bool, close: bool}
    @module("@headlessui/react") @react.component @scope("Popover")
    external make: (
      ~_as: 'asType=?,
      ~focus: bool=?,
      ~static: bool=?,
      ~unmount: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Panel"
  }

  module Group = {
    @module("@headlessui/react") @react.component @scope("Popover")
    external make: (~_as: 'asType=?, ~className: string=?, ~children: 'children) => React.element =
      "Group"
  }
