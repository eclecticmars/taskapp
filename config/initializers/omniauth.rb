Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'XcRSy6uMPUKlVgx6n3fkxNDr7', 'THwkFmOoii1AzZNxsIS4tPCOdOgoCvtyiWPRknqus3WjQlONui'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :Linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  //comment
end