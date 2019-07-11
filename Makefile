log:
	alp -f /var/log/h2o/access.log --aggregates "/api/events/\d+/actions/reserve, /admin/api/reports/events/\d+/sales, /api/events/\d+/sheets/[A|B|C|D|S]/\d+/reservation, /api/users/\d+, /admin/api/events/\d+, /admin/api/events/\d+/action/edit, /api/events/\d+, /js/, /css/" --avg
prebench:
	sudo cp /dev/null /var/log/h2o/access.log
	sudo systemctl restart mariadb.service
	sudo systemctl restart h2o
	sudo systemctl restart torb.go.service

clean_log:
	sudo cp /dev/null /var/log/h2o/access.log
pprof:
	pprof /home/isucon/torb/webapp/go/torb http://localhost:5050/debug/pprof/profile
