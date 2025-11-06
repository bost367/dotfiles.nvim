;; extends
((null) @keyword)
((undefined) @keyword)
(decorator
  (call_expression
    function: (identifier) @attribute
    (#set! "priority" 300)))
(property_signature
  name: (property_identifier) @property)
(export_statement
  declaration: (lexical_declaration
    (variable_declarator
      name: (identifier) @constant
      (#set! "priority" 300))))
(export_statement
    declaration: (ambient_declaration
      (lexical_declaration
        (variable_declarator
          name: (identifier) @constant
          (#set! "priority" 300)))))
