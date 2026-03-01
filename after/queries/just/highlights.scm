;; extends
((shebang) @keyword.directive
  (#set! priority 300))

; variable in string template: "ls '{{ dir }}'"
(recipe_line
  (text)
    (interpolation) @variable.just
    (#set! priority 300))
