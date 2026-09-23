# typed: strong

module Telnyx
  module Models
    class BotChallengeCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BotChallengeCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::BotChallengeCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::BotChallengeCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::BotChallengeCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::BotChallengeCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BotChallengeCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Type of challenge.
        sig do
          returns(
            Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol
          )
        end
        attr_accessor :challenge_type

        # Single-use challenge identifier. Submit it as `bot_challenge_nonce` on the
        # signup request.
        sig { returns(String) }
        attr_accessor :nonce

        # Current privacy-policy URL. Echo this back on the signup request.
        sig { returns(String) }
        attr_accessor :privacy_policy_url

        # Problem text to solve. Math problems are obfuscated and end with an unobfuscated
        # rounding instruction; string and binary problems are returned as-is.
        sig { returns(String) }
        attr_accessor :problem

        # Current terms-and-conditions URL. Echo this back on the signup request.
        sig { returns(String) }
        attr_accessor :terms_and_conditions_url

        # Decimal places expected in the answer. Present only for math challenges.
        sig { returns(T.nilable(Integer)) }
        attr_reader :precision

        sig { params(precision: Integer).void }
        attr_writer :precision

        sig do
          params(
            challenge_type:
              Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::OrSymbol,
            nonce: String,
            privacy_policy_url: String,
            problem: String,
            terms_and_conditions_url: String,
            precision: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of challenge.
          challenge_type:,
          # Single-use challenge identifier. Submit it as `bot_challenge_nonce` on the
          # signup request.
          nonce:,
          # Current privacy-policy URL. Echo this back on the signup request.
          privacy_policy_url:,
          # Problem text to solve. Math problems are obfuscated and end with an unobfuscated
          # rounding instruction; string and binary problems are returned as-is.
          problem:,
          # Current terms-and-conditions URL. Echo this back on the signup request.
          terms_and_conditions_url:,
          # Decimal places expected in the answer. Present only for math challenges.
          precision: nil
        )
        end

        sig do
          override.returns(
            {
              challenge_type:
                Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol,
              nonce: String,
              privacy_policy_url: String,
              problem: String,
              terms_and_conditions_url: String,
              precision: Integer
            }
          )
        end
        def to_hash
        end

        # Type of challenge.
        module ChallengeType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MATH =
            T.let(
              :math,
              Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol
            )
          STRING =
            T.let(
              :string,
              Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol
            )
          BINARY =
            T.let(
              :binary,
              Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType::TaggedSymbol
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
