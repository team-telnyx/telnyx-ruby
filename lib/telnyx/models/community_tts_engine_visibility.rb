# frozen_string_literal: true

module Telnyx
  module Models
    # `private`: only your organization can use the engine. `public`: any organization
    # can, once it is `active`.
    module CommunityTtsEngineVisibility
      extend Telnyx::Internal::Type::Enum

      PRIVATE = :private
      PUBLIC = :public

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
