<%

        Class.forName("oracle.jdbc.driver.OracleDriver");
		String conString="jdbc:oracle:thin:@localhost:1521:xe";
		Connection con=DriverManager.getConnection(conString,"system","vatsal");
%>