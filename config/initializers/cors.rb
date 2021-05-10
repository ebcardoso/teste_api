Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '*'

    # Make sure to change the * to the location of you frontend after deployment in order to secure your application
    resource '*',
        headers: :any,
        methods: %i[get post put patch delete options head]
    end
end