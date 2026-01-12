;;; deepwater-theme.el --- A port of the Deepwater Neovim scheme

(deftheme deepwater
  "A deep teal theme ported from Neovim.")

(let ((class '((class color) (min-colors 89)))
      ;; Palette
      (bg          "#062329") ;; Deep Teal
      (bg-alt      "#04181c") ;; Darker teal
      (bg-hl       "#0b2e36") ;; Cursor line
      (fg          "#d1b897") ;; Warm Wheat
      (cursor      "#ffffff")
      (line-nr     "#1c454e")
      (visual      "#215d9c") ;; Deep Blue (Selection)
      (search-bg   "#d7ba7d")
      (search-fg   "#000000")
      (match-paren "#ffaf00")

      ;; Syntax colors
      (comment     "#44b340")
      (string      "#2ec09c")
      (keyword     "#ffffff") 
      (const       "#7ad0c6")
      (func        "#d1b897")
      (type        "#ffffff")
      (error       "#ff3333")
      (warning     "#fabd2f")
      (todo        "#000000"))

  (custom-theme-set-faces
   'deepwater
   ;; ======================
   ;; Editor UI
   ;; ======================
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,cursor))))
   
   ;; Standard Selection (Visual Mode)
   `(region ((,class (:background ,visual :foreground nil))))
   
   ;; "Highlight" is often used for the Minibuffer/Completion selection
   `(highlight ((,class (:background ,visual :foreground ,keyword)))) 

   `(line-number ((,class (:foreground ,line-nr :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,keyword :background ,bg-hl))))
   `(hl-line ((,class (:background ,bg-hl))))
   `(fringe ((,class (:background ,bg :foreground ,line-nr))))
   `(minibuffer-prompt ((,class (:foreground ,keyword :weight normal))))
   `(vertical-border ((,class (:foreground ,line-nr))))
   `(window-divider ((,class (:foreground ,line-nr))))
   
   ;; Search & Matching
   `(isearch ((,class (:foreground ,search-fg :background ,search-bg))))
   `(lazy-highlight ((,class (:foreground ,search-fg :background ,search-bg :alpha 60))))
   `(show-paren-match ((,class (:foreground ,match-paren :weight normal))))

   ;; Mode Line
   `(mode-line ((,class (:background ,bg-alt :foreground ,fg :box (:line-width 1 :color ,line-nr)))))
   `(mode-line-inactive ((,class (:background ,bg :foreground ,line-nr :box (:line-width 1 :color ,line-nr)))))

   ;; ======================
   ;; Syntax Highlighting (No Bold, No Italics)
   ;; ======================
   `(font-lock-comment-face ((,class (:foreground ,comment :slant normal))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword :weight normal))))
   `(font-lock-function-name-face ((,class (:foreground ,func :weight normal))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-builtin-face ((,class (:foreground ,keyword))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))
   `(error ((,class (:foreground ,error :weight normal))))
   `(warning ((,class (:foreground ,warning))))
   
   ;; ======================
   ;; Completions / Menus
   ;; ======================
   ;; Standard Emacs 'Completions' buffer
   `(completions-common-part ((,class (:foreground ,fg))))
   `(completions-first-difference ((,class (:foreground ,const :weight normal))))
   
   ;; Company / Corfu (External plugins)
   `(company-tooltip ((,class (:background ,bg-alt :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,visual :foreground ,keyword))))
   `(corfu-default ((,class (:background ,bg-alt :foreground ,fg))))
   `(corfu-current ((,class (:background ,visual :foreground ,keyword))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,keyword :weight normal))))
   `(which-key-group-description-face ((,class (:foreground ,const))))
   `(which-key-command-description-face ((,class (:foreground ,comment))))
   `(which-key-separator-face ((,class (:foreground ,line-nr))))
   
   ;; Ido / Ivy / Helm / Vertico (Minibuffer selection candidates)
   `(ido-first-match ((,class (:foreground ,keyword :background ,visual))))
   `(ido-only-match ((,class (:foreground ,keyword :background ,visual))))
   `(ivy-current-match ((,class (:foreground ,keyword :background ,visual))))
   `(vertico-current ((,class (:background ,visual :foreground ,keyword))))
))

(provide-theme 'deepwater)
;;; deepwater-theme.el ends here
