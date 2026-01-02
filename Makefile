PREFIX=/usr/local/bin

install:
    sudo cp scripts/cproj $(PREFIX)/cproj
    sudo cp scripts/newproj $(PREFIX)/newproj
    sudo chmod +x $(PREFIX)/cproj
    sudo chmod +x $(PREFIX)/newproj

uninstall:
    sudo rm -f $(PREFIX)/cproj
    sudo rm -f $(PREFIX)/newproj

.PHONY: install uninstall
