# frozen_string_literal: true

module Telnyx
  module Models
    module Messages
      # @see Telnyx::Resources::Messages::Rcs#generate_deeplink
      class RcGenerateDeeplinkResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data]
        required :data, -> { Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data]

        # @see Telnyx::Models::Messages::RcGenerateDeeplinkResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   The generated deeplink URL
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   @param url [String] The generated deeplink URL
        end
      end
    end
  end
end
