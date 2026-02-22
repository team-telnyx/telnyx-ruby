# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class RequestRetrieveStatusHistoryResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # The records yielded by this request
          sig do
            returns(
              T::Array[
                Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record
              ]
            )
          end
          attr_accessor :records

          # The total amount of records for these query parameters
          sig { returns(Integer) }
          attr_accessor :total_records

          # A paginated response
          sig do
            params(
              records:
                T::Array[
                  Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record::OrHash
                ],
              total_records: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The records yielded by this request
            records:,
            # The total amount of records for these query parameters
            total_records:
          )
          end

          sig do
            override.returns(
              {
                records:
                  T::Array[
                    Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record
                  ],
                total_records: Integer
              }
            )
          end
          def to_hash
          end

          class Record < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryResponse::Record,
                  Telnyx::Internal::AnyHash
                )
              end

            # The timestamp at which this status change occurred
            sig { returns(Time) }
            attr_accessor :updated_at

            # Tollfree verification status
            sig do
              returns(
                Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol
              )
            end
            attr_accessor :verification_status

            # An explanation of why this request has its current status.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            # A single entry in the verification request status history
            sig do
              params(
                updated_at: Time,
                verification_status:
                  Telnyx::MessagingTollfree::Verification::TfVerificationStatus::OrSymbol,
                reason: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The timestamp at which this status change occurred
              updated_at:,
              # Tollfree verification status
              verification_status:,
              # An explanation of why this request has its current status.
              reason: nil
            )
            end

            sig do
              override.returns(
                {
                  updated_at: Time,
                  verification_status:
                    Telnyx::MessagingTollfree::Verification::TfVerificationStatus::TaggedSymbol,
                  reason: T.nilable(String)
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
end
