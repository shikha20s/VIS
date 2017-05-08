class Hour extends Thread
{
	public void run()
	{
		for (int i = 0;i<=24;i++)
		{
			//System.out.println(i);
			for(int j=0;j<60;j++)
			{
				
				
				for(int k = 0;k<60;k++)
				{
					System.out.println(i+" : " +j+" : "+k);
					try
					{
						Thread.sleep(1000);
					}
					catch(Exception e)
					{
						System.out.println(e);
					}
				}
			}
		}
	}
}

class Clock
{
	public static void main(String args[])
	{
		Hour h = new Hour();
		h.start();
	}
}
