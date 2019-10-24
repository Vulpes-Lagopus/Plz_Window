/**
 * Copyright(c) 2001 iSavvix Corporation (http://www.isavvix.com/)
 *
 *                        All rights reserved
 *
 * Permission to use, copy, modify and distribute this material for
 * any purpose and without fee is hereby granted, provided that the
 * above copyright notice and this permission notice appear in all
 * copies, and that the name of iSavvix Corporation not be used in
 * advertising or publicity pertaining to this material without the
 * specific, prior written permission of an authorized representative of
 * iSavvix Corporation.
 *
 * ISAVVIX CORPORATION MAKES NO REPRESENTATIONS AND EXTENDS NO WARRANTIES,
 * EXPRESS OR IMPLIED, WITH RESPECT TO THE SOFTWARE, INCLUDING, BUT
 * NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR ANY PARTICULAR PURPOSE, AND THE WARRANTY AGAINST
 * INFRINGEMENT OF PATENTS OR OTHER INTELLECTUAL PROPERTY RIGHTS.  THE
 * SOFTWARE IS PROVIDED "AS IS", AND IN NO EVENT SHALL ISAVVIX CORPORATION OR
 * ANY OF ITS AFFILIATES BE LIABLE FOR ANY DAMAGES, INCLUDING ANY
 * LOST PROFITS OR OTHER INCIDENTAL OR CONSEQUENTIAL DAMAGES RELATING
 * TO THE SOFTWARE.
 *
 */

package plzWindow.board;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.Vector;

/**
 * Manages a java.sql.Connection pool.
 *
 * @author  Anil Hemrajani
 */
public class DBConnectionMgr {

    //
	//private MemberDBMgr mem =null;
    private Vector connections = new Vector(10);//而ㅻ꽖�뀡�� ���옣�겕湲�
    /*   MySQL =>�쉶�썝由ъ뒪�듃(�쉶�썝愿�由�)  */
    
    
    //(1) 硫ㅻ쾭蹂��닔 �꽑�뼵
    private String _driver,_url,_user,_password;
    /*
	private String _driver = "org.gjt.mm.mysql.Driver",
    _url = "jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=UTF-8",
    _user = "root",  //怨꾩젙紐�(愿�由ъ옄)
    _password = "1234"; //�븫�샇
    */
	/*
	 * private String _driver = "oracle.jdbc.driver.OracleDriver", _url =
	 * "jdbc:oracle:thin:@localhost:1521:orcl", _user = "scott", _password =
	 * "tiger";
	 */

    private boolean _traceOn = false;
    private boolean initialized = false;
	
	//커占쌔쇽옙占쏙옙 10占쏙옙 占쌔븝옙
    private int _openConnections = 10;

    //커占쌔쇽옙풀占쏙옙체占쏙옙 占쏙옙占쏙옙
    private static DBConnectionMgr instance = null;

    //(2)dbmysql.properties�뙆�씪�쓣 �씫�뼱�뱾�뿬�꽌 �궎->媛믪쓣 遺덈윭�삤湲�
    public DBConnectionMgr() throws IOException {
    	Properties props=new Properties();
    	FileInputStream in=new FileInputStream
    			("C:/Users/kitcoop/git/Plz_Window/WebContent/PlzWindowShop/dbtest/dbmysql.properties");
    	props.load(in);//�뙆�씪�쓽 �궡�슜 硫붾え由ъ뿉 遺덈윭�삤湲�
    	in.close();
    	_driver=props.getProperty("jdbc.drivers");
    	//�뱶�씪�씠釉뚮쭔 �떆�뒪�뀥�뿉 諛섏쁺
    	if(_driver!=null)  System.setProperty("jdbc.drivers", _driver);//�벑濡�
    	//-------------------------------------------------------------------
    	_url=props.getProperty("jdbc.url");
    	_user=props.getProperty("jdbc.username");
    	_password=props.getProperty("jdbc.password");
    	System.out.println("_driver=>"+(_driver)+",_url=>"+(_url));
    	System.out.println("_user=>"+(_user)+",_password=>"+(_password));
    }

    /** Use this method to set the maximum number of open connections before
     unused connections are closed.
     */
  
