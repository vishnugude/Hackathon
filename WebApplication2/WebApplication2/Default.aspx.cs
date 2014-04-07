using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using RDotNet;
using System.Diagnostics;


namespace WebApplication2
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (userid.Text != "")
            {
                File.WriteAllText(@"C:\Users\vgz8b\Downloads\BD801EN_Introduction_R_labs_2013-Nov-11\r_lab_files\labs-r\userid.txt", userid.Text);
                Process p = new Process();
                // Redirect the output stream of the child process.

                //p.StartInfo.Verb = "runas";
                p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                p.StartInfo.UseShellExecute = false;
                p.StartInfo.RedirectStandardOutput = true;
                p.StartInfo.Arguments = "/user:Administrator cmd /K ";
                p.StartInfo.FileName = @"C:\Users\vgz8b\Documents\Visual Studio 2010\Projects\ConsoleApplication4\ConsoleApplication4\bin\Debug\ConsoleApplication4.exe";
                p.Start();
                // Do not wait for the child process to exit before
                // reading to the end of its redirected stream.
                // p.WaitForExit();
                // Read the output stream first and then wait.

                p.WaitForExit();
                test.InnerHtml = "<p><ul>";
                string[] lines=File.ReadAllLines(@"C:\Users\vgz8b\Downloads\BD801EN_Introduction_R_labs_2013-Nov-11\r_lab_files\labs-r\myresults.txt");
                foreach (string line in lines)
                {
                    // Use a tab to indent each line of the file.
                    test.InnerHtml +="<li>" + line+"</li>";
                }
                test.InnerHtml += "</p></ul>";
                test.InnerHtml += "<h4>Jokes Recommendation</h4>";
                test.InnerHtml += "<p><ul>";
                string[] linest = File.ReadAllLines(@"C:\Users\vgz8b\Downloads\BD801EN_Introduction_R_labs_2013-Nov-11\r_lab_files\labs-r\myjokes.txt");
                foreach (string line in linest)
                {
                    // Use a tab to indent each line of the file.
                    test.InnerHtml += "<li>" + line + "</li>";
                }
                test.InnerHtml += "</p></ul>";
            
            }
        }
    }
}
