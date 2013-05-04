require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "718169150314-kd96nb278jv5rosauackn9mrh0c4kb5p.apps.googleusercontent.com", "3bc5duYaWvotwpf6SPhhaE13", {:redirect_path => "/contacts/gmail/callback",:max_results => 10000}
  importer :hotmail, "00000000440EC722", "ac9cDyyK5IDhx8LugMbjzSJJ4sT0vT8c"
  importer :yahoo, "dj0yJmk9TWlmTVdVN2F3TVVhJmQ9WVdrOWRsSjZSalpFTlRJbWNHbzlNVEF3TURZeU5qazJNZy0tJnM9Y29uc3VtZXJzZWNyZXQmeD0xOQ--", "5c9f9e3f58ce2640f7a33435ab57d90826776cd3", {:callback_path => "/contacts/yahoo/callback"}
end