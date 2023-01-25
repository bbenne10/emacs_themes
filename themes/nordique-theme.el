(deftheme nordique "A bastardized lower contrast nord-inspired theme")
(let* ((class '((class color) (min-colors 89)))
       (nord0 "#2E3440")
       (nord1 "#3B4252")
       (nord2 "#434C5E")
       (nord3 "#4C566A")
       (nord4 "#D8DEE9")
       (nord5 "#E5E9F0")
       (nord6 "#ECEFF4")
       (nord7 "#8FBCBB")
       (nord8 "#88C0D0")
       (nord9 "#81A1C1")
       (nord10 "#5E81AC")
       (nord11 "#BF616A")
       (nord12 "#D08770")
       (nord13 "#EBCB8B")
       (nord14 "#A3BE8C")
       (nord15 "#B48EAD")
       (comment "#5C6780")
       (highlight "#282d38")

       (region "#3B4252")
       (string "#bec2cc")
       (font-lock-keyword "#68758e")
       (mode-line-padding 8)
       )
  (setq fci-rule-color  comment)
  (custom-theme-set-faces 'nordique
   `(default ((,class (:background ,nord0 :foreground ,nord4))))
   `(cursor ((,class (:background ,nord4 :inverse-video t))))

   `(fringe ((,class (:background ,nord0 :foreground ,nord4))))
   `(border ((,class (:background ,nord0 :foreground ,comment))))
   `(vertical-border ((,class (:inherit border))))
   `(horizontal-border ((,class (:inherit border))))

   `(minibuffer-prompt ((,class (:foreground ,nord8))))
   `(orderless-match-face-0 ((,class (:foreground ,nord0 :background ,nord8))))
   `(orderless-match-face-1 ((,class (:foreground ,nord0 :background ,nord15))))
   `(orderless-match-face-2 ((,class (:foreground ,nord0 :background ,nord14))))
   `(orderless-match-face-3 ((,class (:foreground ,nord0 :background ,nord13))))

   `(git-gutter-fr:added ((,class (:foreground ,nord14))))
   `(git-gutter-fr:modified ((,class (:foreground ,nord15))))
   `(git-gutter-fr:added ((,class (:foreground ,nord11))))

   `(hl-line ((,class (:background ,highlight))))
   `(highlight ((,class (:background ,highlight))))
   `(match ((,class :background ,nord9)))

   ;; active region
   `(region ((,class (:background ,region))))
   `(mouse-drag-drop-region ((,class (:inherit region))))

   ;; builtin syntax hilighting
   `(font-lock-builtin-face ((,class (:foreground ,nord4 :slant italic))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((,class (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((,class (:foreground ,nord4 :weight bold))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,nord9 ))))
   `(font-lock-keyword-face ((,class (:foreground ,font-lock-keyword))))
   `(font-lock-string-face ((,class (:foreground ,nord4 :foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,nord15 :slant italic))))
   `(font-lock-variable-name-face ((,class (:foreground ,nord4))))
   `(font-lock-warning-face ((,class (:foreground ,nord11))))

   ;; ansi colors for vterm
    `(term ((,class (:foreground ,nord4 :background ,nord0))))
    `(term-color-black ((,class . (:foreground ,nord1 :background ,nord1))))
    `(term-color-white ((,class . (:foreground ,nord5 :background ,nord5))))
    `(term-color-cyan ((,class . (:foreground ,nord7 :background ,nord7))))
    `(term-color-blue ((,class . (:foreground ,nord8 :background ,nord8))))
    `(term-color-red ((,class . (:foreground ,nord11 :background ,nord11))))
    `(term-color-yellow ((,class . (:foreground ,nord13 :background ,nord13))))
    `(term-color-green ((,class . (:foreground ,nord14 :background ,nord14))))
    `(term-color-magenta ((,class . (:foreground ,nord15 :background ,nord15))))
    `(tool-bar ((,class . (:foreground ,nord4 :background ,nord3))))

   ;; mode-line
   `(mode-line ((,class . (:foreground ,nord4
                         :background ,nord1
                         :box (:line-width ,mode-line-padding
                                :color ,nord1)
                         :inherit nil))))
   `(mode-line-inactive ((,class . (:foreground ,comment
                                  :background ,nord0
                                  :box (:line-width ,mode-line-padding
                                         :color ,nord0)))))
   `(success ((,class . (:foreground ,nord14))))
   `(warning ((,class . (:foreground ,nord12))))
   `(warning ((,class . (:foreground ,nord11))))

   ;; fic mode
   `(fic-face  ((,class (:foreground ,nord12 :background ,nord0))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
(provide-theme 'nordique)
