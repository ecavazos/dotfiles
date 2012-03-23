# Knife: knife-staging status
function knife-office() {
  knife $* -c ~/.chef/knife.office.rb
}

function knife-staging() {
  knife $* -c ~/.chef/knife.staging.rb
}

function knife-production() {
  knife $* -c ~/.chef/knife.production.rb
}

