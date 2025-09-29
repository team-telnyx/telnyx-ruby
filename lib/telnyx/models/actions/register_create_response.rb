# frozen_string_literal: true

module Telnyx
  module Models
    module Actions
      # @see Telnyx::Resources::Actions::Register#create
      class RegisterCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Successfully registered SIM cards.
        #
        #   @return [Array<Telnyx::Models::SimpleSimCard>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard] }

        # @!attribute errors
        #
        #   @return [Array<Telnyx::Models::Actions::RegisterCreateResponse::Error>, nil]
        optional :errors,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Actions::RegisterCreateResponse::Error] }

        # @!method initialize(data: nil, errors: nil)
        #   @param data [Array<Telnyx::Models::SimpleSimCard>] Successfully registered SIM cards.
        #
        #   @param errors [Array<Telnyx::Models::Actions::RegisterCreateResponse::Error>]

        class Error < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String]
          required :code, String

          # @!attribute title
          #
          #   @return [String]
          required :title, String

          # @!attribute detail
          #
          #   @return [String, nil]
          optional :detail, String

          # @!attribute meta
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :meta, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute source
          #
          #   @return [Telnyx::Models::Actions::RegisterCreateResponse::Error::Source, nil]
          optional :source, -> { Telnyx::Models::Actions::RegisterCreateResponse::Error::Source }

          # @!method initialize(code:, title:, detail: nil, meta: nil, source: nil)
          #   @param code [String]
          #   @param title [String]
          #   @param detail [String]
          #   @param meta [Hash{Symbol=>Object}]
          #   @param source [Telnyx::Models::Actions::RegisterCreateResponse::Error::Source]

          # @see Telnyx::Models::Actions::RegisterCreateResponse::Error#source
          class Source < Telnyx::Internal::Type::BaseModel
            # @!attribute parameter
            #   Indicates which query parameter caused the error.
            #
            #   @return [String, nil]
            optional :parameter, String

            # @!attribute pointer
            #   JSON pointer (RFC6901) to the offending entity.
            #
            #   @return [String, nil]
            optional :pointer, String

            # @!method initialize(parameter: nil, pointer: nil)
            #   @param parameter [String] Indicates which query parameter caused the error.
            #
            #   @param pointer [String] JSON pointer (RFC6901) to the offending entity.
          end
        end
      end
    end
  end
end
