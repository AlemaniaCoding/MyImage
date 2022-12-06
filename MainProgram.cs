using System.IO;

namespace MyImage{
    class MainProgram{
        static void Main(string[] args){
            RunPowerShell runPowerShell = new RunPowerShell();

            Console.WriteLine("Herzlichen Willkommen zu MyImage (Beta v1)");
            Console.WriteLine("Hier können Sie Images erstellen und entpacken.");
            Console.WriteLine("Ihre Optionen: ");
            Console.WriteLine("[1] Image erstellen");
            Console.WriteLine("[2] Image entpacken");
            Console.Write("Wählen Sie aus: ");

            int auswahlOption = int.Parse(Console.ReadLine());
            Console.WriteLine("Sie haben "+auswahlOption+" ausgewählt.");
            
            switch(auswahlOption){
                case 1:
                    Console.WriteLine("Image erstellen");
                    runPowerShell.RunPowershellScript("capture_Image.ps1");
                    break;
                case 2:
                    Console.WriteLine("Image entpacken");
                    break;
                default: 
                    Console.WriteLine("Es wurde keine Option gewählt.");
                    break;
            }
        }
    }
}