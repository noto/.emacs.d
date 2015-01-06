;;; exec-path-from-shell: the order may be important
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

(menu-bar-mode nil)
(tool-bar-mode -1)
(setq visible-bell t)
(setq make-backup-files nil)
(blink-cursor-mode 0)

;; (setq text-mode-hook 'turn-on-auto-fill)
(set-default 'fill-column 74)
(setq-default cursor-in-non-selected-windows nil)
(setq-default line-spacing 0.2) ; 行間の設定
(set-keyboard-coding-system 'utf-8) ; inline IME
(setq-default show-trailing-whitespace t) ; 行末の空白をハイライト

;; Key binding
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-h" 'help-command)
(global-set-key "\C-c\C-g" 'goto-line)
;; (global-set-key "\C-c\C-f" 'auto-fill-mode)
(define-key minibuffer-local-filename-completion-map
  " " 'minibuffer-complete-word)
;; (define-key henkan-mode-map "\M-s" 'henkan-select-kouho-dai)

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
;; (icomplete-mode 99)

;;; Mac
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)
;; Emacs 24.3
(setq default-input-method "MacOSX")
(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "あ")
(when (eq system-type 'darwin) (setq ns-command-modifier (quote meta)))

;;(set-terminal-coding-system 'euc-jp)
;; ;;(set-keyboard-coding-system 'sjis-mac)       ; mac2emacs
;; (set-clipboard-coding-system 'sjis-mac)      ; emacs2mac

;; (setq file-name-coding-system 'utf-8)

;; (setq network-coding-system-alist
;;       '(("nntp" . (junet-unix . junet-unix))
;;        (110 . (no-conversion . no-conversion))
;;        (25 . (no-conversion . no-conversion))
;;        ))

; translate clipboard
; Even if these lines are "live",
; Japanese text from safari cannot be pasted correctly.
;;(set-selection-coding-system 'sjis-mac)
;;(setq interprogram-cut-function
;;      '(lambda (str push)
;;	 (mac-cut-function
;;	  (encode-coding-string str selection-coding-system t) push)))
;;(setq interprogram-paste-function
;;      '(lambda ()
;;	 (decode-coding-string
;;	  (mac-paste-function) selection-coding-system t)))
