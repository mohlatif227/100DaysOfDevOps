#Git
- As we follow along with Gwen Faraday from his Git and GitHub course, we'd learned couple of things:
	- What is Git and GitHub
	- How you can install git on Linux/Unix OS.
	- How Git works.
	- How to setup SSH key authentication with git
		- ssh-keygen -t rsa -f github-ssh-key
		- copy content of public key i.e. github-ssh-key.pub to github user account for ssh authentication as below:
			- Go to personal account =>Settings => SSH and GPG keys ---> New SSH key
				- now Name it and add content of public key file which is generated in previous step.  Click on Add SSH key
		- now private add key to ssh agent for authentication for github
			- eval `ssh-agent -s` &&  ssh-add ~/.ssh/github-ssh-key

	- Create first Repository on GitHub.com and clone on your local machine.
		- How to work with git commands and push changes to github, below are the few commands to try:
			- Initial git setup
			- git config user.name "Mohammad Altif" (for individual user)
			- git config user.email "mohlatif227@gmail.com"
			- git add .
			- git commit -m 'some message' -m 'some description' .
			- git push origin main
			- git status
			- git remove -v
			- git branch
	- Then we'd learned about how we can push our existing/newly created directory(Project) to github.
		- Below are the few commands we'd followed along
		- First we create or move to the directory and initialize git
			- cd some-dir && git init
			- git config user.name "Mohammad Altif" (for individual user)
			- git config user.email "mohlatif227@gmail.com"
		- Now we have to tell that where want to store our project.
			- git remote add origin git@github.com:mohlatif227/git-demo2.git
			- git branch -M main
		- Now if you want to push the changes to default branch, then use upstream option to do so
			- git push -u origin main
