# How to use the git server on Homenas

## Create a new repository

```bash
ssh user@homenas
sudo /volume1/homes/gituser/bin/create_bare_git_repo.bash <repo name>
```

or

```bash
ssh -x gituser@homenas /volume1/homes/gituser/bin/create_bare_git_repo.bash <repo name>
```

## Clone an existing repository

```bash
git clone ssh://homenas/volume1/git/<repo name>.git
```

```bash
git clone ssh://<user@>homenas<:port>/volume1/git/<repo name>.git
```


Note: logged in user must be in the git group on homenas

----

Note: "git init --bare" results in wonky file and directory permissions, hence the chmods in the script...

## Script: /volume1/homes/gituser/bin/create_bare_git_repo.bash

```bash
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
sudo -n chown -R gituser:git "$repo_name"
sudo -n find "$repo_name" -type d -exec chmod 775 {} +
sudo -n find "$repo_name" -type f -exec chmod 644 {} +
sudo -n chmod 775 "$repo_name"/hooks/*
cd "$repo_name"
git update-server-info
```

----

## References

Links...

* [Best reference on GitHub](https://gist.github.com/walkerjeffd/374750c366605cd5123d)

Restart ssh service (note: locked up ssh - or I just wasn't patient enough)

```bash
sudo synoservicectl --restart sshd
```
