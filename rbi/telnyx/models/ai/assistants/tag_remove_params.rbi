# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TagRemoveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::TagRemoveParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          sig { returns(String) }
          attr_accessor :tag

          sig do
            params(
              assistant_id: String,
              tag: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(assistant_id:, tag:, request_options: {})
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                tag: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
