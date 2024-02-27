# frozen_string_literal: true

module Telnyx
  class MessagingUrlDomain < APIResource
    extend APIOperations::List

    OBJECT_NAME = "messaging_url_domain".freeze
  end
end
