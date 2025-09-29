# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class URL < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!method initialize(url:)
          #   @param url [String]
        end
      end
    end
  end
end
