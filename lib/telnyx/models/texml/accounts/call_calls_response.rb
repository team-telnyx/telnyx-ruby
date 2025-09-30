# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#calls
        class CallCallsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute from
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute to
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(from: nil, status: nil, to: nil)
          #   @param from [String]
          #   @param status [String]
          #   @param to [String]
        end
      end
    end
  end
end
