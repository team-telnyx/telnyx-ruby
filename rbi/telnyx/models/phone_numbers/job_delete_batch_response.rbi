# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class JobDeleteBatchResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::JobDeleteBatchResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PhoneNumbers::PhoneNumbersJob)) }
        attr_reader :data

        sig { params(data: Telnyx::PhoneNumbers::PhoneNumbersJob::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::PhoneNumbers::PhoneNumbersJob::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::PhoneNumbers::PhoneNumbersJob })
        end
        def to_hash
        end
      end
    end
  end
end
