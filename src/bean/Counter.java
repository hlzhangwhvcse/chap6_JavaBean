package bean;

public class Counter 
{
	private int count;
	
	public int getCount() 
	{
		count++;
//		count = count + 1;
		return count;
	}
	
	public void setCount(int count) 
	{
		this.count = count;
	}

}
