package bean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatDate 
{
	private Date nowtime;
	private String dateStyle = "yyyy-MM-dd hh:mm:ss";
    private SimpleDateFormat format = new SimpleDateFormat(dateStyle);
    
    //获取格式化后的当前时间
    public String getNowtime()
    {
    	nowtime = new Date();
    	String strnowtime = format.format(nowtime);
    	return strnowtime;
    }
	
}
