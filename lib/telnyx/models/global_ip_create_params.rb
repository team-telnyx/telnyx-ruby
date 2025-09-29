# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPs#create
    class GlobalIPCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute description
      #   A user specified description for the address.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute name
      #   A user specified name for the address.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute ports
      #   A Global IP ports grouped by protocol code.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :ports, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(description: nil, name: nil, ports: nil, request_options: {})
      #   @param description [String] A user specified description for the address.
      #
      #   @param name [String] A user specified name for the address.
      #
      #   @param ports [Hash{Symbol=>Object}] A Global IP ports grouped by protocol code.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
