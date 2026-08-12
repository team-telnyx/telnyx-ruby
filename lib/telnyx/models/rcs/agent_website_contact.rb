# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentWebsiteContact < Telnyx::Internal::Type::BaseModel
        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(label:, url:)
        #   @param label [String]
        #   @param url [String]
      end
    end
  end
end
