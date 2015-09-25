;; add melpa repo
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
                          '("melpa" . "https://melpa.org/packages/") )
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) 


;; load before auto complete
(require `yasnippet)
;; set snippet template loading path and load the template
(setq yas-snippet-dirs
      '("~/.emacs.d/mysnippets"  ;; personal snippets
	"~/.emacs.d/elpa/yasnippet-0.8.0/snippets"  ;; the default collection
	))
(yas-global-mode 1)


;; enable auto-complete-mode at startup
(require `auto-complete)
(global-auto-complete-mode t)


;; load predictive-mode file and set default open in LaTex mode
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/predictive")
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/predictive/html")
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/predictive/latex")
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/predictive/misc")
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/predictive/texinfo")
;; (require 'predictive)
;; (add-hook 'LaTeX-mode-hook 'predictive-mode)
;; change the keymap of accepting completion to TAB
;; (define-key completion-overlay-map "\t" 'completion-accept)


;; enable autopair to auto close brackets and quotes
;; (add-to-list 'load-path "/Users/zhanyang/.emacs.d/lisp/autopair") ;; comment if autopair.el is in standard load path
;; (require 'autopair)
;; (autopair-global-mode) ;; enable autopair in all buffers
(electric-pair-mode)

;; enable showing line numbers
(setq linum-format "%d  ")
(global-linum-mode t)

;; my own keymap
(global-set-key (kbd "C-x C-d") 'forward-paragraph)
(global-set-key (kbd "M-SPC") 'set-mark-command)

