# Moving from LXDE to LXQT

Install openbox and change the window manager to it:
    Preferences -> LXQt Settings -> Session Settings
or possibly:
    $HOME/.config/lxqt/session.conf
    
New configuration file is $HOME/.config/openbox/lxqt-rc.xml

Had some issues with not being able to set background colors for panels
and having black-on-black colors - fix was to:

Install compton, add compton.desktop to the autostart directory.
