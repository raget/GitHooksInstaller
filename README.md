# GitHooksInstaller
This project contains client-side Git hooks and script for installing them into local Git repositories.

## Setup
Run the `InstallGitHooks.ps1` in your project repository or in the folder where you aggregate your projects to install hook into any `.git` folder.
Path of the project(s) folder can be specified by

`InstallGitHooks.ps1 -path 'C:\Projects'`

## List of available git hooks
### Atomatic task ID prepending to commit message
If you are using common convetions for branch names, e.g. `feature/ABC-123` where ABC-123 is task ID from you ticket
system, and you also want to pair each commit with the task by starting each commit messaage with task ID
(`ABC-123`),
you can fill the commit message by task ID automatically with this git hook.

If you are on branch `feature/ABC-123`, instead of

`git commit -m "ABC-123 added acceptance tests"`

you can just type

`git commit -m "added acceptance tests"`

and the task ID `ABC-123` will be prepend automatically.
