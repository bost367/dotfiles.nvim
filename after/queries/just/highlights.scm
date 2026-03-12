;; extends
((shebang) @keyword.directive
  (#set! priority 300))

; variable in string template: "ls '{{ dir }}'"
(recipe_line
  (text)
    (interpolation) @variable.just
    (#set! priority 300))

; shelbang: #!/usr/bin/env just --justfile
(source_file
  (shebang) @keyword.directive
  (#set! priority 300))
