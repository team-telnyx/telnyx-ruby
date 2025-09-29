# typed: strong

module Telnyx
  module Models
    module PhoneNumberBlocks
      class JobDeletePhoneNumberBlockResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumberBlocks::JobDeletePhoneNumberBlockResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PhoneNumberBlocks::Job)) }
        attr_reader :data

        sig { params(data: Telnyx::PhoneNumberBlocks::Job::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::PhoneNumberBlocks::Job::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::PhoneNumberBlocks::Job }) }
        def to_hash
        end
      end
    end
  end
end
