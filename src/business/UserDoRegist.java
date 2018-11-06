package business;

public class UserDoRegist 
{
	private String username;
	private String password;
	
//	public UserDoRegist() 
//	{
//		
//	}
	
	
	public String getUsername() 
	{
		//return this.username;
		return username;
	}
	
	public void setUsername(String username) 
	{
		this.username = username;
	}

	public String getPassword() 
	{
		//return this.password;
		return password;
	}
	
	public void setPassword(String password) 
	{
		this.password = password;
	}

	//注册
	public String doRegist() 
	{
		String message = "";
		
		if("" == username || "" == password) 
		{
			return message;
		}
		
		if (username.equals("whvcse")) //此处代码可扩展，用jdbc到数据库中查询是否存在相同用户名
		{
			message = "对不起！您输入的用户名" + username + "已存在";
		} 
		else if(password.length() < 6) 
		{
			message = "对不起！您输入的密码小于6位！";
		}
		else 
		{
			message = "注册成功";
		}
		
		return message;
	}

}
