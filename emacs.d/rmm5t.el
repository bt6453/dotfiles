(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/rmm5t/custom.el")
(load custom-file 'noerror)

(load "rmm5t/theme")
(load "rmm5t/env")
(load "rmm5t/global")
(load "rmm5t/defuns")
(load "rmm5t/bindings")
(load "rmm5t/tabs")
(load "rmm5t/disabled")
(load "rmm5t/fonts")
(load "rmm5t/utf-8")
(load "rmm5t/scratch")
(load "rmm5t/grep")
(load "rmm5t/diff")
;(load "rmm5t/ido") ; currently configured with flx instead
(load "rmm5t/dired")
(load "rmm5t/recentf")
(load "rmm5t/rectangle")
(load "rmm5t/org")
(load "rmm5t/zoom")
(load "rmm5t/flymake")
(load "rmm5t/javascript")
(load "rmm5t/ri-emacs")
(load "rmm5t/mac")
(load "rmm5t/server-mode")
(load "rmm5t/shell-mode")
(load "rmm5t/ruby-mode")
(load "rmm5t/saveplace")
(load "rmm5t/private" 'noerror)

;; (load "rmm5t/hl-line")
;; (load "rmm5t/iswitchb")

(vendor 'flx)
(vendor 'expand-region 'er/expand-region)
(vendor 'multiple-cursors 'mc/edit-lines 'mc/mark-next-like-this 'mc/mark-previous-like-this 'mc/mark-all-like-this 'set-rectangular-region-anchor)
(vendor 'jump-char     'jump-char-forward 'jump-char-backward)
(vendor 'rinari)
(vendor 'textmate)
(vendor 'maxframe      'mf 'maximize-frame)
(vendor 'filladapt)
(vendor 'coffee-mode)
(vendor 'haml-mode)
(vendor 'sass-mode)
(vendor 'htmlize)
(vendor 'ack-and-a-half 'ack-and-a-half 'ack-and-a-half-same 'ack-and-a-half-find-file 'ack-and-a-half-find-file-same 'ack-and-a-half-interactive)
(vendor 'cdargs        'cv 'cdargs)
(vendor 'magit         'magit-status)
(vendor 'psvn          'svn-status)
(vendor 'js2-mode      'js2-mode)
(vendor 'markdown-mode 'markdown-mode 'gfm-mode)
(vendor 'textile-mode  'textile-mode)
(vendor 'csv-mode      'csv-mode)
(vendor 'yaml-mode     'yaml-mode)
(vendor 'rcodetools    'xmp)
(vendor 'dropdown-list) ;; Needed before yasnippet
(vendor 'yasnippet)
(vendor 'jekyll)
(vendor 'lua-mode      'lua-mode)
(vendor 'feature-mode)
(vendor 'mode-line-bell)
(vendor 'revbufs       'revbufs)
(vendor 'shell-pop)
(vendor 'mo-git-blame  'mo-git-blame-file 'mo-git-blame-current)
(vendor 'ace-jump-mode 'ace-jump-mode 'ace-jump-word-mode 'ace-jump-char-mode 'ace-jump-line-mode)
(vendor 'key-chord)
(vendor 'bundler       'bundle-open 'bundle-console 'bundle-install 'bundle-update 'bundle-check)
(vendor 'browse-kill-ring+ 'browse-kill-ring)
(vendor 'browse-kill-ring  'NEVERLOAD-browse-kill-ring)
(vendor 'dired-details 'dired-details-show 'dired-details-hide 'dired-details-toggle)
(vendor 'dired-details+)
(vendor 'powerline)

;; (vendor 'ruby-electric 'ruby-electric-mode)
;; (vendor 'auctex)
