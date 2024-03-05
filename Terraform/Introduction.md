* Terraform is a tool for changing and versioning infrastructure safely and efficiently.
* The goal of DevOps is to make software delivery vastly more efficient. That means that you manage your infrastructure not by clicking around a web page or manually executing shell commands, but through code. This is a concept that is typically called infrastructure as code.
* The idea behind infrastructure as code (IaC) is that you write and execute code to define, deploy, update, and destroy your infrastructure. 
* There are five categories of IaC tools:
	* Ad hoc scripts
	* Configuration management tools
	* Server templating tools
	* Orchestration tools
	* Provisioning tools
### Ad Hoc Scripts: 
*  You take whatever task you were doing manually, break it down into discrete steps, use your favorite scripting language (e.g., Bash, Ruby, Python) to define each of those steps in code, and execute that script on your server
* For example:
```
# Update the apt-get cache
sudo apt-get update
# Install PHP and Apache
sudo apt-get install -y php apache2
# Copy the code from the repository
sudo git clone https://github.com/brikis98/php-app.git
/var/www/html/app
# Start Apache
sudo service apache2 start	
```
* The great thing about ad hoc scripts is that you can use popular, general- purpose programming languages, and you can write the code however you want. 
* But the common language and the Ad hoc scripts are the important.