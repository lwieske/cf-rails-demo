## Deploy Rails 4 Sample App to (Pivotal/Bluemix) CloudFoundry

### Login To CloudFoundry

    cf login

On Pivotal CloudFoundry you might use `cf login -a api.run.pivotal.io`.

On BlueMix CloudFoundry you might use `cf login -a api.ng.bluemix.net`.

### Clone Repository And Run

    git clone http://github.com/lwieske/cf-rails-demo.git

    cd cf-rails-demo

    sh -x cf-rails-demo.sh

After 10 minutes resources are destroyed automatically.
