# flutter_ecom_project

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

echo "# demo" >> README.md
git init
git commit -m "first commit message any thing u can write"
git branch -M main
git remote add origin <git hub link>
git push -u origin main

(

if code is not push then check link 
git remote -v   (then update link if need)
git remote set-url origin <GitHub link> // this will update the link
git push -u origin main (again push code)

)

If you want to remove and re-add the remote
git remote remove origin
git remote add origin https://github.com/USERNAME/REPO.git
git push -u origin main

1. See all branches
git branch  //The * shows your current branch.
git branch -a  // Use -a to also see remote branches:

2. Switch to an existing branch
git checkout branch_name  //or (newer Git versions):
git switch branch_name

3. Create and switch to a new branch
git checkout -b new_branch_name  or
git switch -c new_branch_name

4. Push new branch to remote
git push -u origin new_branch_name

