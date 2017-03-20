import java.util.Calendar;
import java.util.Date;

public class CalendarDate {

public CalendarDate () {
   c = Calendar.getInstance();
   d = new Date();
}

public static void main (String [] args) {
   CalendarDate cd = new CalendarDate();
   System.out.println("java.util.Calendar\nDate/Time: " + c.getTime() + "\t" + c.getTimeInMillis());
   System.out.println("java.util.Date\nDate/Time: " + d + "\t" + d.getTime());
}

private static Calendar c;
private static Date d;

}

