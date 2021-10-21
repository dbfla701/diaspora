/*package egovframework.example.Date;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.context.annotation.Configuration;

@Configuration
public class CalendarDate {
	
	public void date(){
		
		 Calendar cal = Calendar.getInstance();
	        cal.setTime(new Date());
	        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	        System.out.println("current: " + df.format(cal.getTime()));
	        
	        cal.add(Calendar.DATE, -1);
	        System.out.println("after: " + df.format(cal.getTime()));
	}

}
*/