# typed: strong

module Telnyx
  module Models
    class SiprecConnectorCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SiprecConnectorCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::SiprecConnectorCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::SiprecConnectorCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::SiprecConnectorCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SiprecConnectorCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SiprecConnectorCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Subdomain to route calls when using Telnyx SRS (optional).
        sig { returns(T.nilable(String)) }
        attr_reader :app_subdomain

        sig { params(app_subdomain: String).void }
        attr_writer :app_subdomain

        # ISO 8601 formatted date/time of creation.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Hostname/IPv4 address of the SIPREC SRS.
        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        # Name for the SIPREC connector resource.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Port for the SIPREC SRS.
        sig { returns(T.nilable(Integer)) }
        attr_reader :port

        sig { params(port: Integer).void }
        attr_writer :port

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date/time of last update.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            app_subdomain: String,
            created_at: String,
            host: String,
            name: String,
            port: Integer,
            record_type: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Subdomain to route calls when using Telnyx SRS (optional).
          app_subdomain: nil,
          # ISO 8601 formatted date/time of creation.
          created_at: nil,
          # Hostname/IPv4 address of the SIPREC SRS.
          host: nil,
          # Name for the SIPREC connector resource.
          name: nil,
          # Port for the SIPREC SRS.
          port: nil,
          record_type: nil,
          # ISO 8601 formatted date/time of last update.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              app_subdomain: String,
              created_at: String,
              host: String,
              name: String,
              port: Integer,
              record_type: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
