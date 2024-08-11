Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'your-vercel-app.vercel.app'  # ここにVercelのURLを指定
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end

