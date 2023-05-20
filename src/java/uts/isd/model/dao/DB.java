package uts.isd.model.dao;

import java.sql.Connection;

/**
 * @author Dev
 */

public abstract class DB {
    protected String URL = "jdbc:derby://localhost:1527/";   
    protected String db = "usersdb"; // name of the database   
    protected String dbuser = "iotbay"; //db root user   
    protected String dbpass = "admin"; //db root password   
    protected String driver = "org.apache.derby.jdbc.ClientDriver"; 
    protected Connection conn;
}
