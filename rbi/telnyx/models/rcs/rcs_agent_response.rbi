# typed: strong

module Telnyx
  module Models
    RcsAgentResponse = Rcs::RcsAgentResponse

    module Rcs
      class RcsAgentResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::RcsAgentResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(Telnyx::Rcs::RcsAgent)) }
        attr_reader :data

        sig { params(data: Telnyx::Rcs::RcsAgent::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Rcs::RcsAgent::OrHash).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Rcs::RcsAgent }) }
        def to_hash
        end
      end
    end
  end
end
