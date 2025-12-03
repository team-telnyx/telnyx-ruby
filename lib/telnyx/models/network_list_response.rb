# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list
    class NetworkListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NetworkListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NetworkListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Models::Record
        # @!attribute name
        #   A user specified name for the network.
        #
        #   @return [String, nil]
        optional :name, String

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(name: nil, record_type: nil)
        #   @param name [String] A user specified name for the network.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
