# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RecordingTranscriptions#list
    class RecordingTranscriptionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::RecordingTranscription>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RecordingTranscription] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::RecordingTranscriptionListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::RecordingTranscriptionListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::RecordingTranscription>]
      #   @param meta [Telnyx::Models::RecordingTranscriptionListResponse::Meta]

      # @see Telnyx::Models::RecordingTranscriptionListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute cursors
        #
        #   @return [Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors, nil]
        optional :cursors, -> { Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors }

        # @!attribute next_
        #   Path to next page.
        #
        #   @return [String, nil]
        optional :next_, String, api_name: :next

        # @!attribute previous
        #   Path to previous page.
        #
        #   @return [String, nil]
        optional :previous, String

        # @!method initialize(cursors: nil, next_: nil, previous: nil)
        #   @param cursors [Telnyx::Models::RecordingTranscriptionListResponse::Meta::Cursors]
        #
        #   @param next_ [String] Path to next page.
        #
        #   @param previous [String] Path to previous page.

        # @see Telnyx::Models::RecordingTranscriptionListResponse::Meta#cursors
        class Cursors < Telnyx::Internal::Type::BaseModel
          # @!attribute after
          #   Opaque identifier of next page.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #   Opaque identifier of previous page.
          #
          #   @return [String, nil]
          optional :before, String

          # @!method initialize(after: nil, before: nil)
          #   @param after [String] Opaque identifier of next page.
          #
          #   @param before [String] Opaque identifier of previous page.
        end
      end
    end
  end
end
