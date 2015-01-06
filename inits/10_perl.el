;;(autoload 'perl-mode "cperl-mode.el" "Perl" t)
;; cperl-mode
;(setq cperl-indent-level 4)
;(setq cperl-continued-statement-offset 4)
;(setq cperl-comment-column 40)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
(defalias 'perl-mode 'cperl-mode)
;; Perl indentation rules from Perl Best Practices by DC
(custom-set-variables
'(cperl-close-pattern-offset -4)
'(cperl-continued-statement-offset 4)
'(cperl-indent-level 4)
'(cperl-indent-parens-as-block t)
'(cperl-tab-always-indent t)
;; '(indent-tabs-mode t)
)
(add-hook 'cperl-mode-hook
	  '(lambda ()
	     (progn
	       (setq tab-width 4)
	       )))

;; indent and (un)tabify
;; default behavior -> indent and untabify (for mbsys coding statndard)
;; C-u M-x indent-buffer -> indent and tabify
;; C-u C-u M-x indent-buffer -> indent only
(defun indent-buffer (&optional arg)
  "indent buffer"
  (interactive "p")
  (indent-region (point-min) (point-max) nil)
  (cond
   ((= 4 arg) (tabify-buffer))
   ((= 16 arg) (t))
   (t (untabify-buffer))
   )
  (message "indent buffer")
  )
(defun tabify-buffer()
  "tabify buffer"
  (interactive)
  (tabify (point-min) (point-max))
  (message "tabify buffer")
  )
(defun untabify-buffer()
  "untabify buffer"
  (interactive)
  (untabify (point-min) (point-max))
  (message "untabify buffer")
  )