    //而ㅻ꽖�뀡���쓣 �뼸�뼱�삤�뒗 �젙�쟻硫붿꽌�뱶
    public static DBConnectionMgr getInstance() throws Exception{
        //而ㅻ꽖�뀡���씠 �깮�꽦�씠 �븞�릺�뼱�엳�떎硫�
		if (instance == null) {
            synchronized (DBConnectionMgr.class) {
                //�깮�꽦�씠 �븞�릺�뼱�엳�떎硫�
				if (instance == null) {
					//媛앹껜�깮�꽦
                    instance = new DBConnectionMgr();
                }
            }
        }
        return instance;//�샇異쒗븳 �겢�옒�뒪履쎌쑝濡� 諛섑솚
    }
    //----------------------------------------------------------------------
    public void setOpenConnectionCount(int count) {
        _openConnections = count;
    }


    public void setEnableTrace(boolean enable) {
        _traceOn = enable;
    }


    /** Returns a Vector of java.sql.Connection objects */
    public Vector getConnectionList() {
        return connections;
    }


    /** Opens specified "count" of connections and adds them to the existing pool */
    //占십기에 占쏙옙占써객체占쏙옙 占쏙옙占쏙옙占쏙옙占쌍댐옙 占쌨소듸옙

	public synchronized void setInitOpenConnections(int count)
            throws SQLException {

        Connection c = null;//占쏙옙占쏙옙占쏙옙 占쏙옙체
        ConnectionObject co = null;//占쏙옙占쏙옙占쏙옙 占쏙옙占써객체
		                           //占쏙옙占쏙옙占쏙옙占쌍댐옙 占쏙옙체

        for (int i = 0; i < count; i++) {
			//count占쏙옙占쏙옙占쏙옙큼 占쏙옙占써객체占쏙옙 占쏙옙占쏙옙
            c = createConnection();
			//占쏙옙占싶울옙 占쏙옙占쏙옙占� 占쏙옙占써객체,占쎈여占쏙옙占쏙옙
            co = new ConnectionObject(c, false);
             //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占싶울옙 占쏙옙占써객체占쏙옙 占쌩곤옙
            connections.addElement(co);
            trace("ConnectionPoolManager: Adding new DB connection to pool (" + connections.size() + ")");
        }
    }


    /** Returns a count of open connections */
    public int getConnectionCount() {
        return connections.size();
    }


    /** Returns an unused existing or new connection.  */
    //占쏙옙占써객체占쏙옙 占쏙옙占쏙옙占쏙옙 占쌨소듸옙

	public synchronized Connection getConnection()
            throws Exception {
        if (!initialized) {
			//占쏙옙占쏙옙占쏙옙 DB占쏙옙 占쏙옙占쏙옙譴占쏙옙占� 占쌨모리울옙 占싸듸옙
            Class c = Class.forName(_driver);
			//占쌘듸옙 占쏙옙占�(占쏙옙占쏙옙譴占신э옙占쏙옙占�)
            DriverManager.registerDriver((Driver) c.newInstance());

            initialized = true;//占쏙옙占쌈삼옙占쏙옙 
        }


        Connection c = null;
        ConnectionObject co = null;
		//占쏙옙占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙 占쏙옙占써객체
        boolean badConnection = false;


        for (int i = 0; i < connections.size(); i++) {
			//占쏙옙占싶울옙 占쏙옙載� 占쏙옙占써객체占쏙옙 占쏙옙占쏙옙占승댐옙.
            co = (ConnectionObject) connections.elementAt(i);

            // If connection is not in use, test to ensure it's still valid!
            if (!co.inUse) {//占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占승띰옙占� 
                try {
					//占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占써객체 占쏙옙占쏙옙
                    badConnection = co.connection.isClosed();
                    if (!badConnection)
                        badConnection = (co.connection.getWarnings() != null);
                } catch (Exception e) {
                    badConnection = true;
                    e.printStackTrace();
                }

                // Connection is bad, remove from pool
                if (badConnection) { //占쏙옙占쏙옙占십곤옙 占쏙옙占쏙옙占쏙옙
				    //占쏙옙占싶울옙占쏙옙 占쏙옙占쏙옙占싹띰옙
                    connections.removeElementAt(i);
                    trace("ConnectionPoolManager: Remove disconnected DB connection #" + i);
                    continue;
                }

                c = co.connection;
                co.inUse = true;//占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙

                trace("ConnectionPoolManager: Using existing DB connection #" + (i + 1));
                break;
            }
        }
        //占쏙옙청占쏙옙 占쏙옙占승다몌옙(占쏙옙占쏙옙占싹다몌옙)
        if (c == null) {
            c = createConnection();
            co = new ConnectionObject(c, true);
            connections.addElement(co);//占쏙옙占싶울옙占쌩곤옙

            trace("ConnectionPoolManager: Creating new DB connection #" + connections.size());
        }

        return c;//占쏙옙환
    }


