SecureHeaders::Configuration.default do |config|
  config.csp = {
    default_src: %w('self'),
    script_src: %w('self' 'unsafe-inline' 'unsafe-eval' https: http:),
    style_src: %w('self' 'unsafe-inline' https: http:),
    img_src: %w('self' data: https: http:),
    connect_src: %w('self' https: http:),
    font_src: %w('self' data: https: http:),
    object_src: %w('self'),
    media_src: %w('self'),
    frame_src: %w('self' https: http:),
    frame_ancestors: %w('self'),
    form_action: %w('self' https: http:),
    base_uri: %w('self'),
    child_src: %w('self' https: http:),
  }
end
