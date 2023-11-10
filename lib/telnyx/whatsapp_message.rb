# frozen_string_literal: true

module Telnyx
  class WhatsappMessages < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "whatsapp_messages".freeze
  end
end
