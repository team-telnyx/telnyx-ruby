# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPAddress#retrieve
    class AccessIPAddressRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute access_ip_address_id
      #
      #   @return [String]
      required :access_ip_address_id, String

      # @!method initialize(access_ip_address_id:, request_options: {})
      #   @param access_ip_address_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
