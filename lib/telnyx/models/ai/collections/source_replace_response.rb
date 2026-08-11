# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Collections
        # @see Telnyx::Resources::AI::Collections::Sources#replace
        class SourceReplaceResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Collections::Source>, nil]
          optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::Source] }

          # @!attribute meta
          #   Reports which source IDs were added, retained, and removed by a replace
          #   operation.
          #
          #   @return [Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta, nil]
          optional :meta, -> { Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta }

          # @!method initialize(data: nil, meta: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Collections::SourceReplaceResponse} for more details.
          #
          #   @param data [Array<Telnyx::Models::AI::Collections::Source>]
          #
          #   @param meta [Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta] Reports which source IDs were added, retained, and removed by a replace operatio

          # @see Telnyx::Models::AI::Collections::SourceReplaceResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute added
            #
            #   @return [Array<String>, nil]
            optional :added, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute removed
            #
            #   @return [Array<String>, nil]
            optional :removed, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute retained
            #
            #   @return [Array<String>, nil]
            optional :retained, Telnyx::Internal::Type::ArrayOf[String]

            # @!method initialize(added: nil, removed: nil, retained: nil)
            #   Reports which source IDs were added, retained, and removed by a replace
            #   operation.
            #
            #   @param added [Array<String>]
            #   @param removed [Array<String>]
            #   @param retained [Array<String>]
          end
        end
      end
    end
  end
end
