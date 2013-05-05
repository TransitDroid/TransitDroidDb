import java.sql.SQLException;

import transitdroid.data.card.CardTDG;
import transitdroid.data.pass.daily.DailyPassTDG;
import transitdroid.data.pass.monthly.MonthlyPassTDG;
import transitdroid.data.pass.nightly.NightlyPassTDG;
import transitdroid.data.pass.single.SinglePassTDG;
import transitdroid.data.pass.threeday.ThreeDayPassTDG;
import transitdroid.data.pass.yearly.YearlyPassTDG;
import transitdroid.data.user.UserRolesTDG;
import transitdroid.data.user.UserTDG;


public class Driver {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			UserTDG.dropTable();
			UserTDG.createTable();
			CardTDG.dropTable();
			CardTDG.createTable();
			DailyPassTDG.dropTable();
			DailyPassTDG.createTable();
			MonthlyPassTDG.dropTable();
			MonthlyPassTDG.createTable();
			NightlyPassTDG.dropTable();
			NightlyPassTDG.createTable();
			SinglePassTDG.dropTable();
			SinglePassTDG.createTable();
			ThreeDayPassTDG.dropTable();
			ThreeDayPassTDG.createTable();
			YearlyPassTDG.dropTable();
			YearlyPassTDG.createTable();
			UserRolesTDG.dropTable();
			UserRolesTDG.createTable();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
