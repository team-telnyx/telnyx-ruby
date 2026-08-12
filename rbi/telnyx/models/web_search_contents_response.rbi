# typed: strong

module Telnyx
  module Models
    class WebSearchContentsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WebSearchContentsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::WebSearchContentsResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WebSearchContentsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WebSearchContentsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WebSearchContentsResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WebSearchContentsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::WebSearchContentsResponse::Data::Result]
            )
          )
        end
        attr_reader :results

        sig do
          params(
            results:
              T::Array[
                Telnyx::Models::WebSearchContentsResponse::Data::Result::OrHash
              ]
          ).void
        end
        attr_writer :results

        sig do
          params(
            results:
              T::Array[
                Telnyx::Models::WebSearchContentsResponse::Data::Result::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  Telnyx::Models::WebSearchContentsResponse::Data::Result
                ]
            }
          )
        end
        def to_hash
        end

        class Result < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WebSearchContentsResponse::Data::Result,
                Telnyx::Internal::AnyHash
              )
            end

          # The source URL.
          sig { returns(String) }
          attr_accessor :url

          # Cleaned HTML content (if `html` format requested; may also be present on freshly
          # crawled pages).
          sig { returns(T.nilable(String)) }
          attr_reader :html

          sig { params(html: String).void }
          attr_writer :html

          # Markdown content (if `markdown` format requested).
          sig { returns(T.nilable(String)) }
          attr_reader :markdown

          sig { params(markdown: String).void }
          attr_writer :markdown

          # Page metadata (if `metadata` format requested).
          sig do
            returns(
              T.nilable(
                Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata
              )
            )
          end
          attr_reader :metadata

          sig do
            params(
              metadata:
                Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata::OrHash
            ).void
          end
          attr_writer :metadata

          # Page title (if available).
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig do
            params(
              url: String,
              html: String,
              markdown: String,
              metadata:
                Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata::OrHash,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The source URL.
            url:,
            # Cleaned HTML content (if `html` format requested; may also be present on freshly
            # crawled pages).
            html: nil,
            # Markdown content (if `markdown` format requested).
            markdown: nil,
            # Page metadata (if `metadata` format requested).
            metadata: nil,
            # Page title (if available).
            title: nil
          )
          end

          sig do
            override.returns(
              {
                url: String,
                html: String,
                markdown: String,
                metadata:
                  Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata,
                title: String
              }
            )
          end
          def to_hash
          end

          class Metadata < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata,
                  Telnyx::Internal::AnyHash
                )
              end

            # Favicon URL (if available).
            sig { returns(T.nilable(String)) }
            attr_reader :favicon_url

            sig { params(favicon_url: String).void }
            attr_writer :favicon_url

            # Site name. Often empty.
            sig { returns(T.nilable(String)) }
            attr_reader :site_name

            sig { params(site_name: String).void }
            attr_writer :site_name

            # Page metadata (if `metadata` format requested).
            sig do
              params(favicon_url: String, site_name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Favicon URL (if available).
              favicon_url: nil,
              # Site name. Often empty.
              site_name: nil
            )
            end

            sig { override.returns({ favicon_url: String, site_name: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
