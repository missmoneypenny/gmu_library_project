public class SQLiteHelper {
	public static DataSource getDataSource(String dbUrl) {
		SQLiteDataSource ds = new SQLiteDataSource();
		ds.setUrl(dbUrl);
		return ds;
	}
}