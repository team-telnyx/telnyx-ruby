# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#create
    class EmailBlockResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Suppression record. Schema fields hidden by the view: `account_id`,
      #   `bounce_category`, `dsn_code`, `meta`.
      #
      #   @return [Telnyx::Models::EmailBlock]
      required :data, -> { Telnyx::EmailBlock }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailBlockResponse} for more details.
      #
      #   @param data [Telnyx::Models::EmailBlock] Suppression record. Schema fields hidden by the view:
    end
  end
end
