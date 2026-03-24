;; extends
(crate) @keyword
((lifetime) @lsp.type.lifetime.rust
  (#set! "priority" 300))

; generics (<T>)
(type_parameter
  (type_identifier) @lsp.type.typeParameter)

; generics in `where: T: Type` clarification.
(where_predicate
  (type_identifier) @lsp.type.typeParameter)

; macros function call 'println!("Hello world!")'
(macro_invocation
  (identifier) @lsp.type.macro.rust)
