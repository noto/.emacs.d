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
