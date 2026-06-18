# typed: strong

module Telnyx
  module Models
    module Dir
      class PhoneNumberBatchListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Dir::PhoneNumberBatchListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :dir_id

        # Restrict to batches whose aggregate status equals this value.
        sig { returns(T.nilable(Telnyx::Dir::DirPhoneNumberStatus::OrSymbol)) }
        attr_reader :filter_status

        sig do
          params(
            filter_status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        # 1-based page number. Out-of-range values return an empty page with correct meta.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Items per page. Maximum 250; values above are clamped to 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            dir_id: String,
            filter_status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          dir_id:,
          # Restrict to batches whose aggregate status equals this value.
          filter_status: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dir_id: String,
              filter_status: Telnyx::Dir::DirPhoneNumberStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
