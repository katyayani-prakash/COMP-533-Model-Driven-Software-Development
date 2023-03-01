Task 3 : Modularized the logging fuctionalities into a reusable aspect file called "ReusableLogger.aj"
	 Wrote a bank composition called "BankComposition.aj" that extends this abstract reusable logger, to use it for our banking application.
-------------------------------------------------------------------------------------------------------------------------------------------------
	 
In order to reuse the logger as per your needs, simply tweak the method and contructor calls of composition file "BankComposition.aj" to
reflect your own requirements. 

-------------------------------------------------------------------------------------------------------------------------------------------------
To compile and run, please see below commands:

Compilation Command:
ajc -classpath="C:\aspectj1.9\lib\aspectjrt.jar" -source 1.8 -target 1.8 woven_bankwithlogging/*.java woven_bankwithlogging/*.aj

Running Command:
java -cp .;C:\aspectj1.9\lib\aspectjrt.jar woven_bankwithlogging.BankWithLogging

-------------------------------------------------------------------------------------------------------------------------------------------------
I've also added a snapshot of output which contains commands and logging statements for better readability, if needed.