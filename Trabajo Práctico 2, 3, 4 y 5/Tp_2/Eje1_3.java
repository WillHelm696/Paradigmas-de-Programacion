
public class Eje1_3{
	public static void main(String[] args){
		
		int a=1;
		int b=2;
		boolean v=a++<b;
		System.out.println("a=1 y b=2 -> a++<b 			:"+v);
		v=++a<b;
		System.out.println("a=1 y b=2 -> ++a<b 			:"+v);
		v=++a>=b;
		System.out.println("a=1 y b=2 -> ++a>=b 		:"+v);
		v=(a!=1);
		System.out.println("a=1  -> v=a!=b 			:"+v);
		v=b++<10 && a==1;
		System.out.println("a=1 y b=2 -> v=b++<10 && a==1 	:"+v);
		v=(b==1 && a>=1);
		System.out.println("a=1 y b=2 -> b==1 && a>=1 		:"+v);
		v=(b<10 || a++==2);
		System.out.println("a=1 y b=2 -> b<10 || a++==2 	:"+v);
		v=(-b<=1 || a<=10);
		System.out.println("a=1 y b=2 -> -b<=1 || a<=10 	:"+v);
		//v=(a-==2 || b==1);
		//System.out.println("a=1 y b=2 -> b==1 && a>=1 	:"+v);
		v=!(a==1 && ++b==1);
		System.out.println("a=1 y b=2 -> b==1 && a>=1 		:"+v);
	}
}
