-- Allow root user to connect from any host
ALTER USER 'root' @'localhost' IDENTIFIED BY '1234';

CREATE USER 'root' @'%' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON *.* TO 'root' @'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- Verify the users
SELECT user, host FROM mysql.user WHERE user = 'root';