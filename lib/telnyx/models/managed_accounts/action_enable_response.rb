# frozen_string_literal: true

module Telnyx
  module Models
    module ManagedAccounts
      # @see Telnyx::Resources::ManagedAccounts::Actions#enable
      class ActionEnableResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ManagedAccount, nil]
        optional :data, -> { Telnyx::ManagedAccount }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ManagedAccount]
      end
    end
  end
end
