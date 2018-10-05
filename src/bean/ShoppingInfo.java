package bean;

import java.util.Vector;

public class ShoppingInfo 
{
	private Vector items = new Vector();

	private int index;

	public Vector getItems() 
	{
		return items;
	}

	public void setItems(Vector items) 
	{
		this.items = items;
	}

	public int getIndex() 
	{
		index++;
		return index;
	}

	public float getTotalPrice() 
	{
		float totalPrice = 0;
		for (int i = 0; i < items.size(); i++) 
		{
			ItemShopping item = (ItemShopping) items.get(i);
			totalPrice = totalPrice + item.getPrice() * item.getAmount();
		}
		return totalPrice;
	}
	
	public void delItem(int id)
	{
		for (int i = 0; i < items.size(); i++) 
		{
			ItemShopping item = (ItemShopping) items.get(i);
			if(item.getId() == id)
			{
				items.remove(item);
				break;
			}
		}
	}
}
