# typed: strong

module Telnyx
  module Models
    ConferenceCommandResult = Conferences::ConferenceCommandResult

    module Conferences
      class ConferenceCommandResult < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ConferenceCommandResult,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :result

        sig { params(result: String).returns(T.attached_class) }
        def self.new(result:)
        end

        sig { override.returns({ result: String }) }
        def to_hash
        end
      end
    end
  end
end
