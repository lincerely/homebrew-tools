cask "webpquicklook" do
  version "1.0.0"
  name "WebPQuickLook"
  desc "Mac OS X QuickLook plugin for WebP image files"
  homepage "https://github.com/lincerely/WebPQuickLook"
  sha256 "8b97e544c2df8cc135b56e1df0e4d6f03803d61794375bc35433bf4eda326744"

  url "https://github.com/lincerely/WebPQuickLook/releases/download/v1.0.0/WebpQuickLook.qlgenerator.tar.xz",
    verified: "github.com/lincerely/WebPQuickLook/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  qlplugin "WebpQuickLook.qlgenerator"
end
