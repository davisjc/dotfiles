;;; borealis.el --- Emacs theme with a dark background.

;; Copyright (C) 2018, Henry Baba-Weiss

;; Author: Henry Baba-Weiss
;; Version: 0.1
;; Package-Requires: ((emacs "24")) ;; only tested on 26.1 these days

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:
;;;
;;; 'Borealis' is a successor to Aurora, but with a more blue and less dark
;;; background color.
;;;
;;; 'Aurora' is my custom vim color scheme, modeled closely after the Solarized
;;; Dark color scheme. It was designed using Solarized Dark as a base starting
;;; point, but it diverges according to the following design principles:
;;;
;;;  o Compatibility/consistency between gvim and terminal vim.
;;;    Solarized doesn't tend to work so well using xterm 256 colors, possibly
;;;    because its color choice is so specialized. Initially, my custom color
;;;    scheme (that would eventually turn into Aurora) was an attempt to mimic
;;;    Solarized, but with the constraint of only using xterm colors. As much as
;;;    possible, I've strived to keep the 24-bit gvim colors identical, or at
;;;    least very similar, to the color choices used for the terminal color scheme.
;;;
;;;  o Emphasis on higher contrast color groupings.
;;;    My biggest complaint with Solarized Dark is that, when editing code, the
;;;    color choice makes various syntax elements blend together too much. The
;;;    most notable example is the color of comments: a dark gray that makes them
;;;    very easy to gloss over when scanning through code.
;;;
;;;    Aurora, on the other hand, emphasizes contrast between major syntactical
;;;    elements, e.g. comments, identifiers, and keywords. This makes it much
;;;    easier to recognize and visually group together syntactical features while
;;;    scanning through code.
;;;
;;;  o Harmonious color choices.
;;;    While I do not profess to know much about formal color theory, I chose
;;;    these particular colors in an attempt to keep them 'harmonious' with each
;;;    other. By that, I mean that this color scheme is heavily centered around
;;;    blue/green tones, accented by light grays and dark turquoises. There was no
;;;    formal process or method to my selection; I simply hand-tweaked until I
;;;    found the colors aesthetically pleasing and, to my eye, balanced.
;;;

;;; Code:

