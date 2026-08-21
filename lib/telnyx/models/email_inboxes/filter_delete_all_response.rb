# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Filters#delete_all
      class FilterDeleteAllResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::InboxFilters]
        required :data, -> { Telnyx::EmailInboxes::InboxFilters }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailInboxes::InboxFilters]
      end
    end
  end
end
