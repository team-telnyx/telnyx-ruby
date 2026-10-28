# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#create
    class PayConnectorCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute config
      #   Configuration for a generic connector. A config update replaces the complete
      #   object, not individual keys. Unknown config keys are discarded. Authentication
      #   credentials must be nonblank strings when required by the selected auth_type.
      #
      #   @return [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication]
      required :config, union: -> { Telnyx::GenericPayConnectorConfig }

      # @!attribute name
      #   Unique within the authenticated organization. Used in resource paths and as
      #   connector_name in the Call Control Pay request. Cannot be renamed by update.
      #
      #   @return [String]
      required :name, String

      # @!attribute mode
      #   Defaults to test on creation. Test restricts collected card numbers but still
      #   contacts the configured processor; use a processor sandbox URL and sandbox
      #   credentials. Live removes the test-card restriction. Neither mode locks API
      #   updates.
      #
      #   @return [Symbol, Telnyx::Models::PayConnectorCreateParams::Mode, nil]
      optional :mode, enum: -> { Telnyx::PayConnectorCreateParams::Mode }

      # @!attribute type
      #   Connector type covered by this reference.
      #
      #   @return [Symbol, Telnyx::Models::PayConnectorCreateParams::Type, nil]
      optional :type, enum: -> { Telnyx::PayConnectorCreateParams::Type }

      # @!method initialize(config:, name:, mode: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PayConnectorCreateParams} for more details.
      #
      #   @param config [Telnyx::Models::GenericPayConnectorConfig::BasicAuthenticationAlsoTheValidationDefault, Telnyx::Models::GenericPayConnectorConfig::BearerAuthentication, Telnyx::Models::GenericPayConnectorConfig::NoProcessorAuthentication] Configuration for a generic connector. A config update replaces the complete obj
      #
      #   @param name [String] Unique within the authenticated organization. Used in resource paths and as conn
      #
      #   @param mode [Symbol, Telnyx::Models::PayConnectorCreateParams::Mode] Defaults to test on creation. Test restricts collected card numbers but still co
      #
      #   @param type [Symbol, Telnyx::Models::PayConnectorCreateParams::Type] Connector type covered by this reference.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Defaults to test on creation. Test restricts collected card numbers but still
      # contacts the configured processor; use a processor sandbox URL and sandbox
      # credentials. Live removes the test-card restriction. Neither mode locks API
      # updates.
      module Mode
        extend Telnyx::Internal::Type::Enum

        TEST = :test
        LIVE = :live

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Connector type covered by this reference.
      module Type
        extend Telnyx::Internal::Type::Enum

        GENERIC = :generic

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
