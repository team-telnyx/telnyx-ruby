# typed: strong

module Telnyx
  module Models
    class PayConnector < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::PayConnector, Telnyx::Internal::AnyHash) }

      # Connector identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Redacted stored configuration. Generic connector fields are shown here. Unknown
      # config keys are discarded. Password and token are never returned.
      sig { returns(T.nilable(Telnyx::PayConnector::Config)) }
      attr_reader :config

      sig { params(config: Telnyx::PayConnector::Config::OrHash).void }
      attr_writer :config

      # Creation time.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Configured mode.
      sig { returns(T.nilable(Telnyx::PayConnector::Mode::TaggedSymbol)) }
      attr_reader :mode

      sig { params(mode: Telnyx::PayConnector::Mode::OrSymbol).void }
      attr_writer :mode

      # Connector name used for retrieval, update, deletion and Pay.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Owning organization; assigned from authentication, not request input.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Resource type.
      sig { returns(T.nilable(Telnyx::PayConnector::RecordType::TaggedSymbol)) }
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::PayConnector::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # Connector type; generic is covered by this reference. Other types may appear in
      # unfiltered lists.
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      # Last update time.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Creating user; assigned from authentication, not request input.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Organization-owned connector. Examples and config properties here describe
      # generic connectors; listing is not restricted to that type unless
      # filter[type]=generic is supplied. Passwords and bearer tokens are omitted, not
      # masked. Defaults for auth_type and timeout need not appear in stored config.
      sig do
        params(
          id: String,
          config: Telnyx::PayConnector::Config::OrHash,
          created_at: Time,
          mode: Telnyx::PayConnector::Mode::OrSymbol,
          name: String,
          organization_id: String,
          record_type: Telnyx::PayConnector::RecordType::OrSymbol,
          type: String,
          updated_at: Time,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Connector identifier.
        id: nil,
        # Redacted stored configuration. Generic connector fields are shown here. Unknown
        # config keys are discarded. Password and token are never returned.
        config: nil,
        # Creation time.
        created_at: nil,
        # Configured mode.
        mode: nil,
        # Connector name used for retrieval, update, deletion and Pay.
        name: nil,
        # Owning organization; assigned from authentication, not request input.
        organization_id: nil,
        # Resource type.
        record_type: nil,
        # Connector type; generic is covered by this reference. Other types may appear in
        # unfiltered lists.
        type: nil,
        # Last update time.
        updated_at: nil,
        # Creating user; assigned from authentication, not request input.
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            config: Telnyx::PayConnector::Config,
            created_at: Time,
            mode: Telnyx::PayConnector::Mode::TaggedSymbol,
            name: String,
            organization_id: String,
            record_type: Telnyx::PayConnector::RecordType::TaggedSymbol,
            type: String,
            updated_at: Time,
            user_id: String
          }
        )
      end
      def to_hash
      end

      class Config < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PayConnector::Config, Telnyx::Internal::AnyHash)
          end

        # Stored processor authentication selection. Omitted if it was not explicitly
        # configured.
        sig do
          returns(
            T.nilable(Telnyx::PayConnector::Config::AuthType::TaggedSymbol)
          )
        end
        attr_reader :auth_type

        sig do
          params(
            auth_type: Telnyx::PayConnector::Config::AuthType::OrSymbol
          ).void
        end
        attr_writer :auth_type

        # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
        # transit.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint_url

        sig { params(endpoint_url: String).void }
        attr_writer :endpoint_url

        # Stored processor HTTP timeout in milliseconds. Omitted when no timeout was
        # configured; the effective runtime default is 10000.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout

        sig { params(timeout: Integer).void }
        attr_writer :timeout

        # Stored username, when supplied. Required to be a nonblank string for basic
        # authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        # Redacted stored configuration. Generic connector fields are shown here. Unknown
        # config keys are discarded. Password and token are never returned.
        sig do
          params(
            auth_type: Telnyx::PayConnector::Config::AuthType::OrSymbol,
            endpoint_url: String,
            timeout: Integer,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Stored processor authentication selection. Omitted if it was not explicitly
          # configured.
          auth_type: nil,
          # HTTP or HTTPS processor URL with a host. Use HTTPS to protect payment data in
          # transit.
          endpoint_url: nil,
          # Stored processor HTTP timeout in milliseconds. Omitted when no timeout was
          # configured; the effective runtime default is 10000.
          timeout: nil,
          # Stored username, when supplied. Required to be a nonblank string for basic
          # authentication.
          username: nil
        )
        end

        sig do
          override.returns(
            {
              auth_type: Telnyx::PayConnector::Config::AuthType::TaggedSymbol,
              endpoint_url: String,
              timeout: Integer,
              username: String
            }
          )
        end
        def to_hash
        end

        # Stored processor authentication selection. Omitted if it was not explicitly
        # configured.
        module AuthType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PayConnector::Config::AuthType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(:none, Telnyx::PayConnector::Config::AuthType::TaggedSymbol)
          BASIC =
            T.let(:basic, Telnyx::PayConnector::Config::AuthType::TaggedSymbol)
          BEARER =
            T.let(:bearer, Telnyx::PayConnector::Config::AuthType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::PayConnector::Config::AuthType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Configured mode.
      module Mode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnector::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEST = T.let(:test, Telnyx::PayConnector::Mode::TaggedSymbol)
        LIVE = T.let(:live, Telnyx::PayConnector::Mode::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::PayConnector::Mode::TaggedSymbol])
        end
        def self.values
        end
      end

      # Resource type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PayConnector::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAY_CONNECTOR =
          T.let(:pay_connector, Telnyx::PayConnector::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PayConnector::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
