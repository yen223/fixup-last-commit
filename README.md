# git-fixup-last-commit

For each file that has changed, create a [fixup! commit](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---fixupltcommitgt) pointing to the last commit which changed that file.

This is useful when you've committed a bunch of work across multiple files,
and you want to run a tool that changes many files simultaneously (e.g. an autoformatter).
