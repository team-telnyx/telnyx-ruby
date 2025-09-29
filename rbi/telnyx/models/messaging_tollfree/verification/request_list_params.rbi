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

          sig { returns(Integer) }
          attr_accessor :page

          # Request this many records per page
          #
          #         This value is automatically clamped if the provided value is too large.
          sig { returns(Integer) }
          attr_accessor :page_size

          sig { returns(T.nilable(Time)) }
          attr_reader :date_end

          sig { params(date_end: Time).void }
          attr_writer :date_end

          sig { returns(T.nilable(Time)) }
          attr_reader :date_start

          sig { params(date_start: Time).void }
          attr_writer :date_start

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Tollfree verification status
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
              date_end: Time,
              date_start: Time,
              phone_number: String,
              status:
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            page:,
            # Request this many records per page
            #
            #         This value is automatically clamped if the provided value is too large.
            page_size:,
            date_end: nil,
            date_start: nil,
            phone_number: nil,
            # Tollfree verification status
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                page: Integer,
                page_size: Integer,
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
