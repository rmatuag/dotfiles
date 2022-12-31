# My .files

Copied from https://github.com/jakejarvis/dotfiles

All of the juicy stuff you're probably looking for is in [`zsh/aliases.zsh`](zsh/aliases.zsh) and [`zsh/functions.zsh`](zsh/functions.zsh) for my ZSH hacks, [`macos/defaults.sh`](macos/defaults.sh) for my macOS defaults, and [`Brewfile`](Brewfile) for my far-too-long list of binaries and apps I "need" installed. My [Firefox preferences](firefox/user.js) and [VS Code settings](vscode/) also live here. Also see my [**/uses page** for more details](https://jarv.is/uses/).


```bash
git clone --recurse-submodules https://github.com/jakejarvis/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash install.sh
```

or:

```bash
curl -sL jrvs.io/bootstrap | bash    # probably don't do this if you're not me
```

## License

This project is distributed under the [MIT license](LICENSE.md).