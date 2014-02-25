


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.LinkedList;
import java.util.List;



public class MyPreparedStatement {

    // FIELDS
    private String     sqlStmt;    // SQL command in PreparedStatement like syntax
    private List<Data> params;    // The parameters to be used in SQL command

    public MyPreparedStatement() {
        params = new LinkedList<Data>();
    }

    /**
     * Constructs a new MyPreparedStatement object.
     *
     * @param sqlStmt   SQL command in PreparedStatement like syntax (with '?')
     */
    public MyPreparedStatement(String sqlStmt) {
        this.sqlStmt = sqlStmt;
        params       = new LinkedList<Data>();
    }

    public void setStatement(String sqlStmt) {
        this.sqlStmt = sqlStmt;
    }

    /**
     * @return  the SQL command in PreparedStatement like syntax
     */
    public String getStatement() {
        return sqlStmt;
    }

    public void addInteger(Integer value) {
        params.add(new Data(Data.Type.INTEGER, value));
    }

    public void addLong(Long value) {
        params.add(new Data(Data.Type.LONG, value));
    }

    public void addBoolean(boolean value) {
        params.add(new Data(Data.Type.BOOLEAN, value));
    }

    public void addString(String value) {
        params.add(new Data(Data.Type.STRING, value));
    }

    /**
     * Returns a PreparedStatement object using the SQL command, the parameters
     * and the given connection.
     *
     * @param con
     * @return
     * @throws SQLException
     */
    public PreparedStatement generateStatement(Connection con)
            throws SQLException {

        PreparedStatement pstmt = con.prepareStatement(sqlStmt);

        for (int i = 0; i < params.size(); i++) {
            Data   param = params.get(i);
            Object o     = param.getValue();

            switch (param.getType()) {

            case BOOLEAN :
                pstmt.setBoolean(i + 1, (Boolean) o);

                break;

            case INTEGER :
                pstmt.setInt(i + 1, (Integer) o);

                break;

            case LONG :
                pstmt.setLong(i + 1, (Long) o);

                break;

            case STRING :
                pstmt.setString(i + 1, (String) o);

                break;
            }
        }

        return pstmt;

    }

    public String toLogString() {

        StringBuffer buf = new StringBuffer();

        buf.append("Statement : " + sqlStmt + "\n");
        buf.append("Values : ");

        for (int i = 0; i < params.size(); i++) {
            Data   param = params.get(i);
            Object o     = param.getValue();

            switch (param.getType()) {

            case BOOLEAN :
                buf.append(i + 1 + ". " + (Boolean) o);

                break;

            case INTEGER :
                buf.append(i + 1 + ". " + (Integer) o);

                break;

            case LONG :
                buf.append(i + 1 + ". " + (Long) o);

                break;

            case STRING :
                buf.append(i + 1 + ". " + (String) o);

                break;
            }

            buf.append(" , ");
        }

        return buf.toString();

    }

    static class Data {

        public enum Type {
            BOOLEAN, INTEGER, LONG, STRING
        }

        ;
        private Type   type;
        private Object value;

        public Data(Type type, Object value) {
            this.type  = type;
            this.value = value;
        }

        public Type getType() {
            return type;
        }

        public Object getValue() {
            return value;
        }

    }
}

