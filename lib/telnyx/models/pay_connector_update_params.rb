# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#update
    class PayConnectorUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute config
      #   Configuration for a generic connector. A config update replaces the complete
      #   object, not individual keys. Unknown config keys are discarded. Authentication
      #   credentials must be nonblank strings when required by the selected auth_type.
      #
      #   @return [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication, nil]
      optional :config, union: -> { Telnyx::GenericPayConnectorConfig }

      # @!attribute mode
      #   Omit to preserve the existing mode. Use an explicit test or live value.
      #
      #   @return [Symbol, Telnyx::Models::PayConnectorUpdateParams::Mode, nil]
      optional :mode, enum: -> { Telnyx::PayConnectorUpdateParams::Mode }

      # @!attribute type
      #   Generic connector type. Omit to preserve the existing value.
      #
      #   @return [Symbol, Telnyx::Models::PayConnectorUpdateParams::Type, nil]
      optional :type, enum: -> { Telnyx::PayConnectorUpdateParams::Type }

      # @!method initialize(name:, config: nil, mode: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PayConnectorUpdateParams} for more details.
      #
      #   @param name [String]
      #
      #   @param config [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication] Configuration for a generic connector. A config update replaces the complete obj
      #
      #   @param mode [Symbol, Telnyx::Models::PayConnectorUpdateParams::Mode] Omit to preserve the existing mode. Use an explicit test or live value.
      #
      #   @param type [Symbol, Telnyx::Models::PayConnectorUpdateParams::Type] Generic connector type. Omit to preserve the existing value.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Omit to preserve the existing mode. Use an explicit test or live value.
      module Mode
        extend Telnyx::Internal::Type::Enum

        TEST = :test
        LIVE = :live

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Generic connector type. Omit to preserve the existing value.
      module Type
        extend Telnyx::Internal::Type::Enum

        GENERIC = :generic

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
