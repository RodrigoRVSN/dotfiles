```bash
git config --global --edit
```

```bash
[user]
	email = rodrigovictor81@gmail.com
	name = rodrigorvsn
[push]
	default = current
	autoSetupRemote = true
[credential]
	helper = manager-core
[push]
  followTags = true
[core]
  editor = nvim
[alias]
  s = !git status -s  
  c = !git add --all && git commit -m
  l = !git log --pretty=format:'%C(blue)%h %C(red)%d%C(white)%s - %C(green)%cn, %cr'
```
