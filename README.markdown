[TextMate Remote Sync Bundle](http://david.olrik.dk/projects/textmate-remote-sync-bundle/)
=================

TextMate bundle for uploading your project via rsync and ssh.

Quick start
-----------

- Clone the repo, `git clone git://github.com/davidolrik/SynchronizeRemoteDirectory-rsync-ssh.tmbundle.git`, or [download the latest release](https://github.com/davidolrik/SynchronizeRemoteDirectory-rsync-ssh.tmbundle/zipball/master)
- Double click the bundle to install it into TextMate
- Add your ssh public key to `~/.ssh/authorized_keys` on the
  remote server you wish to copy your files to. If you have a password on your key, then you need to add it to the Keychain using `ssh-add -K`, once this is done OS X will use the `ssh-agent` to query the Keychain for your password.
- Configure bundle settings for your project via the bundle menu.  
  The first time you call configure, a new config file will be generated for you with explaining comments.

Bug tracker
-----------

Have a bug or feature request? Please create an issue here on GitHub

https://github.com/davidolrik/SynchronizeRemoteDirectory-rsync-ssh.tmbundle/issues


Changes
-------

- **1.0.0** (2009-06-18)  
  + Initial release
- **1.0.1** (2010-03-17)  
  + Bugfix
- **1.1.0** (2011-12-21)  
  + Growl support
  + Remote post command
- **1.2.0** (2012-09-11)  
  + Added README.markdown
  + Remote pre command
  + Optional auto close of sync output window after a timeout (plu)
- **1.3.0** (2012-09-27)  
  + Added support for [terminal-notifier](https://github.com/alloy/terminal-notifier) (mpa)
  + Added styles for pretty output
  + Made output more user friendly

Authors
-------

**David Jack Wange Olrik**

+ http://david.olrik.dk
+ http://twitter.com/davidolrik
+ http://github.com/davidolrik

Copyright and license
---------------------

Copyright 2009-2012 David Jack Wange Olrik.

This bundle is free software.  
You can redistribute it and/or modify it under the terms of the [Artistic License 2.0](http://www.perlfoundation.org/artistic_license_2_0).

This program is distributed in the hope that it will be useful,
but without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.
