(menu-bar-mode nil)
(tool-bar-mode -1)
(setq visible-bell t)
(blink-cursor-mode 0)
(setq-default cursor-in-non-selected-windows nil)
(setq-default line-spacing 0.2)

(setq initial-frame-alist '((top . -0) (left . 0) (width . 80)
;			    (height . 52)
			    ))

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if (display-graphic-p)
      (progn
	;; for the height, subtract a couple hundred pixels
	;; from the screen height (for panels, menubars and
	;; whatnot), then divide by the height of a char to
	;; get the height we want
	(add-to-list 'default-frame-alist
		     (cons 'height
			   (/ (x-display-pixel-height) (frame-char-height)))
		     ))))
(set-frame-size-according-to-resolution)
