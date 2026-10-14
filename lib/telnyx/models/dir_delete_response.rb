# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#delete
    class DirDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DirDeleteResponse::Data]
      required :data, -> { Telnyx::Models::DirDeleteResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::DirDeleteResponse::Data]

      # @see Telnyx::Models::DirDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Id of the DIR whose deletion was requested.
        #
        #   @return [String]
        required :id, String

        # @!attribute status
        #   Always `delete_requested`: the DIR has been queued for removal, not yet removed.
        #
        #   @return [Symbol, Telnyx::Models::DirDeleteResponse::Data::Status]
        required :status, enum: -> { Telnyx::Models::DirDeleteResponse::Data::Status }

        # @!method initialize(id:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DirDeleteResponse::Data} for more details.
        #
        #   @param id [String] Id of the DIR whose deletion was requested.
        #
        #   @param status [Symbol, Telnyx::Models::DirDeleteResponse::Data::Status] Always `delete_requested`: the DIR has been queued for removal, not yet removed.

        # Always `delete_requested`: the DIR has been queued for removal, not yet removed.
        #
        # @see Telnyx::Models::DirDeleteResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DELETE_REQUESTED = :delete_requested

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
