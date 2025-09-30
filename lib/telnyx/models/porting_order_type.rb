# frozen_string_literal: true

module Telnyx
  module Models
    # A port can be either 'full' or 'partial'. When type is 'full' the other
    # attributes should be omitted.
    module PortingOrderType
      extend Telnyx::Internal::Type::Enum

      FULL = :full
      PARTIAL = :partial

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
