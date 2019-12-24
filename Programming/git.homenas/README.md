How to use the git server on Homenas...

# Create a new repository

```ssh user@homenas
sudo /root/create_bare_git_repo.bash <repo name>
```

# Clone an existing repository

<pre>git clone ssh://homenas/volume1/git/&lt;repo name&gt;.git
</pre>
 
----

Note: "git init --bare" results in wonky file and directory permissions, hence the chmods in the script...

/root/create_bare_git_repo.bash...

```#!/bin/bash

if [ -z "$1" ]; then
    echo "ERROR: Missing repository name on command line"
	exit 1
fi

repo_name="$1"

if [ "${repo_name%.git}" == "${repo_name}" ]; then
    repo_name="$1.git"
fi

echo "repo_name = $repo_name"

cd /volume1/git

git init --bare "$repo_name"
# chmod 775 "$repo_name"
sudo -n chown -R gituser:git "$repo_name"
sudo -n find "$repo_name" -type d -exec chmod 775 {} +
sudo -n find "$repo_name" -type f -exec chmod 644 {} +
sudo -n chmod 775 "$repo_name"/hooks/*
cd "$repo_name"
git update-server-info
```

----

# References

Links...
* [https://gist.github.com/walkerjeffd/374750c366605cd5123d Best reference on GitHub]

Restart ssh service (note: locked up ssh - or I just wasn't patient enough)
```sudo synoservicectl --restart sshd
```
