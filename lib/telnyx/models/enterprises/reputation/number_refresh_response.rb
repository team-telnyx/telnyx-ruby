# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#refresh
        class NumberRefreshResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data]
          required :data, -> { Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data]

          # @see Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute results
            #   Per-number outcome of the refresh.
            #
            #   @return [Array<Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result>]
            required :results,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result] }

            # @!attribute total_failed
            #
            #   @return [Integer]
            required :total_failed, Integer

            # @!attribute total_requested
            #
            #   @return [Integer]
            required :total_requested, Integer

            # @!attribute total_successful
            #
            #   @return [Integer]
            required :total_successful, Integer

            # @!method initialize(results:, total_failed:, total_requested:, total_successful:)
            #   @param results [Array<Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data::Result>] Per-number outcome of the refresh.
            #
            #   @param total_failed [Integer]
            #
            #   @param total_requested [Integer]
            #
            #   @param total_successful [Integer]

            class Result < Telnyx::Internal::Type::BaseModel
              # @!attribute phone_number
              #
              #   @return [String]
              required :phone_number, String

              # @!attribute success
              #
              #   @return [Boolean]
              required :success, Telnyx::Internal::Type::Boolean

              # @!attribute error
              #   `null` when `success` is `true`; carries an error message otherwise.
              #
              #   @return [String, nil]
              optional :error, String, nil?: true

              # @!method initialize(phone_number:, success:, error: nil)
              #   @param phone_number [String]
              #
              #   @param success [Boolean]
              #
              #   @param error [String, nil] `null` when `success` is `true`; carries an error message otherwise.
            end
          end
        end
      end
    end
  end
end
