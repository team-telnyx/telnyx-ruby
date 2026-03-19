# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#list_services
    class TrafficPolicyProfileListServicesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   The service identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute group
      #   The group the service belongs to.
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute name
      #   The name of the service.
      #
      #   @return [String, nil]
      optional :name, String

      response_only do
        # @!attribute resource_type
        #
        #   @return [String, nil]
        optional :resource_type, String
      end

      # @!method initialize(id: nil, group: nil, name: nil, resource_type: nil)
      #   @param id [String] The service identifier.
      #
      #   @param group [String] The group the service belongs to.
      #
      #   @param name [String] The name of the service.
      #
      #   @param resource_type [String]
    end
  end
end
