# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#list_rejection_codes
    class PortoutListRejectionCodesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortoutListRejectionCodesResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortoutListRejectionCodesResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::PortoutListRejectionCodesResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [Integer, nil]
        optional :code, Integer

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute reason_required
        #
        #   @return [Boolean, nil]
        optional :reason_required, Telnyx::Internal::Type::Boolean

        # @!method initialize(code: nil, description: nil, reason_required: nil)
        #   @param code [Integer]
        #   @param description [String]
        #   @param reason_required [Boolean]
      end
    end
  end
end
