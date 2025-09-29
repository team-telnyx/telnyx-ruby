# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Calls#update
      class CallUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Texml::CallUpdateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Texml::CallUpdateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Texml::CallUpdateResponse::Data]

        # @see Telnyx::Models::Texml::CallUpdateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute sid
          #
          #   @return [String, nil]
          optional :sid, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(sid: nil, status: nil)
          #   @param sid [String]
          #   @param status [String]
        end
      end
    end
  end
end
