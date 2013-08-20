# CodeFellows Lightning Talk Git Autocomplete and Bash Customization

This repo has my customized .bashrc and git-prompt.sh files

## .bashrc

I used a few resources for coming up with this

1. [Base code and idea](https://gist.github.com/ricardobeat/5980892)
2. [Title Bar addition and understanding git-prompt](http://ithaca.arpinum.org/2013/01/02/git-prompt.html)
3. [Prompt Escapes](http://blog.taylormcgann.com/tag/prompt-color/)
4. [Color Guide](http://misc.flogisoft.com/bash/tip_colors_and_formatting)

![First attempt at it](https://github.com/gringocl/photos/blob/master/2.png?raw=true)

## git-prompt and autocomplete

Homebrew installs this file along with the autocomplete file in /usr/local/etc/bash_completion.d/

I changed the colors so it didn't look like Christmas and took out some color escapes so it worked correctly with background colors.

![Autocomplete Picture](https://github.com/gringocl/photos/blob/master/3.png?raw=true)

### git-prompt legend

Here is what I believe the symbols mean, some are in the comments of the actual file and others are not.

1. (*)   unstaged
2. (+)   staged
3. ($)   stashed
4. (%)   untracked files
5. (<)   behind head
6. (>)   ahead head
7. (<>)  diverged head
8. (=)   no difference
9. (+/-) num. of commits behind or ahead
10. (u)   upstream
11. (#)   local

![Git and the prompt](https://github.com/gringocl/photos/blob/master/1.png?raw=true)

## .bashrc and git-prompt mega rabbit hole

So, my [base code example](https://gist.github.com/ricardobeat/5980892) really screwed me up because it shows some really nice font symbols. If you follow the link and look at [powerline](https://github.com/Lokaltog/powerline) I tried and customizing what I already had with those symbols.  The .bashrc-fonts is my latest customization using those symbols.

Below is the finalish result

![finalish](https://github.com/gringocl/photos/blob/master/4.png?raw=true)





