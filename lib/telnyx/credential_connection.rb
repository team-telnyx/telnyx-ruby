# frozen_string_literal: true

module Telnyx
  class CredentialConnection < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "credential_connection".freeze
  end
end
