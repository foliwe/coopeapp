{
  "name": "Coopeapp",
  "description": "My awesome Rails app, running on Dokku!",
  "keywords": [
    "dokku",
    "rails"
  ],
  "scripts": {
    "dokku": {
      "postdeploy": "bundle exec rails db:migrate"
    }
  }
}