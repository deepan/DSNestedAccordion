#
# Be sure to run `pod lib lint DSNestedAccordion.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DSNestedAccordion"
  s.version          = "0.1.0"
  s.summary          = "A nested accordion view for Cocoa Touch"
  s.description      = <<-DESC
                       To use the library

                       * Inherit DSNestedAccordionHandler to your table view handler.
                       * Provide implementation to the below listed methods
                           * - (NSInteger)noOfRootCells;
                           * - (NSInteger)tableView:(UITableView *)view noOfChildRowsForCellAtPath:(DSCellPath *)path;
                           * - (UITableViewCell *)tableView:(UITableView *)view cellForPath:(DSCellPath *)path;
                       DESC
  s.homepage         = "https://github.com/deepan/DSNestedAccordion"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "deepan" => "subramani.deepan@gmail.com" }
  s.source           = { :git => "https://github.com/deepan/DSNestedAccordion.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/s_deepan'

  s.platform     = :ios, '6.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
