
public class Ex7_11 {

	public static void main(String[] args) {
		Child3 c = new Child3();
		c.method1();
		c.method2();
		MyInterface.staticMethod();
		MyInterface2.staticMethod();
	}
}

class Child3 extends Parent3 implements MyInterface, MyInterface2 {
	public void method1() {
		System.out.println("method1() in Child3");
	}
}

class Parent3 {
	public void method2() {
		System.out.println("method2() in Parent3");
	}
}

interface MyInterface {
	default void method1() {
		System.out.println("method1() is MyInterface");
	}
	
	default void method2() {
		System.out.println("method2() is MyInterface");
	}
	
	static void staticMethod() {
		System.out.println("staticMethod() is MyInterface");
	}
}

interface MyInterface2 {
	default void method1() {
		System.out.println("method1() is MyInterface2");
	}
	
	static void staticMethod() {
		System.out.println("staticMethod() is MyInterface2");
	}
}