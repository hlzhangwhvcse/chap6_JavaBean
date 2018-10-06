package bean;

public class UserDoRegist 
{
	private String username;
	private String password;
	private boolean mark = true;

	public UserDoRegist() {

	}

	public void setUsername(String username) 
	{
		this.username = username;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}

	public String getUsername() 
	{
		return this.username;
	}

	public String getPassword() 
	{
		return this.password;
	}

	//注册
	public boolean doRegist() 
	{

		if (this.username.equals("whvcse")) //此处代码可扩展，用jdbc到数据库中查询是否存在相同用户名
		{
		    mark = false;
		} 
		else 
		{
			mark = true;
		}
		return mark;
	}
}
