type renderProps = {@as("open") _open: bool, disabled: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~disabled: bool=?,
    ~value: 'value=?,
    ~onChange: 'value => unit=?,
    ~horizontal: bool=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Listbox"

  module Button = {
    type renderProps = {@as("open") _open: bool, disabled: bool}
    @module("@headlessui/react") @react.component @scope("Listbox")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Button"
  }

  module Label = {
    type renderProps = {@as("open") _open: bool, disabled: bool}
    @module("@headlessui/react") @react.component @scope("Listbox")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Label"
  }

  module Options = {
    type renderProps = {@as("open") _open: bool}
    @module("@headlessui/react") @react.component @scope("Listbox")
    external make: (
      ~_as: 'asType=?,
      ~static: bool=?,
      ~unmount: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Options"
  }

  module Option = {
    type renderProps = {active: bool, selected: bool, disabled: bool}
    @module("@headlessui/react") @react.component @scope("Listbox")
    external make: (
      ~_as: 'asType=?,
      ~value: 'value=?,
      ~disabled: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Option"
  }
