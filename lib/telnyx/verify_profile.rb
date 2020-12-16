# frozen_string_literal: true

module Telnyx
  class VerifyProfile < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Save

    OBJECT_NAME = "verify_profile".freeze
  end
end
