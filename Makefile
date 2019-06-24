log:
	alp -f /var/log/h2o/access.log
prebench:
	sudo cp /dev/null /var/log/h2o/access.log
	sudo systemctl restart mariadb.service
	sudo systemctl restart h2o
