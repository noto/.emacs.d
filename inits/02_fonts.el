;; Monaco 12pt をデフォルトにする
(set-face-attribute 'default nil
                    :family "Monaco"
                    :height 120)
;; 日本語をヒラギノ角ゴProNにする
(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic ProN"))
;; 半角カナをヒラギノ角ゴProNにする
(set-fontset-font "fontset-default"
                  'katakana-jisx0201
                  '("Hiragino Kaku Gothic ProN"))
;; 半角:全角を 1:2 にする ( http://d.hatena.ne.jp/sugyan/20120828/1346082898 )
(setq face-font-rescale-alist
      '(("Hiragino.*" . 1.2)))


;; old

; http://macemacsjp.sourceforge.jp/matsuan/FontSettingJp.html
; "hirakaku_w3" "hirakaku_w6" "hirakaku_w8" "hiramin_w3" "hiramin_w6" "osaka"
; 7, 8, 9, 10, 12, 14, 16, 18, 20, 24

;; comment-out for 24.3
; (if (eq window-system 'mac) (require 'carbon-font))
; (fixed-width-set-fontset "hirakaku_w3" 12)

;; comment-out for Snow Leopard (2009-09-06)
;(set-default-font "fontset-monaco12")
;(setq default-frame-alist (append '((font . "fontset-monaco12"))))
