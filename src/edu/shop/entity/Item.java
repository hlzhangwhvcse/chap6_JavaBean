package edu.shop.entity;

public class Item 
{
	private String itemId;
    private String description;
    private double cost;
    private boolean empty;
    
//  public Item() //这是一个默认的无参数构造函数 思考：什么时候必须拥有一个零参数的默认构造函数？
//  {
//    
//  }
    
    //这是一个有参数的非默认构造函数,如果已经有了一个有参的构造函数,
    //则必须有一个无参的构造函数,因为如果需要创建无参的对象的时候就会报错
    //    public Item(String itemId) 
    //    {
    //        this.itemId = itemId;
    //    }
    
    public double getCost() 
    {
        return cost;
    }
    
    public void setCost(double cost) 
    {
        this.cost = cost;
    }
    
    public String getItemId() 
    {
        return itemId;
    }
    
    public void setItemId(String itemId) 
    {
        this.itemId = itemId;
    }

    public String getDescription() 
    {
        return description;
    }
    
    public void setDescription(String description) 
    {
        this.description = description;
    }
    
  //public boolean getEmpty() 
    public boolean isEmpty() 
    {
        return empty;
    }
    
}
