# frozen_string_literal: true

module Telnyx
  class WhatsappBusinessAccount < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "whatsapp_business_account".freeze
  end
end
