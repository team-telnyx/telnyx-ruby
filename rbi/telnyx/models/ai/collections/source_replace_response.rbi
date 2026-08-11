# typed: strong

module Telnyx
  module Models
    module AI
      module Collections
        class SourceReplaceResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Collections::SourceReplaceResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[Telnyx::AI::Collections::Source])) }
          attr_reader :data

          sig do
            params(data: T::Array[Telnyx::AI::Collections::Source::OrHash]).void
          end
          attr_writer :data

          # Reports which source IDs were added, retained, and removed by a replace
          # operation.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta
              )
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data: T::Array[Telnyx::AI::Collections::Source::OrHash],
              meta:
                Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            data: nil,
            # Reports which source IDs were added, retained, and removed by a replace
            # operation.
            meta: nil
          )
          end

          sig do
            override.returns(
              {
                data: T::Array[Telnyx::AI::Collections::Source],
                meta:
                  Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta
              }
            )
          end
          def to_hash
          end

          class Meta < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :added

            sig { params(added: T::Array[String]).void }
            attr_writer :added

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :removed

            sig { params(removed: T::Array[String]).void }
            attr_writer :removed

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :retained

            sig { params(retained: T::Array[String]).void }
            attr_writer :retained

            # Reports which source IDs were added, retained, and removed by a replace
            # operation.
            sig do
              params(
                added: T::Array[String],
                removed: T::Array[String],
                retained: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(added: nil, removed: nil, retained: nil)
            end

            sig do
              override.returns(
                {
                  added: T::Array[String],
                  removed: T::Array[String],
                  retained: T::Array[String]
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
end
