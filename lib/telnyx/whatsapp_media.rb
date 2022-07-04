# frozen_string_literal: true

module Telnyx
    class WhatsappMedia < APIResource
      extend APIOperations::List
      extend APIOperations::Create
      include APIOperations::Delete
      include APIOperations::Save
  
      OBJECT_NAME = "whatsapp_media".freeze
    end
  end
  