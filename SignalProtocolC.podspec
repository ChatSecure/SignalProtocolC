Pod::Spec.new do |s|
  s.name         = "SignalProtocolC"
  s.version      = "2.3.3"
  s.summary      = "Signal Protocol C Library"

  s.osx.deployment_target = '10.9'
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.description  = <<-DESC
                  This is a ratcheting forward secrecy protocol that works in synchronous and asynchronous messaging environments.
                  https://github.com/WhisperSystems/libsignal-protocol-c
                   DESC

  s.homepage     = "https://github.com/ChatSecure/SignalProtocolC"

	s.license = { :type => 'GPLv3', :text => <<-LICENSE
                Copyright 2015-2016 Open Whisper Systems

								Licensed under the GPLv3: http://www.gnu.org/licenses/gpl-3.0.html

								Additional Permissions For Submission to Apple App Store: Provided that you are otherwise in compliance with the GPLv3 for each covered work you convey (including without limitation making the Corresponding Source available in compliance with Section 6 of the GPLv3), Open Whisper Systems also grants you the additional permission to convey through the Apple App Store non-source executable versions of the Program as incorporated into each applicable covered work as Executable Versions only under the Mozilla Public License version 2.0 (https://www.mozilla.org/en-US/MPL/2.0/).

                LICENSE
               }
  s.author             = { "Open Whisper Systems" => "support@whispersystems.org" }
  s.social_media_url   = "https://twitter.com/whispersystems/"

  s.source       = {  :git => "https://github.com/ChatSecure/SignalProtocolC.git",
                      :tag => s.version.to_s, 
                      :submodules => true
                   }

  s.source_files  = ["libsignal-protocol-c/src/**/*.{h,c}"]
  s.exclude_files = 'libsignal-protocol-c/src/curve25519/ed25519/main'
  s.public_header_files = ["libsignal-protocol-c/src/signal_protocol.h", "libsignal-protocol-c/src/signal_protocol_types.h", "libsignal-protocol-c/src/curve.h", "libsignal-protocol-c/src/hkdf.h", "libsignal-protocol-c/src/ratchet.h", "libsignal-protocol-c/src/protocol.h", "libsignal-protocol-c/src/session_state.h", "libsignal-protocol-c/src/session_record.h", "libsignal-protocol-c/src/session_pre_key.h", "libsignal-protocol-c/src/session_builder.h", "libsignal-protocol-c/src/session_cipher.h", "libsignal-protocol-c/src/key_helper.h", "libsignal-protocol-c/src/sender_key.h", "libsignal-protocol-c/src/sender_key_state.h", "libsignal-protocol-c/src/sender_key_record.h", "libsignal-protocol-c/src/group_session_builder.h", "libsignal-protocol-c/src/group_cipher.h", "libsignal-protocol-c/src/fingerprint.h"]

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/SignalProtocolC/libsignal-protocol-c/src $(PODS_ROOT)/SignalProtocolC/libsignal-protocol-c/src/curve25519 $(PODS_ROOT)/SignalProtocolC/libsignal-protocol-c/src/curve25519/ed25519 $(PODS_ROOT)/SignalProtocolC/libsignal-protocol-c/src/protobuf-c' }
end
