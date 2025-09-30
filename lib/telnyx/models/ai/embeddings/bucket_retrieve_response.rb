# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Embeddings
        # @see Telnyx::Resources::AI::Embeddings::Buckets#retrieve
        class BucketRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data] }

          # @!method initialize(data:)
          #   @param data [Array<Telnyx::Models::AI::Embeddings::BucketRetrieveResponse::Data>]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute filename
            #
            #   @return [String]
            required :filename, String

            # @!attribute status
            #
            #   @return [String]
            required :status, String

            # @!attribute error_reason
            #
            #   @return [String, nil]
            optional :error_reason, String

            # @!attribute last_embedded_at
            #
            #   @return [Time, nil]
            optional :last_embedded_at, Time

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(created_at:, filename:, status:, error_reason: nil, last_embedded_at: nil, updated_at: nil)
            #   @param created_at [Time]
            #   @param filename [String]
            #   @param status [String]
            #   @param error_reason [String]
            #   @param last_embedded_at [Time]
            #   @param updated_at [Time]
          end
        end
      end
    end
  end
end
