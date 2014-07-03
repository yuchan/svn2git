SVN2GIT
=============

必要要件
-------------

## OS X Marvericks(Mountain Lion)では, `git svn`が壊れている

    下記リンクを参考に、perlモジュールを準備する必要があります。
	[link](http://blog.victorquinn.com/fix-git-svn-in-mountain-lion)

Mac OS X 10.9:

    $ sudo ln -s  /Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level/SVN /System/Library/Perl/Extras/5.16/SVN
	$ sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.16/darwin-thread-multi-2level/auto/SVN/ /System/Library/Perl/Extras/5.16/auto/SVN

Mac OS X 10.8:

    $ sudo ln -s  /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level/SVN /System/Library/Perl/Extras/5.12/SVN
	$ sudo ln -s /Applications/Xcode.app/Contents/Developer/Library/Perl/5.12/darwin-thread-multi-2level/auto/SVN/ /System/Library/Perl/Extras/5.12/auto/SVN

## Gitのリモートリポジトリを作成し、開発者がアクセスできるようにする。

リモートリポジトリへプッシュ:

    $ git remote add origin git@example.com:${myproject}.git
	$ git push --all
	$ git push --tags

使い方
-------------

    $ ./svn2git.bash

* svn2git.bashはそれと同一の場所にプロジェクトのディレクトリを生成します。
