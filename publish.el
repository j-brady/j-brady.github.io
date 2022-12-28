;;; publish.el ---- Jacob P. Brady
;;; Commentary:
;;;     config for webpage
(require 'ox-publish)
;;; Code:
;;;
(setq org-link-file-path-type 'relative)
(setq org-publish-project-alist
      '(
        ("j-brady.github.io-content"
        :base-directory "./"
        :base-extension "org"
        :publishing-directory "./html/"
        :recursive t
        :publishing-function org-html-publish-to-html
        :headline-levels 4
        ;:auto-preamble t
        :auto-sitemap t                ; Generate sitemap.org automagically...
        :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
        :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
        :email "jacob.brady@protonmail.com"
        :author "Jacob P Brady"
        ; HTML5
        :html-doctype "html5"
        :html-html5-fancy t
        ; Disable some Org's HTML defaults
        :html-head-include-scripts nil
        :html-head-include-default-style nil
        ; HTML preamble
        ;:html-preamble
        :html-postamble "<p class=\"author\">Author: %a (%e)</p><p class=\"creator\">%c</p><div id=\"updated\">Updated: %C</div>")
       ("j-brady.github.io-static"
        :base-directory "./"
        :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
        :publishing-directory "./html/"
        :recursive t
        :publishing-function org-publish-attachment
        )
       ("j-brady.github.io"
        :components ("j-brady.github.io-content" "j-brady.github.io-static"))))

(provide 'publish)
;;; publish.el
