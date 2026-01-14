# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class UploadListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::UploadListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter parameter for uploads (deepObject style). Supports filtering by status,
        # civic_address_id, location_id, and phone_number with eq/contains operations.
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnections::UploadListParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::UploadListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter:
              Telnyx::ExternalConnections::UploadListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter parameter for uploads (deepObject style). Supports filtering by status,
          # civic_address_id, location_id, and phone_number with eq/contains operations.
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::ExternalConnections::UploadListParams::Filter,
              page_number: Integer,
              page_size: Integer,
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
                Telnyx::ExternalConnections::UploadListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID
              )
            )
          end
          attr_reader :civic_address_id

          sig do
            params(
              civic_address_id:
                Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID::OrHash
            ).void
          end
          attr_writer :civic_address_id

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::UploadListParams::Filter::LocationID
              )
            )
          end
          attr_reader :location_id

          sig do
            params(
              location_id:
                Telnyx::ExternalConnections::UploadListParams::Filter::LocationID::OrHash
            ).void
          end
          attr_writer :location_id

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber
              )
            )
          end
          attr_reader :phone_number

          sig do
            params(
              phone_number:
                Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber::OrHash
            ).void
          end
          attr_writer :phone_number

          sig do
            returns(
              T.nilable(
                Telnyx::ExternalConnections::UploadListParams::Filter::Status
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::ExternalConnections::UploadListParams::Filter::Status::OrHash
            ).void
          end
          attr_writer :status

          # Filter parameter for uploads (deepObject style). Supports filtering by status,
          # civic_address_id, location_id, and phone_number with eq/contains operations.
          sig do
            params(
              civic_address_id:
                Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID::OrHash,
              location_id:
                Telnyx::ExternalConnections::UploadListParams::Filter::LocationID::OrHash,
              phone_number:
                Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber::OrHash,
              status:
                Telnyx::ExternalConnections::UploadListParams::Filter::Status::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            civic_address_id: nil,
            location_id: nil,
            phone_number: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                civic_address_id:
                  Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID,
                location_id:
                  Telnyx::ExternalConnections::UploadListParams::Filter::LocationID,
                phone_number:
                  Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber,
                status:
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status
              }
            )
          end
          def to_hash
          end

          class CivicAddressID < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::UploadListParams::Filter::CivicAddressID,
                  Telnyx::Internal::AnyHash
                )
              end

            # The civic address ID to filter by
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig { params(eq: String).returns(T.attached_class) }
            def self.new(
              # The civic address ID to filter by
              eq: nil
            )
            end

            sig { override.returns({ eq: String }) }
            def to_hash
            end
          end

          class LocationID < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::UploadListParams::Filter::LocationID,
                  Telnyx::Internal::AnyHash
                )
              end

            # The location ID to filter by
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig { params(eq: String).returns(T.attached_class) }
            def self.new(
              # The location ID to filter by
              eq: nil
            )
            end

            sig { override.returns({ eq: String }) }
            def to_hash
            end
          end

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::UploadListParams::Filter::PhoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # The phone number to filter by (partial match)
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # The phone number to filter by (exact match)
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig do
              params(contains: String, eq: String).returns(T.attached_class)
            end
            def self.new(
              # The phone number to filter by (partial match)
              contains: nil,
              # The phone number to filter by (exact match)
              eq: nil
            )
            end

            sig { override.returns({ contains: String, eq: String }) }
            def to_hash
            end
          end

          class Status < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status,
                  Telnyx::Internal::AnyHash
                )
              end

            # The status of the upload to filter by
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::OrSymbol
                  ]
                )
              )
            end
            attr_reader :eq

            sig do
              params(
                eq:
                  T::Array[
                    Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::OrSymbol
                  ]
              ).void
            end
            attr_writer :eq

            sig do
              params(
                eq:
                  T::Array[
                    Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::OrSymbol
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The status of the upload to filter by
              eq: nil
            )
            end

            sig do
              override.returns(
                {
                  eq:
                    T::Array[
                      Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::OrSymbol
                    ]
                }
              )
            end
            def to_hash
            end

            module Eq
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING_UPLOAD =
                T.let(
                  :pending_upload,
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                )
              IN_PROGRESS =
                T.let(
                  :in_progress,
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                )
              SUCCESS =
                T.let(
                  :success,
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                )
              ERROR =
                T.let(
                  :error,
                  Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::ExternalConnections::UploadListParams::Filter::Status::Eq::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
