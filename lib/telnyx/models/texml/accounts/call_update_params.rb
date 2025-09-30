# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#update
        class CallUpdateParams < Telnyx::Models::Texml::Accounts::UpdateCall
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!method initialize(account_sid:, request_options: {})
          #   @param account_sid [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
