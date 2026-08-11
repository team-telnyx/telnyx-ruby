# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SettingsEnvelope < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Collections::SettingsEnvelope,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Telnyx::AI::Collections::RetrievalSettingsWrapper)
            )
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              { data: Telnyx::AI::Collections::RetrievalSettingsWrapper }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
