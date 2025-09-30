# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class RequestListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessagingTollfree::Verification::RequestListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # The records yielded by this request
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessagingTollfree::Verification::VerificationRequestStatus
                ]
              )
            )
          end
          attr_reader :records

          sig do
            params(
              records:
                T::Array[
                  Telnyx::MessagingTollfree::Verification::VerificationRequestStatus::OrHash
                ]
            ).void
          end
          attr_writer :records

          # The total amount of records for these query parameters
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_records

          sig { params(total_records: Integer).void }
          attr_writer :total_records

          # A paginated response
          sig do
            params(
              records:
                T::Array[
                  Telnyx::MessagingTollfree::Verification::VerificationRequestStatus::OrHash
                ],
              total_records: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The records yielded by this request
            records: nil,
            # The total amount of records for these query parameters
            total_records: nil
          )
          end

          sig do
            override.returns(
              {
                records:
                  T::Array[
                    Telnyx::MessagingTollfree::Verification::VerificationRequestStatus
                  ],
                total_records: Integer
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
