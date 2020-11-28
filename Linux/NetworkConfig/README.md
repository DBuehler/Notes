# Adding "search" lines to /etc/resolv.conf

On Debian10...

To add "search local." to the dhcp-created `/etc/resolv.conf` Add this line to `/etc/dhcp/dhclient.conf` file...

    prepend domain-search "local";
