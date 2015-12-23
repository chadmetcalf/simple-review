# Fixing Protocol Mismatch for redirect_uri
OmniAuth.config.on_failure = ApplicationController.action(:authentication_failure)
