;; extends
; 'None' keyword
((none) @keyword
  (#set! priority 300))

; parameter in decorators call: @foo(param = "foo")'
(call
  function: (identifier)
  arguments: (argument_list
    (keyword_argument
      name: (identifier) @customKeywoardArgumentPython
      (#set! priority 300))))

; parameter in function and constructure call: 'fun(arg = "foo")'
(call
  function: (attribute
    object: (identifier)
    attribute: (identifier))
  arguments: (argument_list
    (keyword_argument
      name: (identifier) @customKeywoardArgumentPython
      (#set! priority 300))))

;annotation path: '@foo.bar'
(decorated_definition
  (decorator
    (attribute) @attribute)
    (#set! priority 300))

;annotation and arg: '@foo("bar")' '@foo.bar("baz")'
(decorated_definition
  (decorator
    (call
      function: [(identifier) (attribute)] @attribute)
      (#set! priority 300)))

; built in function: '__init__', '__repr__' and so on
(
  (identifier) @customDunderPython
  (#match? @customDunderPython "^__.*__$")
  (#set! priority 300)
)
