using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RDotNet;
using System.IO;

namespace ConsoleApplication4
{
    class Program
    {
        static void Main(string[] args)
        {
            var envPath = Environment.GetEnvironmentVariable("PATH");
            var rBinPath = @"C:\Program Files\R\R-3.0.2\bin\i386";
            Environment.SetEnvironmentVariable("PATH", envPath + Path.PathSeparator
                + rBinPath);

            //Create and initialize an REngine instance
            using (REngine engine = REngine.CreateInstance("RDotNet"))
            {
                engine.Initialize();

                engine.Evaluate(@"source('C:/Users/vgz8b/Downloads/BD801EN_Introduction_R_labs_2013-Nov-11/r_lab_files/labs-r/movie.R')");
                engine.Evaluate(@"source('C:/Users/vgz8b/Downloads/BD801EN_Introduction_R_labs_2013-Nov-11/r_lab_files/labs-r/jester.R')");
                engine.Evaluate(@"source('C:/Users/vgz8b/Downloads/BD801EN_Introduction_R_labs_2013-Nov-11/r_lab_files/labs-r/jester_v.R')");
                engine.Evaluate(@"source('C:/Users/vgz8b/Downloads/BD801EN_Introduction_R_labs_2013-Nov-11/r_lab_files/labs-r/visual.R')");
               
            }
        }
    }
}
