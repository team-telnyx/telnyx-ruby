# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module Agents
        # @see Telnyx::Resources::Rcs::Agents::TestDevices#delete
        class TestDeviceDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute test_device_id
          #
          #   @return [String]
          required :test_device_id, String

          # @!method initialize(id:, test_device_id:, request_options: {})
          #   @param id [String]
          #   @param test_device_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
