package woven_bankwithlogging;

//This is the bank logging composition which inherits our reusable logger
/*In order to use logging functionality with another application, 
 * simply tweak the method and constructor calls below to reflect your desired ones */

public aspect BankComposition extends ReusableLogger{

	public pointcut MethodCall(int i, Object obj) : call(* Account.*(..)) && args(i) && target(obj);
	
	public pointcut ConstructorCall1( ) : call(Customer.new(String));
	public pointcut ConstructorCall2( ) : call(Account.new(int,Customer));
}