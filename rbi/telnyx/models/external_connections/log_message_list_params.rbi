# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class LogMessageListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::LogMessageListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter parameter for log messages (deepObject style). Supports filtering by
        # external_connection_id and telephone_number with eq/contains operations.
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnections::LogMessageListParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::LogMessageListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnections::LogMessageListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::ExternalConnections::LogMessageListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::LogMessageListParams::Filter::OrHash,
            page:
              Telnyx::ExternalConnections::LogMessageListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter parameter for log messages (deepObject style). Supports filtering by
          # external_connection_id and telephone_number with eq/contains operations.
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
              filter: Telnyx::ExternalConnections::LogMessageListParams::Filter,
              page: Telnyx::ExternalConnections::LogMessageListParams::Page,
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
                Telnyx::ExternalConnections::LogMessageListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # The external connection ID to filter by or "null" to filter for logs without an
          # external connection ID
          sig { returns(T.nilable(String)) }
          attr_reader :external_connection_id

          sig { params(external_connection_id: String).void }
          attr_writer :external_connection_id

          # Telephone number filter operations for log messages. Use 'eq' for exact matches
          # or 'contains' for partial matches.
          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber
              )
            )
          end
          attr_reader :telephone_number

          sig do
            params(
              telephone_number:
                Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber::OrHash
            ).void
          end
          attr_writer :telephone_number

          # Filter parameter for log messages (deepObject style). Supports filtering by
          # external_connection_id and telephone_number with eq/contains operations.
          sig do
            params(
              external_connection_id: String,
              telephone_number:
                Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The external connection ID to filter by or "null" to filter for logs without an
            # external connection ID
            external_connection_id: nil,
            # Telephone number filter operations for log messages. Use 'eq' for exact matches
            # or 'contains' for partial matches.
            telephone_number: nil
          )
          end

          sig do
            override.returns(
              {
                external_connection_id: String,
                telephone_number:
                  Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber
              }
            )
          end
          def to_hash
          end

          class TelephoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::LogMessageListParams::Filter::TelephoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # The partial phone number to filter log messages for. Requires 3-15 digits.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # The phone number to filter log messages for or "null" to filter for logs without
            # a phone number
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            # Telephone number filter operations for log messages. Use 'eq' for exact matches
            # or 'contains' for partial matches.
            sig do
              params(contains: String, eq: String).returns(T.attached_class)
            end
            def self.new(
              # The partial phone number to filter log messages for. Requires 3-15 digits.
              contains: nil,
              # The phone number to filter log messages for or "null" to filter for logs without
              # a phone number
              eq: nil
            )
            end

            sig { override.returns({ contains: String, eq: String }) }
            def to_hash
            end
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ExternalConnections::LogMessageListParams::Page,
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
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
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
end
