# frozen_string_literal: true

module Telnyx
  class WhatsappPhoneNumber < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "whatsapp_phone_number".freeze
  end
end
