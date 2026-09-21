# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotChallenge#create
    class BotChallengeCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BotChallengeCreateResponse::Data]
      required :data, -> { Telnyx::Models::BotChallengeCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::BotChallengeCreateResponse::Data]

      # @see Telnyx::Models::BotChallengeCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute challenge_type
        #   Type of challenge.
        #
        #   @return [Symbol, Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType]
        required :challenge_type, enum: -> { Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType }

        # @!attribute nonce
        #   Single-use challenge identifier. Submit it as `bot_challenge_nonce` on the
        #   signup request.
        #
        #   @return [String]
        required :nonce, String

        # @!attribute privacy_policy_url
        #   Current privacy-policy URL. Echo this back on the signup request.
        #
        #   @return [String]
        required :privacy_policy_url, String

        # @!attribute problem
        #   Problem text to solve. Math problems are obfuscated and end with an unobfuscated
        #   rounding instruction; string and binary problems are returned as-is.
        #
        #   @return [String]
        required :problem, String

        # @!attribute terms_and_conditions_url
        #   Current terms-and-conditions URL. Echo this back on the signup request.
        #
        #   @return [String]
        required :terms_and_conditions_url, String

        # @!attribute precision
        #   Decimal places expected in the answer. Present only for math challenges.
        #
        #   @return [Integer, nil]
        optional :precision, Integer

        # @!method initialize(challenge_type:, nonce:, privacy_policy_url:, problem:, terms_and_conditions_url:, precision: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BotChallengeCreateResponse::Data} for more details.
        #
        #   @param challenge_type [Symbol, Telnyx::Models::BotChallengeCreateResponse::Data::ChallengeType] Type of challenge.
        #
        #   @param nonce [String] Single-use challenge identifier. Submit it as `bot_challenge_nonce` on the signu
        #
        #   @param privacy_policy_url [String] Current privacy-policy URL. Echo this back on the signup request.
        #
        #   @param problem [String] Problem text to solve. Math problems are obfuscated and end with an unobfuscated
        #
        #   @param terms_and_conditions_url [String] Current terms-and-conditions URL. Echo this back on the signup request.
        #
        #   @param precision [Integer] Decimal places expected in the answer. Present only for math challenges.

        # Type of challenge.
        #
        # @see Telnyx::Models::BotChallengeCreateResponse::Data#challenge_type
        module ChallengeType
          extend Telnyx::Internal::Type::Enum

          MATH = :math
          STRING = :string
          BINARY = :binary

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
