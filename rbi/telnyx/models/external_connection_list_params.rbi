# typed: strong

module Telnyx
  module Models
    class ExternalConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ExternalConnectionListParams, Telnyx::Internal::AnyHash)
        end

      # Filter parameter for external connections (deepObject style). Supports filtering
      # by connection_name, external_sip_connection, id, created_at, and phone_number.
      sig { returns(T.nilable(Telnyx::ExternalConnectionListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::ExternalConnectionListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::ExternalConnectionListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::ExternalConnectionListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::ExternalConnectionListParams::Filter::OrHash,
          page: Telnyx::ExternalConnectionListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter parameter for external connections (deepObject style). Supports filtering
        # by connection_name, external_sip_connection, id, created_at, and phone_number.
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::ExternalConnectionListParams::Filter,
            page: Telnyx::ExternalConnectionListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnectionListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # If present, connections with <code>id</code> matching the given value will be
        # returned.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnectionListParams::Filter::ConnectionName
            )
          )
        end
        attr_reader :connection_name

        sig do
          params(
            connection_name:
              Telnyx::ExternalConnectionListParams::Filter::ConnectionName::OrHash
          ).void
        end
        attr_writer :connection_name

        # If present, connections with <code>created_at</code> date matching the given
        # YYYY-MM-DD date will be returned.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # If present, connections with <code>external_sip_connection</code> matching the
        # given value will be returned.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::OrSymbol
            )
          )
        end
        attr_reader :external_sip_connection

        sig do
          params(
            external_sip_connection:
              Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::OrSymbol
          ).void
        end
        attr_writer :external_sip_connection

        # Phone number filter for connections. Note: Despite the 'contains' name, this
        # requires a full E164 match per the original specification.
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnectionListParams::Filter::PhoneNumber)
          )
        end
        attr_reader :phone_number

        sig do
          params(
            phone_number:
              Telnyx::ExternalConnectionListParams::Filter::PhoneNumber::OrHash
          ).void
        end
        attr_writer :phone_number

        # Filter parameter for external connections (deepObject style). Supports filtering
        # by connection_name, external_sip_connection, id, created_at, and phone_number.
        sig do
          params(
            id: String,
            connection_name:
              Telnyx::ExternalConnectionListParams::Filter::ConnectionName::OrHash,
            created_at: String,
            external_sip_connection:
              Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::OrSymbol,
            phone_number:
              Telnyx::ExternalConnectionListParams::Filter::PhoneNumber::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # If present, connections with <code>id</code> matching the given value will be
          # returned.
          id: nil,
          connection_name: nil,
          # If present, connections with <code>created_at</code> date matching the given
          # YYYY-MM-DD date will be returned.
          created_at: nil,
          # If present, connections with <code>external_sip_connection</code> matching the
          # given value will be returned.
          external_sip_connection: nil,
          # Phone number filter for connections. Note: Despite the 'contains' name, this
          # requires a full E164 match per the original specification.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              connection_name:
                Telnyx::ExternalConnectionListParams::Filter::ConnectionName,
              created_at: String,
              external_sip_connection:
                Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::OrSymbol,
              phone_number:
                Telnyx::ExternalConnectionListParams::Filter::PhoneNumber
            }
          )
        end
        def to_hash
        end

        class ConnectionName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ExternalConnectionListParams::Filter::ConnectionName,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, connections with <code>connection_name</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, connections with <code>connection_name</code> containing the given
            # value will be returned. Matching is not case-sensitive. Requires at least three
            # characters.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end

        # If present, connections with <code>external_sip_connection</code> matching the
        # given value will be returned.
        module ExternalSipConnection
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ZOOM =
            T.let(
              :zoom,
              Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::TaggedSymbol
            )
          OPERATOR_CONNECT =
            T.let(
              :operator_connect,
              Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnectionListParams::Filter::ExternalSipConnection::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ExternalConnectionListParams::Filter::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, connections associated with the given phone_number will be returned.
          # A full match is necessary with a e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Phone number filter for connections. Note: Despite the 'contains' name, this
          # requires a full E164 match per the original specification.
          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, connections associated with the given phone_number will be returned.
            # A full match is necessary with a e164 format.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnectionListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
