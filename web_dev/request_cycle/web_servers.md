## What are some of the key design philosophies of the Linux operating system?
* Small is Beautiful
* Each Program Does One Thing Well
* Prototype as Soon as Possible
* Choose Portability Over Efficiency
* Store Data in Flat Text Files
* Use Software Leverage
* Use Shell Scripts to Increase Leverage and Portability
* Avoid Captive User Interfaces
* Make Every Program a Filter
source: https://opensource.com/business/15/2/how-linux-philosophy-affects-you

## In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A virtual private server is a virtual machine that runs its own, separate copy of the operating systems so that user of the virtual machine can have superuser-level access to the operating system instance. Virtual servers appear to the user as dedicated servers but is actually on a computer that serves multiple websites.

## Why is it considered a bad idea to run programs as the root user on a Linux system?
Because root user has full permissions, mistakes, bugs and malware can have drastic effects and cause more harm (e.g., change programs in /bin, add backdoors, delete critical files).
