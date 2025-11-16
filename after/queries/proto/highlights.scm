;; extends
(map_field) @keyword
(reserved
  (field_names
    (identifier) @type))
(field_option
  (identifier) @keyword
  (#set! priority 300))
(field_option
  (constant
    (full_ident
      (identifier) @constant)))
(package
  (full_ident) @type
  (#set! priority 300))
