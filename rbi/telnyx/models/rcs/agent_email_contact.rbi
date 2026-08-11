# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentEmailContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentEmailContact, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :address

        sig { returns(String) }
        attr_accessor :label

        sig { params(address: String, label: String).returns(T.attached_class) }
        def self.new(address:, label:)
        end

        sig { override.returns({ address: String, label: String }) }
        def to_hash
        end
      end
    end
  end
end
