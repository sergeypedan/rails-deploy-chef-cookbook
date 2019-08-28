name             'rails_deploy'
maintainer       'The Authors'
maintainer_email 'sergey.pedan@gmail.com'
license          'All Rights Reserved'
description      'A set of deploy scripts for a Rails app, base on Chef. Alternative to Capistrano, but a bit more charged.'
long_description 'So to deploy a Rails app we need to push source code, make sure the DB exists or create it, run migrations, precompile assets, install gems, ensure correct Ruby & Bundler version, reload NGINX, restart Rails app server (Puma etc). One can do it with a shell script, which I was doing for some time. But it starts to be complicated when you need to do something conditionally: abort further actions if precompile blew up, or not run migrations if not necessary etc. Or you may need to upgrade the Ruby version. Another dimension of complexity is when you have multiple machines with different projects and each has a slightly different configuration principles. Chef can be of help (i hope).'

version      '0.1.0'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url     ' https://github.com/<insert_org_here>/rails_deploy/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url     ' https://github.com/<insert_org_here>/rails_deploy'
