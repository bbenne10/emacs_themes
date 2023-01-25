(deftheme penumbrish "A bastardized lower contrast penumbra-inspired theme")

(let* ((class '((class color) (min-colors 89)))
       (sunplus	"#FFFDFB")
       (sun 	"#FFF7ED")
       (sun- 	"#F2E6D4")
       (skyplus	"#BEBEBE")
       (sky 	"#8F8F8F")
       (sky- 	"#636363")
       (shadeplus "#3E4044")
       (shade 	"#303338")
       (shade-  "#24272B")
       (red     "#CA736C")
       (orange  "#BA823A")
       (yellow  "#8D9741")
       (green   "#47A477")
       (cyan    "#00A2AF")
       (blue    "#5794D0")
       (purple  "#9481CC")
       (magenta "#BC73A4")
  (setq fci-rule-color  sky-)
  (custom-theme-set-faces 'penumbrish
   `(default ((,class (:background ,shade :foreground ,skyplus))))
   `(cursor ((,class (:background ,skyplus :inverse-video t))))

   `(fringe ((,class (:background ,shade :foreground ,sky-))))
   `(border ((,class (:background ,shade :foreground ,sky-))))
   `(vertical-border ((,class (:inherit border))))
   `(horizontal-border ((,class (:inherit border))))

   `(minibuffer-prompt ((,class (:foreground ,blue))))
   `(orderless-match-face-0 ((,class (:foreground ,shade :background ,blue))))
   `(orderless-match-face-1 ((,class (:foreground ,shade :background ,red))))
   `(orderless-match-face-2 ((,class (:foreground ,shade :background ,yellow))))
   `(orderless-match-face-3 ((,class (:foreground ,shade :background ,purple))))

   `(git-gutter-fr:added ((,class (:foreground ,green))))
   `(git-gutter-fr:modified ((,class (:foreground ,magenta))))
   `(git-gutter-fr:deleted ((,class (:foreground ,red))))

   `(hl-line ((,class (:background ,shade-))))
   `(highlight ((,class (:foreground ,sun))))
   `(match ((,class :background ,cyan)))

   ;; active region
   `(region ((,class (:background ,shade-))))
   `(mouse-drag-drop-region ((,class (:inherit region))))

   ;; builtin syntax hilighting
   `(font-lock-builtin-face ((,class (:foreground ,skyplus :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-comment-face ((,class (:foreground ,sky-))))
   `(font-lock-constant-face ((,class (:foreground ,skyplus :weight bold))))
   `(font-lock-doc-face ((,class (:foreground ,sky-))))
   `(font-lock-function-name-face ((,class (:foreground ,green))))
   `(font-lock-keyword-face ((,class :foreground ,sky)))
   `(font-lock-string-face ((,class (:foreground ,sky))))
   `(font-lock-type-face ((,class (:foreground ,orange :slant italic))))
   `(font-lock-variable-name-face ((,class (:foreground ,sun))))
   `(font-lock-warning-face ((,class (:foreground ,red))))

   ;; ansi colors for vterm
   `(term ((,class (:foreground ,sky :background ,shade))))
   `(term-color-black ((,class (:foreground ,shade :background ,shade))))
   `(term-color-white ((,class (:foreground ,sky :background ,sky))))
   `(term-color-cyan ((,class (:foreground ,cyan :background ,cyan))))
   `(term-color-blue ((,class (:foreground ,blue :background ,blue))))
   `(term-color-red ((,class (:foreground ,red :background ,red))))
   `(term-color-yellow ((,class (:foreground ,yellow :background ,yellow))))
   `(term-color-green ((,class (:foreground ,green :background ,green))))
   `(term-color-magenta ((,class (:foreground ,magenta :background ,magenta))))
   ;; `(tool-bar ((,class (:foreground ,nord4 :background ,nord3))))

   ;; mode-line
   `(mode-line ((,class (:foreground ,sky
                         :background ,shadeplus
                         :inherit nil))))
   `(mode-line-inactive ((,class (:foreground ,sky-
                                  :background ,shade-))))
   `(success ((,class (:foreground ,green))))
   `(warning ((,class (:foreground ,orange))))
   `(error ((,class (:foreground ,red))))

   ;; fic mode
   `(fic-face  ((,class (:foreground ,red))))
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'penubrish)
