# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # The verification status of an active brand
      module BrandIdentityStatus
        extend Telnyx::Internal::Type::Enum

        VERIFIED = :VERIFIED
        UNVERIFIED = :UNVERIFIED
        SELF_DECLARED = :SELF_DECLARED
        VETTED_VERIFIED = :VETTED_VERIFIED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
