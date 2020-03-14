Rails.application.config.middleware.use OmniAuth::Builder do 
    provider :github, '5b212fcc1eb182024477', '7c9de49b22749d231c3963765e67647f06737bc6'
end