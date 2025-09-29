# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CsvDownload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PhoneNumbers::CsvDownload, Telnyx::Internal::AnyHash)
          end

        # Indicates the completion level of the CSV report. Only complete CSV download
        # requests will be able to be retrieved.
        sig do
          returns(
            T.nilable(Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::PhoneNumbers::CsvDownload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # The URL at which the CSV file can be retrieved.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            record_type: String,
            status: Telnyx::PhoneNumbers::CsvDownload::Status::OrSymbol,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Indicates the completion level of the CSV report. Only complete CSV download
          # requests will be able to be retrieved.
          status: nil,
          # The URL at which the CSV file can be retrieved.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              record_type: String,
              status: Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol,
              url: String
            }
          )
        end
        def to_hash
        end

        # Indicates the completion level of the CSV report. Only complete CSV download
        # requests will be able to be retrieved.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PhoneNumbers::CsvDownload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :complete,
              Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::PhoneNumbers::CsvDownload::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
