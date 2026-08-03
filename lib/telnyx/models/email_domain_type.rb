# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomainType
      extend Telnyx::Internal::Type::Enum

      CUSTOM = :custom
      SHARED = :shared
      SHARED_INBOUND = :shared_inbound

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
