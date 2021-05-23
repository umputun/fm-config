deploy:
	scp etc/fm.yml jess.umputun.com:/srv/etc/fm.yml
	scp images/* jess.umputun.com:/srv/images/

.PHONY: deploy
