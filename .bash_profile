# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
export PATH=/usr/local/bin:$PATH;
export PATH=$HOME/bin:$PATH;
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin";
export PATH=/usr/local/share/npm/bin:$PATH;

export PATH="$HOME/.fastlane/bin:$PATH";
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"
export PATH="$HOME/.bin/flutter/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
