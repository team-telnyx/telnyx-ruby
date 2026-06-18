# typed: strong

module Telnyx
  module Models
    module Queues
      class CallRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Queues::CallRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Queues::QueueCall)) }
        attr_reader :data

        sig { params(data: Telnyx::Queues::QueueCall::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Queues::QueueCall::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Queues::QueueCall }) }
        def to_hash
        end
      end
    end
  end
end
