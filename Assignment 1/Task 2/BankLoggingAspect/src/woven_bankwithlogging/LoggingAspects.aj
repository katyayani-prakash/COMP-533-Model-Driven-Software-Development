package woven_bankwithlogging;

public aspect LoggingAspects {
	
	after() returning (Customer name) : call(Customer.new(..)) {
		String stringToLog = "Created object " + name;
        Logger.log(stringToLog);
	}
	
	after() returning (Account a) : call(Account.new(..)) {
		String stringToLog = "Created object " + a;
        Logger.log(stringToLog);
	}
	
//	pointcut anyCall(int i, Foo callee) : call(* *.*(int)) && args(i) && target(callee);
	public pointcut CallDeposit(int amount, Account a) : call(* Account.deposit(..)) && args(amount) && target(a);
	before(int amount, Account a) : CallDeposit(amount, a) {
        String stringToLog = "deposit called on object " + a + " with parameter " + amount;
        Logger.log(stringToLog);
        }

	public pointcut CallWithdraw(int amount, Account a) : call(* Account.withdraw(..)) && args(amount) && target(a);
	before(int amount, Account a) : CallWithdraw(amount, a) {
        String stringToLog = "withdraw called on object " + a + " with parameter " + amount;
        Logger.log(stringToLog);
        }

}