(deftheme borealis)
(let ((class '((class color) (min-colors 89)))
      (fg1        "#ebebeb")
      (fg2        "#ababab")
      (fg3        "#9b9b9b")
      (fg4        "#8b8b8b")
      (bg1        "#073761")
      (bg2        "#303030")
      (bg3        "#2b4852")
      (bg4        "#3e5861")
      (key2       "#96b832")
      (key3       "#789a0a")
      (builtin    "#00afff")
      (operator   "#87afdf")
      (keyword    "#87af00")
      (func       "#00afff")
      (const      "#00dfdf")
      (comment    "#55ffff")
      (doc        "#87dfdf")
      (str        "#00dfdf")
      (type       "#87ff5f")
      (preproc    "#87afff")
      (var        "#87afdf")
      (warning    "#dfaf87")
      (cursor     "#87afaf")
      (matchparen "#00afaf")
      (searchfg   "#000000")
      (searchbg   "#00ffff")
      (persisthl  "#008787")
      (region     "#005f5f")
      (linum      "#606060")
      (fillcolumn "#00af87")
      (trailing   "#af0000")
      (diffhdr-fg "#87af00")
      (diffhdr-bg "#00005f")
      (diffadd-fg "#00ff00")
      (diffadd-bg "#005f00")
      (diffdel-fg "#ff0000")
      (diffdel-bg "#5f0000")
      (diff3-fg   "#005f5f")
      (diff3-bg   "#00ffff")
      (magit-bg   "#444444")
      (modeline   "#000000")
      (mode-fg    "#dfdfdf")
      )
  (custom-theme-set-faces
   'borealis
   `(default ((,class (:background ,bg1 :foreground ,fg1))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,doc))))
   `(font-lock-function-name-face ((,class (:foreground ,func))))
   `(font-lock-keyword-face ((,class :foreground ,keyword)))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-preprocessor-face ((,class (:foreground ,preproc))))
   `(font-lock-negation-char-face ((,class (:foreground ,operator))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))
   `(region ((,class (:background ,fg1 :foreground ,bg1))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background ,bg2))))
   `(hl-todo ((,class (:foreground ,warning))))
   `(highlight-numbers-number ((,class (:foreground ,const))))
   `(highlight-symbol-face ((,class (:foreground ,func))))
   `(isearch ((,class (:foreground ,searchfg :background ,searchbg))))
   `(evil-search-highlight-persist-highlight-face ((,class (:background ,persisthl))))
   `(region ((,class (:foreground nil :background ,region))))
   `(secondary-selection ((,class (:foreground nil :background ,region))))
   `(linum ((,class (:foreground ,linum :background nil))))
   `(fringe ((,class (:background nil :foreground ,fg4))))
   `(cursor ((,class (:background ,cursor))))
   `(show-paren-match-face ((,class (:background ,matchparen))))
   `(sp-pair-overlay-face ((,class (:background nil))))
   `(fill-column-indicator ((,class (:foreground ,fillcolumn))))
   `(trailing-whitespace ((,class (:background unspecified :foreground ,trailing
                                               :inverse-video t))))
   `(whitespace-space ((,class (:background unspecified :foreground ,trailing
                                            :inverse-video unspecified :slant italic))))
   `(whitespace-hspace ((,class (:background unspecified :foreground ,trailing
                                             :inverse-video unspecified))))
   `(whitespace-tab ((,class (:background unspecified :foreground ,trailing
                                          :inverse-video t))))
   `(whitespace-newline ((,class(:background unspecified :foreground ,trailing
                                             :inverse-video unspecified))))
   `(whitespace-trailing ((,class (:background unspecified :foreground ,trailing
                                               :inverse-video t))))
   `(whitespace-line ((,class (:background unspecified :foreground ,trailing
                                           :inverse-video unspecified))))
   `(whitespace-space-before-tab ((,class (:background ,trailing :foreground unspecified
                                                       :inverse-video unspecified))))
   `(whitespace-indentation ((,class (:background unspecified :foreground ,trailing
                                                  :inverse-video unspecified))))
   `(whitespace-empty ((,class (:background unspecified :foreground ,trailing
                                            :inverse-video t))))
   `(whitespace-space-after-tab ((,class (:background unspecified :foreground ,trailing
                                                      :inverse-video t))))
   `(mode-line ((,class (:box (:line-width 1 :color nil) :foreground ,mode-fg :background ,modeline))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button)
                                       :foreground ,fg3 :background ,modeline :weight normal))))
   `(mode-line-buffer-id ((,class (:foreground ,func :background ,modeline))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil))))
   `(mode-line-emphasis ((,class (:foreground ,mode-fg :background ,modeline))))
   `(diff-header  ((,class (:background ,diffhdr-bg :foreground ,diffhdr-fg))))
   `(diff-file-header ((,class (:background ,diffhdr-bg :foreground ,diffhdr-fg))))
   `(diff-context ((,class (:foreground nil))))
   `(diff-added   ((,class (:foreground ,diffadd-fg))))
   `(diff-changed ((,class (:foreground nil))))
   `(diff-removed ((,class (:foreground ,diffdel-fg))))
   `(ediff-fine-diff-A ((,class (:background ,diffadd-bg))))
   `(ediff-fine-diff-B ((,class (:background ,diff3-bg))))
   `(ediff-fine-diff-C ((,class (:background ,diffdel-bg))))
   `(ediff-current-diff-C ((,class (:background ,region))))
   `(vertical-border ((,class (:foreground ,fg3))))
   `(minibuffer-prompt ((,class (:foreground ,keyword))))
   `(term ((,class (:foreground ,fg1 :background nil))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))
   `(org-code ((,class (:foreground ,fg2))))
   `(org-hide ((,class (:foreground ,fg4))))
   `(org-level-1 ((,class (:foreground ,fg2 :height 1.1))))
   `(org-level-2 ((,class (:foreground ,fg3))))
   `(org-level-3 ((,class (:foreground ,fg4))))
   `(org-level-4 ((,class (:foreground ,bg4))))
   `(org-date ((,class (:underline t :foreground ,var) )))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-link ((,class (:underline t :foreground ,type ))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword))))
   `(org-done ((,class (:box (:line-width 1 :color ,bg3) :foreground ,bg4))))
   `(org-warning ((,class (:underline t :foreground ,warning))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,type))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,builtin))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(ido-first-match ((,class (:foreground ,keyword))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,fg4))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,key3))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
   `(magit-item-highlight ((,class :background nil)))
   `(magit-section-highlight ((,class (:background nil))))
   `(magit-section-heading ((,class (:foreground ,type :weight bold))))
   `(magit-blame-heading ((,class (:background ,magit-bg))))
   `(magit-blame-summary ((,class (:foreground ,fg1 :background ,magit-bg))))
   `(magit-blame-hash ((,class (:foreground ,preproc :background ,magit-bg))))
   `(magit-blame-date ((,class (:foreground ,preproc :background ,magit-bg))))
   `(magit-blame-name ((,class (:foreground ,func :background ,magit-bg))))
   `(magit-hunk-heading           ((,class (:background nil))))
   `(magit-hunk-heading-highlight ((,class (:background nil))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diff-added ((,class (:background nil :foreground ,diffadd-fg))))
   `(magit-diff-added-highlight ((,class (:background nil :foreground ,diffadd-fg))))
   `(magit-diff-removed ((,class (:background nil :foreground ,diffdel-fg))))
   `(magit-diff-removed-highlight ((,class (:background nil :foreground ,diffdel-fg))))
   `(magit-diff-context ((,class (:background nil :foreground ,fg3))))
   `(magit-diff-context-highlight ((,class (:background nil :foreground ,fg1))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const))))
   `(magit-branch-remote ((,class (:foreground ,keyword))))
   `(magit-branch-local ((,class (:foreground ,const))))
   `(magit-branch-current ((,class (:foreground ,func))))
   `(magit-branch-head ((,class (:foreground ,preproc))))
   `(magit-log-author ((,class (:foreground ,fg1))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,fg2 :background nil :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background nil :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg2))))
   `(helm-visible-mark ((,class (:foreground nil :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground nil :background ,fg1))))
   `(helm-separator ((,class (:foreground ,type :background nil))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background nil))))
   `(helm-time-zone-home ((,class (:foreground ,type :background nil))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background nil))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background nil))))
   `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background nil))))
   `(helm-buffer-size ((,class (:foreground ,fg1 :background nil))))
   `(helm-ff-directory ((,class (:foreground ,func :background nil :weight bold))))
   `(helm-ff-file ((,class (:foreground ,fg1 :background nil :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,key2 :background nil :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background nil :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background nil :weight bold))))
   `(helm-ff-prefix ((,class (:foreground nil :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background nil))))
   `(helm-grep-file ((,class (:foreground ,fg1 :background nil))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background nil))))
   `(helm-grep-lineno ((,class (:foreground ,fg1 :background nil))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background nil))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background nil))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(company-echo-common ((,class (:foreground ,bg1 :background ,fg1))))
   `(company-preview ((,class (:background ,bg1 :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bg1))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
   `(jde-java-font-lock-package-face ((t (:foreground ,var))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))
   `(agda2-highlight-symbol-face ((,class (:foreground ,operator))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun set-transparent-bg ()
  "Disable drawing background colors when running in a terminal"
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))
    (set-face-background 'linum "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'set-transparent-bg)
(add-hook 'server-switch-hook 'set-transparent-bg)

(provide 'borealis)
(provide-theme 'borealis)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; borealis.el ends here
