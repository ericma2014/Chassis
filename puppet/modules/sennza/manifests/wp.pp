define sennza::wp (
	$location,
	$database = 'wordpress',
	$database_user = 'root',
	$database_password = 'password',
	$database_host = 'localhost'
) {
	sennza::site { $name:
		location => $location,
		database => $database,
		database_user => $database_user,
		database_password => $database_password,
		database_host => $database_host,
	}

	file { '/vagrant/local-config-db.php':
		content => template('sennza/local-config-db.php.erb')
	}
}