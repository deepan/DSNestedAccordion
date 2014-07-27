Pod::Spec.new do |s|
  s.name             = "DSNestedAccordion"
  s.version          = "0.1.0"
  s.summary          = "A nested accordion view for Cocoa Touch"
  s.description      = <<-DESC
                       To use the library

                       * Inherit DSNestedAccordionHandler to your table view handler.
                       * Provide implementation to the below listed methods
                           * - (NSInteger)noOfRowsInRootLevel;
                           * - (NSInteger)tableView:(UITableView *)view noOfChildRowsForCellAtPath:(DSCellPath *)path;
                           * - (UITableViewCell *)tableView:(UITableView *)view cellForPath:(DSCellPath *)path;
                       DESC
  s.homepage         = "https://github.com/deepan/DSNestedAccordion"
  s.license          = 'MIT'
  s.author           = { "deepan" => "emaildeepan@yahoo.co.in" }
  s.source           = { :git => "https://github.com/deepan/DSNestedAccordion.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/s_deepan'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
