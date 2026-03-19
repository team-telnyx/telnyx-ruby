# typed: strong

module Telnyx
  module Resources
    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    class VoiceClones
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
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::VoiceCloneListResponse
          ]
        )
      end
      def list(
        # Case-insensitive substring filter on the name field.
        filter_name: nil,
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

      # Creates a new voice clone by capturing the voice identity of an existing voice
      # design. The clone can then be used for text-to-speech synthesis.
      sig do
        params(
          gender: Telnyx::VoiceCloneCreateFromDesignParams::Gender::OrSymbol,
          language: String,
          name: String,
          voice_design_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceCloneCreateFromDesignResponse)
      end
      def create_from_design(
        # Gender of the voice clone.
        gender:,
        # ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
        language:,
        # Name for the voice clone.
        name:,
        # UUID of the source voice design to clone.
        voice_design_id:,
        request_options: {}
      )
      end

      # Creates a new voice clone by uploading an audio file directly. Supported
      # formats: WAV, MP3, FLAC, OGG, M4A. For best results, provide 5–10 seconds of
      # clear speech. Maximum file size: 2MB.
      sig do
        params(
          audio_file: Telnyx::Internal::FileInput,
          language: String,
          name: String,
          gender: Telnyx::VoiceCloneCreateFromUploadParams::Gender::OrSymbol,
          label: String,
          ref_text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceCloneCreateFromUploadResponse)
      end
      def create_from_upload(
        # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
        # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
        # size: 2MB.
        audio_file:,
        # ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
        language:,
        # Name for the voice clone.
        name:,
        # Gender of the voice clone.
        gender: nil,
        # Optional custom label describing the voice style. If omitted, falls back to the
        # source design's prompt text.
        label: nil,
        # Optional transcript of the audio file. Providing this improves clone quality.
        ref_text: nil,
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
