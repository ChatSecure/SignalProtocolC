#
#  Be sure to run `pod spec lint olm.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SignalProtocolC"
  s.version      = "0.1.0"
  s.summary      = "Unofficial podspec for libsignal-protocol-c"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/ChatSecure/SignalProtocolC.podspec"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "GPLv3", :file => "LICENSE" }

  s.author             = { "Open Whisper Systems" => "support@whispersystems.org" }
  s.social_media_url   = "https://twitter.com/whispersystems/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/WhisperSystems/libsignal-protocol-c.git", 
  					 :commit => '16bfd04efa5a946a90c49bfa595f7b90249baf76'}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = ["src/**/*.{h,c}"]
  s.exclude_files = 'src/curve25519/ed25519/main'
  s.public_header_files = ["src/signal_protocol.h", "src/signal_protocol_types.h", "src/curve.h", "src/hkdf.h", "src/ratchet.h", "src/protocol.h", "src/session_state.h", "src/session_record.h", "src/session_pre_key.h", "src/session_builder.h", "src/session_cipher.h", "src/key_helper.h", "src/sender_key.h", "src/sender_key_state.h", "src/sender_key_record.h", "src/group_session_builder.h", "src/group_cipher.h", "src/fingerprint.h"]

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/SignalProtocolC/src $(PODS_ROOT)/SignalProtocolC/src/curve25519 $(PODS_ROOT)/SignalProtocolC/src/curve25519/ed25519 $(PODS_ROOT)/SignalProtocolC/src/protobuf-c' }
end
