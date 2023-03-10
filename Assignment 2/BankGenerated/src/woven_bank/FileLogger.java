package woven_bank;

import java.io.PrintWriter;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.File;

// Start of user code for imports
// End of user code

/**
 * FileLogger class definition.
 * Generated by the TouchCORE code generator.
 */
class FileLogger extends Logger {
    
    protected File destination;
    protected Account subject;
    
    FileLogger(Account subject, File destination) {
        this.subject = subject;
        this.destination = destination;
    }

    File getDestination() {
        return this.destination;
    }

    boolean setDestination(File newObject) {
        this.destination = newObject;
        return true;
    }

    Account getSubject() {
        return this.subject;
    }

    boolean setSubject(Account newObject) {
        this.subject = newObject;
        return true;
    }

    void log(String message) {
        boolean isLoggingToFileEnabled = subject.isLoggingToFileEnabled();
        if (isLoggingToFileEnabled) {
            try {
                FileWriter filewriter = new FileWriter(this.destination, true);
                BufferedWriter bufferedwriter = new BufferedWriter(filewriter);
                PrintWriter printwriter = new PrintWriter(bufferedwriter);
                printwriter.println(message);
                printwriter.close();
            } catch (Exception exception) {
                System.err.println("Failed to log to file " + destination);
            }
        }
    }
}
