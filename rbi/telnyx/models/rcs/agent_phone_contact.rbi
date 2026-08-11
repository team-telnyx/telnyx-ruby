# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentPhoneContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentPhoneContact, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :number

        sig { params(label: String, number: String).returns(T.attached_class) }
        def self.new(label:, number:)
        end

        sig { override.returns({ label: String, number: String }) }
        def to_hash
        end
      end
    end
  end
end
