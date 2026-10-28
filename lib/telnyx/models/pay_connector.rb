# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#list
    class PayConnector < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Connector identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute config
      #   Redacted stored configuration. Generic connector fields are shown here. Unknown
      #   config keys are discarded. Password and token are never returned.
      #
      #   @return [Telnyx::Models::PayConnector::Config, nil]
      optional :config, -> { Telnyx::PayConnector::Config }

      # @!attribute created_at
      #   Creation time.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute mode
      #   Configured mode.
      #
      #   @return [Symbol, Telnyx::Models::PayConnector::Mode, nil]
      optional :mode, enum: -> { Telnyx::PayConnector::Mode }

      # @!attribute name
      #   Connector name used for retrieval, update, deletion and Pay.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute organization_id
      #   Owning organization; assigned from authentication, not request input.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute record_type
      #   Resource type.
      #
      #   @return [Symbol, Telnyx::Models::PayConnector::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::PayConnector::RecordType }

      # @!attribute type
      #   Connector type; generic is covered by this reference. Other types may appear in
      #   unfiltered lists.
      #
      #   @return [String, nil]
      optional :type, String

      # @!attribute updated_at
      #   Last update time.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute user_id
      #   Creating user; assigned from authentication, not request input.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(id: nil, config: nil, created_at: nil, mode: nil, name: nil, organization_id: nil, record_type: nil, type: nil, updated_at: nil, user_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PayConnector} for more details.
      #
      #   Organization-owned connector. Examples and config properties here describe
      #   generic connectors; listing is not restricted to that type unless
      #   filter[type]=generic is supplied. Passwords and bearer tokens are omitted, not
      #   masked. Defaults for auth_type and timeout need not appear in stored config.
      #
      #   @param id [String] Connector identifier.
      #
      #   @param config [Telnyx::Models::PayConnector::Config] Redacted stored configuration. Generic connector fields are shown here. Unknown
      #
      #   @param created_at [Time] Creation time.
      #
      #   @param mode [Symbol, Telnyx::Models::PayConnector::Mode] Configured mode.
      #
      #   @param name [String] Connector name used for retrieval, update, deletion and Pay.
      #
      #   @param organization_id [String] Owning organization; assigned from authentication, not request input.
      #
      #   @param record_type [Symbol, Telnyx::Models::PayConnector::RecordType] Resource type.
      #
      #   @param type [String] Connector type; generic is covered by this reference. Other types may appear in
      #
      #   @param updated_at [Time] Last update time.
      #
      #   @param user_id [String] Creating user; assigned from authentication, not request input.

      # @see Telnyx::Models::PayConnector#config
      class Config < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_type
        #   Stored processor authentication selection. Omitted if it was not explicitly
        #   configured.
        #
        #   @return [Symbol, Telnyx::Models::PayConnector::Config::AuthType, nil]
        optional :auth_type, enum: -> { Telnyx::PayConnector::Config::AuthType }

        # @!attribute endpoint_url
        #   HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        #   transit.
        #
        #   @return [String, nil]
        optional :endpoint_url, String

        # @!attribute timeout
        #   Stored processor HTTP timeout in milliseconds. Omitted when no timeout was
        #   configured; the effective runtime default is 10000.
        #
        #   @return [Integer, nil]
        optional :timeout, Integer

        # @!attribute username
        #   Stored username, when supplied. Required to be a nonblank string for basic
        #   authentication.
        #
        #   @return [Object, nil]
        optional :username, Telnyx::Internal::Type::Unknown

        # @!method initialize(auth_type: nil, endpoint_url: nil, timeout: nil, username: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PayConnector::Config} for more details.
        #
        #   Redacted stored configuration. Generic connector fields are shown here. Unknown
        #   config keys are discarded. Password and token are never returned.
        #
        #   @param auth_type [Symbol, Telnyx::Models::PayConnector::Config::AuthType] Stored processor authentication selection. Omitted if it was not explicitly conf
        #
        #   @param endpoint_url [String] HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in tr
        #
        #   @param timeout [Integer] Stored processor HTTP timeout in milliseconds. Omitted when no timeout was confi
        #
        #   @param username [Object] Stored username, when supplied. Required to be a nonblank string for basic authe

        # Stored processor authentication selection. Omitted if it was not explicitly
        # configured.
        #
        # @see Telnyx::Models::PayConnector::Config#auth_type
        module AuthType
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          BASIC = :basic
          BEARER = :bearer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Configured mode.
      #
      # @see Telnyx::Models::PayConnector#mode
      module Mode
        extend Telnyx::Internal::Type::Enum

        TEST = :test
        LIVE = :live

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Resource type.
      #
      # @see Telnyx::Models::PayConnector#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        PAY_CONNECTOR = :pay_connector

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
