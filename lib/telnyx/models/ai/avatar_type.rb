# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # Whether the avatar is provided by Telnyx or was uploaded by the authenticated
      # organization.
      module AvatarType
        extend Telnyx::Internal::Type::Enum

        STOCK = :stock
        CUSTOM = :custom

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
