# frozen_string_literal: true

module Telnyx
  class MessagingTollfreeVerification < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "messaging_tollfree/verification/request".freeze
  end
end
