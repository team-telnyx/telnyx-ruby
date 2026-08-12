# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentWebsiteContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentWebsiteContact, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :url

        sig { params(label: String, url: String).returns(T.attached_class) }
        def self.new(label:, url:)
        end

        sig { override.returns({ label: String, url: String }) }
        def to_hash
        end
      end
    end
  end
end
