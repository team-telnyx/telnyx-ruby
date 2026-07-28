# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#create
    class EmailDomainResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailDomain]
      required :data, -> { Telnyx::EmailDomain }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailDomain]
    end
  end
end
