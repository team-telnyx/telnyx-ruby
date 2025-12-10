# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Faxes#list
    class FaxListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Fax>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Fax] }

      # @!attribute meta
      #
      #   @return [Object, nil]
      optional :meta, Telnyx::Internal::Type::Unknown

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Fax>]
      #   @param meta [Object]
    end
  end
end