    /** Marks a flag in the ConnectionObject to indicate this connection is no longer in use */
    //占쌥놂옙占쏙옙占쌍댐옙 占쌨소듸옙
	public synchronized void freeConnection(Connection c) {
        if (c == null)//占쌥놂옙占쏙옙占쌍댐옙 占쏙옙占써객체占쏙옙 占쏙옙占쏙옙占쏙옙
            return;

        ConnectionObject co = null;

        for (int i = 0; i < connections.size(); i++) {
            co = (ConnectionObject) connections.elementAt(i);
            //占쌥놂옙占쏙옙 占쏙옙占써객체==占쌨모리삼옙占쏙옙 찾占쏙옙 占쏙옙체
			if (c == co.connection) {
                co.inUse = false;//占쌥놂옙처占쏙옙
                break;
            }
        }

        for (int i = 0; i < connections.size(); i++) {
            co = (ConnectionObject) connections.elementAt(i);
            //10占싱삼옙占쏙옙 占싼거놂옙 
			//占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占써객체占쏙옙 占쏙옙占쏙옙占쏙옙
			if ((i + 1) > _openConnections && !co.inUse)
                removeConnection(co.connection);
        }
    }

    public void freeConnection(Connection c, PreparedStatement p, ResultSet r) {
        try {
            if (r != null) r.close();
            if (p != null) p.close();
            freeConnection(c);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void freeConnection(Connection c, Statement s, ResultSet r) {
        try {
            if (r != null) r.close();
            if (s != null) s.close();
            freeConnection(c);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void freeConnection(Connection c, PreparedStatement p) {
        try {
            if (p != null) p.close();
            freeConnection(c);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void freeConnection(Connection c, Statement s) {
        try {
            if (s != null) s.close();
            freeConnection(c);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    /** Marks a flag in the ConnectionObject to indicate this connection is no longer in use */
    public synchronized void removeConnection(Connection c) {
        if (c == null)
            return;

        ConnectionObject co = null;
        for (int i = 0; i < connections.size(); i++) {
            co = (ConnectionObject) connections.elementAt(i);
            if (c == co.connection) {
                try {
                    c.close();
                    connections.removeElementAt(i);
                    trace("Removed " + c.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                }

                break;
            }
        }
    }


    private Connection createConnection()
            throws SQLException {
        Connection con = null;

        try {
            if (_user == null)
                _user = "";
            if (_password == null)
                _password = "";

            Properties props = new Properties();
            props.put("user", _user);
            props.put("password", _password);

            con = DriverManager.getConnection(_url, props);
        } catch (Throwable t) {
            throw new SQLException(t.getMessage());
        }

        return con;
    }


    /** Closes all connections and clears out the connection pool */
    public void releaseFreeConnections() {
        trace("ConnectionPoolManager.releaseFreeConnections()");

        Connection c = null;
        ConnectionObject co = null;

        for (int i = 0; i < connections.size(); i++) {
            co = (ConnectionObject) connections.elementAt(i);
            if (!co.inUse)
                removeConnection(co.connection);
        }
    }


    /** Closes all connections and clears out the connection pool */
    public void finalize() {
        trace("ConnectionPoolManager.finalize()");

        Connection c = null;
        ConnectionObject co = null;

        for (int i = 0; i < connections.size(); i++) {
            co = (ConnectionObject) connections.elementAt(i);
            try {
                co.connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            co = null;
        }

        connections.removeAllElements();
    }


    private void trace(String s) {
        if (_traceOn)
            System.err.println(s);
    }

}

//inner class占쏙옙 占쏙옙占쏙옙
class ConnectionObject {
	//占쏙옙占쏙옙占쏙옙 占쏙옙占써객체
    public java.sql.Connection connection = null;
    public boolean inUse = false;//占쎈여占쏙옙占쏙옙

    public ConnectionObject(Connection c, boolean useFlag) {
        connection = c;
        inUse = useFlag;
    }
}
