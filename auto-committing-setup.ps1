$GitHubUsername='platypus87'
$PracticeRepoDir='C:\Users\Matthew\Source\Repos\powershell-practice'
$CommitMessage='auto committed from auto-committing-setup.ps1'

# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir"

#TODO: complete steps 5-9

#copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
copy-item ~\desktop\auto-committing-setup.ps1 C:\users\matthew\source\repos\powershell-practice

#change into the cloned directory ($PracticeRepoDir) 
set-location $PracticeRepoDir
#add the new script file in the cloned directory to git staging
git add .
#commit the changes to the repo using the message variable ($CommitMessage)
git commit -m "$CommitMessage"
#push the local git history back to your forked repo
git push

#upload attempt