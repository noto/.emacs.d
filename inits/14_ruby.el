;; Ruby
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; (require 'ruby-electric)
;; (add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
;; (setq ruby-electric-expand-delimiters-list nil)

;; ruby-end http://blog.livedoor.jp/ooboofo3/archives/53748087.html
(require 'ruby-end)
(add-hook 'ruby-mode-hook
  '(lambda ()
    (abbrev-mode 1)
    (electric-pair-mode t)
    (electric-indent-mode t)
    (electric-layout-mode t)))
(setq ruby-insert-encoding-magic-comment nil) 

;; ruby-block.el --- highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; flycheck with rubocop and ruby-lint
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))

;; rcodetools
;; (require 'rcodetools)
;; (setq rct-find-tag-if-available nil)
;; (defun ruby-mode-hook-rcodetools ()
;;   (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
;;   (define-key ruby-mode-map "\C-c\C-t" 'ruby-toggle-buffer)
;;   (define-key ruby-mode-map "\C-c\C-d" 'xmp)
;;   (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
;; (add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)

; (require 'anything-rcodetools)
; (setq rct-get-all-methods-command "PAGER=cat fri -l")
;; See docs
; (define-key anything-map [(control ?;)] 'anything-execute-persistent-action)
