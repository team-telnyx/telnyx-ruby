# frozen_string_literal: true

module Telnyx
  module Models
    module Addresses
      # @see Telnyx::Resources::Addresses::Actions#accept_suggestions
      class ActionAcceptSuggestionsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data]

        # @see Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The UUID of the location.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute accepted
          #   Indicates if the address suggestions are accepted.
          #
          #   @return [Boolean, nil]
          optional :accepted, Telnyx::Internal::Type::Boolean

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType }

          # @!method initialize(id: nil, accepted: nil, record_type: nil)
          #   @param id [String] The UUID of the location.
          #
          #   @param accepted [Boolean] Indicates if the address suggestions are accepted.
          #
          #   @param record_type [Symbol, Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType]

          # @see Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            ADDRESS_SUGGESTION = :address_suggestion

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
