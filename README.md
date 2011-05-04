passdb
======

This library can be used to search the default password database from cirt.net: http://cirt.net/passwords

Usage
-----

You can use the provided binary to search the password database by vendor:

    ./bin/passdb search --vendor Apc
    7 entries were found:
      AP9606 SmartSlot Web/SNMP Management Card
        Version => AOS 3.2.1 and AOS 3.0.3
        Method => telnet
        User ID => (any)
        Password�� => TENmanUFactOryPOWER
      Call-UPS
        Version => AP9608
        Method => Console
        Password�� => serial number of the Call-UPS
        Level => Admin
        Notes => (Access menu Control+P)
    [...]

or by a free-form criteria

    ./bin/passdb search --criteria FTP
    17 entries were found:
      Intuity Audix
        User ID => Craft
        Password�� => crftpw
      Axis Network Camera
        Version => 2120, 2110, 2100, 200+, 200
        Method => ftp, telnet, http
        User ID => root
        Password�� => pass
        Level => Admin
      CADSLR4
        Method => FTP
        User ID => anonymous
        Password�� => password
        Level => Anonymous
        Notes => Default IP 192.168.1.254
    [...]

Contributing to passdb
----------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011 Security Roots. See LICENSE.txt for
further details.

