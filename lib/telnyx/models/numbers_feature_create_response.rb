# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumbersFeatures#create
    class NumbersFeatureCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NumbersFeatureCreateResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NumbersFeatureCreateResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::NumbersFeatureCreateResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute features
        #
        #   @return [Array<String>]
        required :features, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(features:, phone_number:)
        #   @param features [Array<String>]
        #   @param phone_number [String]
      end
    end
  end
end
