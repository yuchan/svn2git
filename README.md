SVN2GIT
=============

Prerequisite
-------------

## On OS X Marvericks(Mountain Lion), `git svn` is broken.

    You should prepare perl module, referencing the following page.
	    [link](http://blog.victorquinn.com/fix-git-svn-in-mountain-lion)

Mac OS X 10.9:

    $ sudo ln -s  /Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level/SVN /System/Library/Perl/Extras/5.16/SVN
	    $ sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level/auto/SVN/ /System/Library/Perl/Extras/5.16/auto/SVN

Mac OS X 10.8:

    $ sudo ln -s  /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level/SVN /System/Library/Perl/Extras/5.12/SVN
	$ sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level/auto/SVN/ /System/Library/Perl/Extras/5.12/auto/SVN

## Git Remote Repository wheret every developer can access.

push to remote repo:

    $ git remote add origin git@example.com:${myproject}.git
	$ git push --all
	$ git push --tags

Usage
-------------

    $ ./svn2git.bash

* svn2git.bash generates the project directory in the same place as itself.
