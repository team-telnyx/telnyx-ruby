# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        class RunCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Missions::RunCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :input

          sig { params(input: T::Hash[Symbol, T.anything]).void }
          attr_writer :input

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          sig do
            params(
              input: T::Hash[Symbol, T.anything],
              metadata: T::Hash[Symbol, T.anything],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(input: nil, metadata: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                input: T::Hash[Symbol, T.anything],
                metadata: T::Hash[Symbol, T.anything],
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
