# Notes > Linux > CIFS

Fixing ```
CIFS VFS: cifs_mount failed w/return code = -95
```

This is caused by the change made to disallow SMB version 1 on my NAS...

Fixing this requires adding the option `vers=3.0` to the mount command.
