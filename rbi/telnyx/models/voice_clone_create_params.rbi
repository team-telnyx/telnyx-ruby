# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceCloneCreateParams, Telnyx::Internal::AnyHash)
        end

      # Request body for creating a voice clone from an existing voice design.
      sig do
        returns(
          T.any(
            Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone,
            Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone
          )
        )
      end
      attr_accessor :params

      sig do
        params(
          params:
            T.any(
              Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::OrHash,
              Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Request body for creating a voice clone from an existing voice design.
        params:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            params:
              T.any(
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Request body for creating a voice clone from an existing voice design.
      module Params
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone,
              Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone
            )
          end

        class TelnyxDesignClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code for the clone. Supports the combined Telnyx language
          # set.
          sig { returns(String) }
          attr_accessor :language

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # UUID of the source voice design to clone.
          sig { returns(String) }
          attr_accessor :voice_design_id

          # Voice synthesis provider. Defaults to `telnyx`.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::OrSymbol
              )
            )
          end
          attr_reader :provider

          sig do
            params(
              provider:
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::OrSymbol
            ).void
          end
          attr_writer :provider

          # Create a voice clone from a voice design using the Telnyx provider.
          sig do
            params(
              gender:
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::OrSymbol,
              language: String,
              name: String,
              voice_design_id: String,
              provider:
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code for the clone. Supports the combined Telnyx language
            # set.
            language:,
            # Name for the voice clone.
            name:,
            # UUID of the source voice design to clone.
            voice_design_id:,
            # Voice synthesis provider. Defaults to `telnyx`.
            provider: nil
          )
          end

          sig do
            override.returns(
              {
                gender:
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::OrSymbol,
                language: String,
                name: String,
                voice_design_id: String,
                provider:
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Gender of the voice clone.
          module Gender
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Defaults to `telnyx`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::TaggedSymbol
              )
            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateParams::Params::TelnyxDesignClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MinimaxDesignClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code for the clone. Supports the Minimax language set.
          sig { returns(String) }
          attr_accessor :language

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `minimax`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::OrSymbol
            )
          end
          attr_accessor :provider

          # UUID of the source voice design to clone.
          sig { returns(String) }
          attr_accessor :voice_design_id

          # Create a voice clone from a voice design using the Minimax provider.
          sig do
            params(
              gender:
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::OrSymbol,
              language: String,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::OrSymbol,
              voice_design_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code for the clone. Supports the Minimax language set.
            language:,
            # Name for the voice clone.
            name:,
            # Voice synthesis provider. Must be `minimax`.
            provider:,
            # UUID of the source voice design to clone.
            voice_design_id:
          )
          end

          sig do
            override.returns(
              {
                gender:
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::OrSymbol,
                language: String,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::OrSymbol,
                voice_design_id: String
              }
            )
          end
          def to_hash
          end

          # Gender of the voice clone.
          module Gender
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Must be `minimax`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::TaggedSymbol
              )
            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateParams::Params::MinimaxDesignClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneCreateParams::Params::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
