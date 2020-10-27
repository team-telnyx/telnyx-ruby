# frozen_string_literal: true

module Telnyx
  class Profile2FA < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Save

    OBJECT_NAME = "2fa_profile".freeze
  end
end
