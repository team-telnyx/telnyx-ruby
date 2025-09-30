# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPAddress#create
    class AccessIPAddressCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute ip_address
      #
      #   @return [String]
      required :ip_address, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(ip_address:, description: nil, request_options: {})
      #   @param ip_address [String]
      #   @param description [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
