package bean;

public class ToString 
{
	//对字符串进行utf-8编码
    public String toString(String stringvalue) {
        try {
            if (stringvalue == null) {
                return "";
            } else {
                stringvalue = new String(stringvalue.getBytes("ISO-8859-1"), "utf-8");
                return stringvalue;
            }
        } catch (Exception e) {
            return "";
        }
    }

}
