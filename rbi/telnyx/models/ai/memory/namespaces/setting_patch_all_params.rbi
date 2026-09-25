# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class SettingPatchAllParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::SettingPatchAllParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # The namespace. `default` exists for every organization.
            sig { returns(String) }
            attr_accessor :namespace

            # A partial update to a namespace's summary settings.
            #
            # Only the fields present in the request are changed; the rest are left as they
            # are. Sending `instructions: null` (or empty) clears the instructions.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary
                )
              )
            end
            attr_reader :summary

            sig do
              params(
                summary:
                  T.nilable(
                    Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary::OrHash
                  )
              ).void
            end
            attr_writer :summary

            sig do
              params(
                namespace: String,
                summary:
                  T.nilable(
                    Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary::OrHash
                  ),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # The namespace. `default` exists for every organization.
              namespace:,
              # A partial update to a namespace's summary settings.
              #
              # Only the fields present in the request are changed; the rest are left as they
              # are. Sending `instructions: null` (or empty) clears the instructions.
              summary: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
                  summary:
                    T.nilable(
                      Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary
                    ),
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Summary < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Replace the namespace's summary instructions. Null or empty clears them and
              # returns to the neutral default. Omit the field to leave the current instructions
              # unchanged.
              sig { returns(T.nilable(String)) }
              attr_accessor :instructions

              # A partial update to a namespace's summary settings.
              #
              # Only the fields present in the request are changed; the rest are left as they
              # are. Sending `instructions: null` (or empty) clears the instructions.
              sig do
                params(instructions: T.nilable(String)).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Replace the namespace's summary instructions. Null or empty clears them and
                # returns to the neutral default. Omit the field to leave the current instructions
                # unchanged.
                instructions: nil
              )
              end

              sig { override.returns({ instructions: T.nilable(String) }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
