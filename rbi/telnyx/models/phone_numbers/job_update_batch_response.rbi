# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class JobUpdateBatchResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::JobUpdateBatchResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PhoneNumbers::NumbersPhoneNumbersJob)) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::PhoneNumbers::NumbersPhoneNumbersJob }
          )
        end
        def to_hash
        end
      end
    end
  end
end
