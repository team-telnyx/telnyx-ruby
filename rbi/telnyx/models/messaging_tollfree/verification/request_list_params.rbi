# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class RequestListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::RequestListParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Page number to retrieve (1-based).
          sig { returns(Integer) }
          attr_accessor :page

          # Request this many records per page
          #
          #         This value is automatically clamped if the provided value is too large.
          sig { returns(Integer) }
          attr_accessor :page_size

          # Filter verification requests by business name
          sig { returns(T.nilable(String)) }
          attr_reader :business_name

          sig { params(business_name: String).void }
          attr_writer :business_name

          # End of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :date_end

          sig { params(date_end: Time).void }
          attr_writer :date_end

          # Start of the date range filter (inclusive, ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :date_start

          sig { params(date_start: Time).void }
          attr_writer :date_start

          # Filter results by phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Filter results by status.
          sig do
            returns(
              T.nilable(
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              page: Integer,
              page_size: Integer,
              business_name: String,
              date_end: Time,
              date_start: Time,
              phone_number: String,
              status:
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Page number to retrieve (1-based).
            page:,
            # Request this many records per page
            #
            #         This value is automatically clamped if the provided value is too large.
            page_size:,
            # Filter verification requests by business name
            business_name: nil,
            # End of the date range filter (inclusive, ISO 8601).
            date_end: nil,
            # Start of the date range filter (inclusive, ISO 8601).
            date_start: nil,
            # Filter results by phone number.
            phone_number: nil,
            # Filter results by status.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                page: Integer,
                page_size: Integer,
                business_name: String,
                date_end: Time,
                date_start: Time,
                phone_number: String,
                status:
                  Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
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
end
