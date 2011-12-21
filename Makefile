VERSION=`git describe --tags | awk -F '-' '{print $$2}'`

dist:
	@echo "Building tardist to Desktop"
	@echo $(VERSION)
	@COPYFILE_DISABLE=1 tar -C .. -zcvf ~/Desktop/SynchronizeRemoteDirectory-rsync-ssh.tmbundle-$(VERSION).tar.gz \
		SynchronizeRemoteDirectory-rsync-ssh.tmbundle/info.plist \
		SynchronizeRemoteDirectory-rsync-ssh.tmbundle/Commands \
		SynchronizeRemoteDirectory-rsync-ssh.tmbundle/Support

clean:
	@echo "Removing tardist from Desktop"
	@rm -f ~/Desktop/SynchronizeRemoteDirectory-rsync-ssh.tmbundle-$(VERSION).tar.gz
