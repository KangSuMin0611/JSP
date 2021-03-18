package javaworks;

public class Child extends Parents {
	
	public static void main(String[] args) {
		
		Parents p = new Parents();
		System.out.println(p.par);
		Child c = new Child();
		System.out.println(c.par);
		
	}
	
}
