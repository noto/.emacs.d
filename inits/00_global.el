;;; exec-path-from-shell: the order may be important
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

(setq make-backup-files nil)
(set-default 'fill-column 74)
(setq-default show-trailing-whitespace t)

;; Key binding
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-h" 'help-command)
(global-set-key "\C-c\C-g" 'goto-line)
(define-key minibuffer-local-filename-completion-map
  " " 'minibuffer-complete-word)

;; a/index.html, b/index.html => (buffer_name: index.html<a>, index.html<b>
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; server
(require 'server)
(unless (server-running-p) (server-start))

;; various modes
(add-hook 'after-init-hook #'global-flycheck-mode)
(global-font-lock-mode t)
(global-auto-complete-mode t)
(popwin-mode 1)
(zlc-mode t)

;;; Mac
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)
(set-keyboard-coding-system 'utf-8) ; inline IME
;; Emacs 24.3 or later
(setq default-input-method "MacOSX")
(mac-set-input-method-parameter
 "com.google.inputmethod.Japanese.base" `title "あ")
(when (eq system-type 'darwin) (setq ns-command-modifier (quote meta)))
