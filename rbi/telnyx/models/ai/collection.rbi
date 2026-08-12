# typed: strong

module Telnyx
  module Models
    module AI
      class Collection < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Collection, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the record type. Always `ai_collection`.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          returns(T.nilable(Telnyx::AI::Collections::RetrievalSettingsWrapper))
        end
        attr_reader :settings

        sig do
          params(
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash
          ).void
        end
        attr_writer :settings

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(T::Array[Telnyx::AI::Collections::Source])) }
        attr_reader :sources

        sig do
          params(
            sources: T::Array[Telnyx::AI::Collections::Source::OrHash]
          ).void
        end
        attr_writer :sources

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig do
          params(
            created_at: Time,
            description: String,
            name: String,
            record_type: String,
            settings: Telnyx::AI::Collections::RetrievalSettingsWrapper::OrHash,
            slug: String,
            sources: T::Array[Telnyx::AI::Collections::Source::OrHash],
            status: String,
            updated_at: Time,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at: nil,
          description: nil,
          name: nil,
          # Identifies the record type. Always `ai_collection`.
          record_type: nil,
          settings: nil,
          slug: nil,
          sources: nil,
          status: nil,
          updated_at: nil,
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              description: String,
              name: String,
              record_type: String,
              settings: Telnyx::AI::Collections::RetrievalSettingsWrapper,
              slug: String,
              sources: T::Array[Telnyx::AI::Collections::Source],
              status: String,
              updated_at: Time,
              uuid: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
