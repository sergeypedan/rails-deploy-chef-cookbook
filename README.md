# rails_deploy, a Chef cookbook

So to deploy a Rails app we need to push source code, make sure the DB exists or create it, run migrations, precompile assets, install gems, ensure correct Ruby & Bundler version, reload NGINX, restart Rails app server (Puma etc). One can do it with a shell script, which I was doing for some time. But it starts to be complicated when you need to do something conditionally: abort further actions if precompile blew up, or not run migrations if not necessary etc. Or you may need to upgrade the Ruby version. Another dimension of complexity is when you have multiple machines with different projects and each has a slightly different configuration principles. Chef can be of help (i hope).

## Add this cookbook to remote machine

Assumes, the remote machine has Chef client installed, and local machine has ChefDK. Let's say that machine node's name is `machine-1`.

Check current machine status:

```sh
knife node show 'machine-1'

# Node Name:   machine-1
# Environment: _default
# FQDN:        ubuntu-xenial
# IP:          10.0.2.15
# Run List:    
# Roles:       
# Recipes:     
# Platform:    ubuntu 16.04
# Tags:
```

## Run with a git-hook

Create a `post-receive` git hook in `hooks` directory of the git-bare repo which receives the project push.

```sh
sudo chef-client --local-mode rails_deploy
```

— this is pseudo-code, need to clarify the syntax.
