# frozen_string_literal: true

module Telnyx
  class AuthenticationProviders < APIResource
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::List
    extend APIOperations::Create

    OBJECT_NAME = "authentication_providers".freeze
  end
end
y
