package woven_bankwithlogging;

//Abstract Aspect so that it can be extended to whichever composition is needed, thus making this reusable
public abstract aspect ReusableLogger {
	
	//Abstract pointcut for logging any method call
	public abstract pointcut MethodCall(int i, Object obj);
	before(int i, Object obj) : MethodCall(i, obj) {
        String stringToLog = thisJoinPoint.getSignature().getName() + " called on object " + obj + " with parameter " + i;
        Logger.log(stringToLog);
        }
	
	//Abstract pointcuts for logging any constructor calls
	/*Aspect J doesn't allow same pointcut to be called twice, 
	hence making 2 pointcuts for logging 2 different constructor calls, more can be added as needed */
	
	public abstract pointcut ConstructorCall1();
	after() returning(Object obj): ConstructorCall1() {
		String stringToLog = "Created object " + obj;
        Logger.log(stringToLog);
        }
	
	public abstract pointcut ConstructorCall2();
	after() returning(Object obj): ConstructorCall2() {
		String stringToLog = "Created object " + obj;
        Logger.log(stringToLog);
        }
}
