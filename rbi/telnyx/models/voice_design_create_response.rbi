# typed: strong

module Telnyx
  module Models
    class VoiceDesignCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceDesignCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A voice design object with full version detail.
      sig do
        returns(T.nilable(Telnyx::Models::VoiceDesignCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::VoiceDesignCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response envelope for a single voice design with full version detail.
      sig do
        params(
          data: Telnyx::Models::VoiceDesignCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A voice design object with full version detail.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VoiceDesignCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VoiceDesignCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the voice design.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Timestamp when the voice design was first created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Name of the voice design.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Natural language prompt used to define the voice style for this version.
        sig { returns(T.nilable(String)) }
        attr_reader :prompt

        sig { params(prompt: String).void }
        attr_writer :prompt

        # Identifies the resource type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Sample text used to synthesize this version.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        # Timestamp when the voice design was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Version number of this voice design.
        sig { returns(T.nilable(Integer)) }
        attr_reader :version

        sig { params(version: Integer).void }
        attr_writer :version

        # Timestamp when this specific version was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :version_created_at

        sig { params(version_created_at: Time).void }
        attr_writer :version_created_at

        # Size of the voice sample audio in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :voice_sample_size

        sig { params(voice_sample_size: Integer).void }
        attr_writer :voice_sample_size

        # A voice design object with full version detail.
        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            prompt: String,
            record_type:
              Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::OrSymbol,
            text: String,
            updated_at: Time,
            version: Integer,
            version_created_at: Time,
            voice_sample_size: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the voice design.
          id: nil,
          # Timestamp when the voice design was first created.
          created_at: nil,
          # Name of the voice design.
          name: nil,
          # Natural language prompt used to define the voice style for this version.
          prompt: nil,
          # Identifies the resource type.
          record_type: nil,
          # Sample text used to synthesize this version.
          text: nil,
          # Timestamp when the voice design was last updated.
          updated_at: nil,
          # Version number of this voice design.
          version: nil,
          # Timestamp when this specific version was created.
          version_created_at: nil,
          # Size of the voice sample audio in bytes.
          voice_sample_size: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              prompt: String,
              record_type:
                Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::TaggedSymbol,
              text: String,
              updated_at: Time,
              version: Integer,
              version_created_at: Time,
              voice_sample_size: Integer
            }
          )
        end
        def to_hash
        end

        # Identifies the resource type.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOICE_DESIGN =
            T.let(
              :voice_design,
              Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
