# frozen_string_literal: true

module Telnyx
  module Models
    module Faxes
      # @see Telnyx::Resources::Faxes::Actions#cancel
      class ActionCancelResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Faxes::ActionCancelResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Faxes::ActionCancelResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Faxes::ActionCancelResponse::Data]

        # @see Telnyx::Models::Faxes::ActionCancelResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute result
          #
          #   @return [String, nil]
          optional :result, String

          # @!method initialize(result: nil)
          #   @param result [String]
        end
      end
    end
  end
end
