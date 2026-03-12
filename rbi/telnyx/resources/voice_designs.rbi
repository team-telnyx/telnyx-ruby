# typed: strong

module Telnyx
  module Resources
    # Create and manage AI-generated voice designs using natural language prompts.
    class VoiceDesigns
      # Creates a new voice design (version 1) when `voice_design_id` is omitted. When
      # `voice_design_id` is provided, adds a new version to the existing design
      # instead. A design can have at most 50 versions.
      sig do
        params(
          prompt: String,
          text: String,
          language: String,
          max_new_tokens: Integer,
          name: String,
          repetition_penalty: Float,
          temperature: Float,
          top_k: Integer,
          top_p: Float,
          voice_design_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceDesignCreateResponse)
      end
      def create(
        # Natural language description of the voice style, e.g. 'Speak in a warm, friendly
        # tone with a slight British accent'.
        prompt:,
        # Sample text to synthesize for this voice design.
        text:,
        # Language for synthesis. Supported values: Auto, Chinese, English, Japanese,
        # Korean, German, French, Russian, Portuguese, Spanish, Italian. Defaults to Auto.
        language: nil,
        # Maximum number of tokens to generate. Default: 2048.
        max_new_tokens: nil,
        # Name for the voice design. Required when creating a new design
        # (`voice_design_id` is not provided); ignored when adding a version. Cannot be a
        # UUID.
        name: nil,
        # Repetition penalty to reduce repeated patterns in generated audio. Default:
        # 1.05.
        repetition_penalty: nil,
        # Sampling temperature controlling randomness. Higher values produce more varied
        # output. Default: 0.9.
        temperature: nil,
        # Top-k sampling parameter — limits the token vocabulary considered at each step.
        # Default: 50.
        top_k: nil,
        # Top-p (nucleus) sampling parameter — cumulative probability cutoff for token
        # selection. Default: 1.0.
        top_p: nil,
        # ID of an existing voice design to add a new version to. When provided, a new
        # version is created instead of a new design.
        voice_design_id: nil,
        request_options: {}
      )
      end

      # Returns the latest version of a voice design, or a specific version when
      # `?version=N` is provided. The `id` parameter accepts either a UUID or the design
      # name.
      sig do
        params(
          id: String,
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceDesignRetrieveResponse)
      end
      def retrieve(
        # The voice design UUID or name.
        id,
        # Specific version number to retrieve. Defaults to the latest version.
        version: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of voice designs belonging to the authenticated
      # account.
      sig do
        params(
          filter_name: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceDesignListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::VoiceDesignListResponse
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

      # Permanently deletes a voice design and all of its versions. This action cannot
      # be undone.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The voice design UUID or name.
        id,
        request_options: {}
      )
      end

      # Permanently deletes a specific version of a voice design. The version number
      # must be a positive integer.
      sig do
        params(
          version: Integer,
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete_version(
        # The version number to delete.
        version,
        # The voice design UUID or name.
        id:,
        request_options: {}
      )
      end

      # Downloads the WAV audio sample for the voice design. Returns the latest
      # version's sample by default, or a specific version when `?version=N` is
      # provided. The `id` parameter accepts either a UUID or the design name.
      sig do
        params(
          id: String,
          version: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download_sample(
        # The voice design UUID or name.
        id,
        # Specific version number to download the sample for. Defaults to the latest
        # version.
        version: nil,
        request_options: {}
      )
      end

      # Updates the name of a voice design. All versions retain their other properties.
      sig do
        params(
          id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VoiceDesignRenameResponse)
      end
      def rename(
        # The voice design UUID or name.
        id,
        # New name for the voice design.
        name:,
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
