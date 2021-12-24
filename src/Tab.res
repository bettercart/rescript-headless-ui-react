type renderProps = {selected: bool}
  @module("@headlessui/react") @react.component
  external make: (
    ~_as: 'asType=?,
    ~className: string=?,
    ~children: renderProps => React.element,
  ) => React.element = "Tab"

  module Group = {
    type renderProps = {selectedIndex: int}
    @module("@headlessui/react") @react.component @scope("Tab")
    external make: (
      ~_as: 'asType=?,
      ~defaultIndex: int=?,
      ~onChange: int => unit=?,
      ~vertical: bool=?,
      ~manual: bool=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Group"
  }

  module List = {
    type renderProps = {selectedIndex: bool}
    @module("@headlessui/react") @react.component @scope("Tab")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "List"
  }

  module Panels = {
    type renderProps = {selectedIndex: bool}
    @module("@headlessui/react") @react.component @scope("Tab")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Panels"
  }

  module Panel = {
    type renderProps = {selected: bool}
    @module("@headlessui/react") @react.component @scope("Tab")
    external make: (
      ~_as: 'asType=?,
      ~className: string=?,
      ~children: renderProps => React.element,
    ) => React.element = "Panel"
  }
