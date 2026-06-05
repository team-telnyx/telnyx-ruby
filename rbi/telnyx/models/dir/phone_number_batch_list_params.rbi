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
        sig do
          returns(
            T.nilable(
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::OrSymbol
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
            filter_status:
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::OrSymbol,
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
              filter_status:
                Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Restrict to batches whose aggregate status equals this value.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          UNSUCCESSFUL =
            T.let(
              :unsuccessful,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )
          PERMANENTLY_REJECTED =
            T.let(
              :permanently_rejected,
              Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus::TaggedSymbol
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
