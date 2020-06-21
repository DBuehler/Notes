# Sparse Ext4 File

I have an NFS mount on my NAS, but users and groups are not getting mapped.
Looking into solutions makes it sound ugly, so I'm trying a solution of creating
a sparse file on the NFS mount point that I will loopback mount on my Linux box
so it will have correct users and groups (and permissions!)

Source: [outflux.net](https://outflux.net/blog/archives/2012/02/15/discard-hole-punching-and-trim/)

On the NAS:
```
truncate -s1T sparse.block
```

On my local Linux box:
```
DEV=$(losetup -f --show /mnt/buehlernas/linux/sparse.block)
sudo mkfs.ext4 -E discard,lazy_itable_init=0,lazy_journal_init=0 "$DEV"
sudo mount -o discard "$DEV" /mnt/tmp
```
