# typed: strong

module Telnyx
  module Models
    module Faxes
      class ActionRefreshResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Faxes::ActionRefreshResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :result

        sig { params(result: String).void }
        attr_writer :result

        sig { params(result: String).returns(T.attached_class) }
        def self.new(result: nil)
        end

        sig { override.returns({ result: String }) }
        def to_hash
        end
      end
    end
  end
end
