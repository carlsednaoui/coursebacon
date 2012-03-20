Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'kivBXFB5gE7RunUmBXgoWg', 'O8PLhMwETapHwD55AuUL4K8e27XwDb1GZI4jtj4cwg'
  provider :facebook, '271024399642949', '548830ca3066450af6e4e86703b209f9'
end