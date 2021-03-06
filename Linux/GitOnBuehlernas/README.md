How to use the git server on Buehlernas...

Create a new repository
```
 ssh dbuehler@buehlernas
 sudo /volume1/homes/dbuehler/create_bare_git_repo.bash <repo name>
```
Clone an existing repository
```
git clone ssh://buehlernas/volume1/git/<repo-name>.git
```
 
----

Note: "git init --bare" results in wonky file and directory permissions, hence the chmods in the script...

/root/create_bare_git_repo.bash...

```
#!/bin/bash

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
chown -R gituser:git "$repo_name"
find "$repo_name" -type d -exec chmod 775 {} +
find "$repo_name" -type f -exec chmod 644 {} +
chmod 775 "$repo_name"/hooks/*
cd "$repo_name"
git update-server-info
```

----

# References

Links...
* [Best reference on GitHub](https://gist.github.com/walkerjeffd/374750c366605cd5123d)

Restart ssh service (note: locked up ssh - or I just wasn't patient enough)
 sudo synoservicectl --restart sshd
