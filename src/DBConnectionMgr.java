import java.util.Vector;

import java.sql.*;

public class DBConnectionMgr {

	//MariaDB연결
	
	private String _driver = "org.mariadb.jdbc.Driver",
		    _url = "jdbc:mariadb://localhost:3306/mydb",
		    _user = "root",
		    _password = "1234"; 
			

