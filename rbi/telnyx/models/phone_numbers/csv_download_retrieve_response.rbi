# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CsvDownloadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::PhoneNumbers::CsvDownload])) }
        attr_reader :data

        sig do
          params(data: T::Array[Telnyx::PhoneNumbers::CsvDownload::OrHash]).void
        end
        attr_writer :data

        sig do
          params(
            data: T::Array[Telnyx::PhoneNumbers::CsvDownload::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::PhoneNumbers::CsvDownload] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
