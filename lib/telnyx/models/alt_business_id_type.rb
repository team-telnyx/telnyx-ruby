# frozen_string_literal: true

module Telnyx
  module Models
    # An enumeration.
    module AltBusinessIDType
      extend Telnyx::Internal::Type::Enum

      NONE = :NONE
      DUNS = :DUNS
      GIIN = :GIIN
      LEI = :LEI

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
