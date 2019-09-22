package Admin;

//import java.io.IOException;
import java.io.IOException;
import java.lang.reflect.Executable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author RZK Technology
 */
public class Backup {

    boolean status;

    static String exe = "";
    static String source = "‪F:\\backups";
    String path = "";

    public boolean Backup() {
        status = false;
        try {
           
            path = source.replace('\\', '/');
            path += "_" + "Medicare_Backup" + ".sql";
            Process p = null;

            String username = "root";
            String password = "";
            String database = "echannel";
            int complete;

            path = "C:\\xampp\\mysql\\bin\\mysqldump.exe "+"-u" + username +" --database " + database + " -r " + path;

         

            Runtime runtime = Runtime.getRuntime();
            p = runtime.exec(path);
            complete = p.waitFor();
            if (complete == 0) {
                status = true;
                JOptionPane.showMessageDialog(null, "Backup Completed", "Success", JOptionPane.INFORMATION_MESSAGE);
                
            } else {
                status = false;
                JOptionPane.showMessageDialog(null, "Failed", "Backup Failed", JOptionPane.ERROR_MESSAGE);

            }
            
            
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
       
        return status;

    }
  
    

    boolean restore;

    public boolean Restore(String path) throws IOException, InterruptedException {
        restore = false;
        String database = "echannel";//database name
        String username = "root";//username of mysql
        String password = "";//password of myql
        String filepath = path;
        int complete;// this variable for verify the process

        String[] executeCmd = new String[]{"C:\\xampp\\mysql\\bin\\mysql.exe", "--user=" + username, "-e", " source " + filepath};
        //sava the command in a array
        Process runtimeProcess = Runtime.getRuntime().exec(executeCmd);// execute the command

        complete = runtimeProcess.waitFor();// get the result to variable

        if (complete == 0) {// if return value equal to 1 then failed the process
            restore = true;
            JOptionPane.showMessageDialog(null, "Restore Completed", "Success", JOptionPane.INFORMATION_MESSAGE);
            
        } else {
            restore = false;
            JOptionPane.showMessageDialog(null, "Failed", "Error", JOptionPane.ERROR_MESSAGE);

        }

        return restore;

    }
    
   


   

}
