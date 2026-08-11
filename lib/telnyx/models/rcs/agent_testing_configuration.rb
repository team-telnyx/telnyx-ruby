# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentTestingConfiguration < Telnyx::Internal::Type::BaseModel
        # @!attribute test_url
        #   A publicly accessible test video or evidence URL.
        #
        #   @return [String]
        required :test_url, String

        # @!attribute additional_information
        #
        #   @return [String, nil]
        optional :additional_information, String, nil?: true

        # @!attribute message_id
        #
        #   @return [String, nil]
        optional :message_id, String, nil?: true

        # @!method initialize(test_url:, additional_information: nil, message_id: nil)
        #   @param test_url [String] A publicly accessible test video or evidence URL.
        #
        #   @param additional_information [String, nil]
        #
        #   @param message_id [String, nil]
      end
    end
  end
end
