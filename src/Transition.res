@module("@headlessui/react") @react.component
external make: (
  ~show: bool,
  ~appear: bool=?,
  ~enter: string=?,
  ~as_: string=?,
  ~enterFrom: string=?,
  ~enterTo: string=?,
  ~leave: string=?,
  ~leaveFrom: string=?,
  ~leaveTo: string=?,
  ~children: 'children=?,
  ~className: string=?,
) => React.element = "Transition"
