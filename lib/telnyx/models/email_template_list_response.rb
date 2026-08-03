# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#list
    class EmailTemplateListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailTemplate>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailTemplate] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
      required :meta, -> { Telnyx::EmailInboxes::EmailPaginationMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::EmailTemplate>]
      #   @param meta [Telnyx::Models::EmailInboxes::EmailPaginationMeta]
    end
  end
end
