# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class LabelMutationRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::Messages::LabelMutationRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # One or more labels. Each label is a freeform, case-sensitive string of at most
          # 255 characters; a message or thread may carry at most 50 labels. The `telnyx:`
          # prefix is a reserved system namespace and is rejected on customer writes.
          sig { returns(T::Array[String]) }
          attr_accessor :labels

          # Labels to add or remove. Both operations are idempotent set operations, so a
          # retried request converges instead of failing.
          sig { params(labels: T::Array[String]).returns(T.attached_class) }
          def self.new(
            # One or more labels. Each label is a freeform, case-sensitive string of at most
            # 255 characters; a message or thread may carry at most 50 labels. The `telnyx:`
            # prefix is a reserved system namespace and is rejected on customer writes.
            labels:
          )
          end

          sig { override.returns({ labels: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
