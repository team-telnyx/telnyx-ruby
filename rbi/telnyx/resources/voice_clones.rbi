# typed: strong

module Telnyx
  module Resources
    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    class VoiceClones
      # Creates a new voice clone by capturing the voice identity of an existing voice
      # design. The clone can then be used for text-to-speech synthesis.
      sig do
        params(
          body:
            T.any(
              Telnyx::VoiceCloneCreateParams::Body::TelnyxDesignClone::OrHash,
              Telnyx::VoiceCloneCreateParams::Body::MinimaxDesignClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceCloneCreateResponse)
      end
      def create(
        # Request body for creating a voice clone from an existing voice design.
        body:,
        request_options: {}
      )
      end

      # Updates the name, language, or gender of a voice clone.
      sig do
        params(
          id: String,
          name: String,
          gender: Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol,
          language: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceCloneUpdateResponse)
      end
      def update(
        # The voice clone UUID.
        id,
        # New name for the voice clone.
        name:,
        # Updated gender for the voice clone.
        gender: nil,
        # Updated ISO 639-1 language code or `auto`.
        language: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of voice clones belonging to the authenticated account.
      sig do
        params(
          filter_name: String,
          filter_provider:
            Telnyx::VoiceCloneListParams::FilterProvider::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::VoiceCloneData]
        )
      end
      def list(
        # Case-insensitive substring filter on the name field.
        filter_name: nil,
        # Filter by voice synthesis provider. Case-insensitive.
        filter_provider: nil,
        # Page number for pagination (1-based).
        page_number: nil,
        # Number of results per page.
        page_size: nil,
        # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      # Permanently deletes a voice clone. This action cannot be undone.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The voice clone UUID.
        id,
        request_options: {}
      )
      end

      # Creates a new voice clone by uploading an audio file directly. Supported
      # formats: WAV, MP3, FLAC, OGG, M4A. For best results, provide 5–10 seconds of
      # clear speech. Maximum file size: 5MB for Telnyx, 20MB for Minimax.
      sig do
        params(
          body:
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::Body::TelnyxQwen3TtsClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::Body::TelnyxUltraClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::Body::MinimaxClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceCloneCreateFromUploadResponse)
      end
      def create_from_upload(
        # Multipart form data for creating a voice clone from a direct audio upload.
        # Maximum file size: 5MB for Telnyx, 20MB for Minimax.
        body:,
        request_options: {}
      )
      end

      # Downloads the WAV audio sample that was used to create the voice clone.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download_sample(
        # The voice clone UUID.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
