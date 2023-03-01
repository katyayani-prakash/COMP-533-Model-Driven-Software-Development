Task 2 : Modularized the logging fuctionalities into a separate aspect file called "LoggingAspects.aj"

----------------------------------------------------------------------------------------------------------------------------------
To compile and run, please see below commands:

Compilation Command:
ajc -classpath="C:\aspectj1.9\lib\aspectjrt.jar" -source 1.8 -target 1.8 woven_bankwithlogging/*.java woven_bankwithlogging/*.aj

Running Command:
java -cp .;C:\aspectj1.9\lib\aspectjrt.jar woven_bankwithlogging.BankWithLogging

-----------------------------------------------------------------------------------------------------------------------------------
I've also added a snapshot of output which contains commands and logging statements for better readability, if needed.