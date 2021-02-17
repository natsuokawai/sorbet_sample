# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sprockets-rails/all/sprockets-rails.rbi
#
# sprockets-rails-3.2.2

module Sprockets
end
module Sprockets::Rails
end
module Sprockets::Rails::Context
  def compute_asset_path(path, options = nil); end
  def self.included(klass); end
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::AssetUrlHelper
  include ActionView::Helpers::TagHelper
end
module Sprockets::Rails::Utils
  def using_sprockets4?; end
end
module Sprockets::Rails::Helper
  def asset_digest_path(path, options = nil); end
  def asset_integrity(path, options = nil); end
  def asset_resolver_strategies; end
  def compute_asset_path(path, options = nil); end
  def compute_integrity?(options); end
  def javascript_include_tag(*sources); end
  def legacy_debug_path(path, debug); end
  def lookup_debug_asset(path, options = nil); end
  def path_with_extname(path, options); end
  def request_debug_assets?; end
  def resolve_asset; end
  def resolve_asset_path(path, allow_non_precompiled = nil); end
  def secure_subresource_integrity_context?; end
  def self.extended(obj); end
  def self.included(klass); end
  def stylesheet_link_tag(*sources); end
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::AssetUrlHelper
  include ActionView::Helpers::TagHelper
  include Sprockets::Rails::Utils
end
class Sprockets::Rails::Helper::AssetNotFound < StandardError
end
class Sprockets::Rails::Helper::AssetNotPrecompiled < StandardError
end
class Sprockets::Rails::Helper::AssetNotPrecompiledError < Sprockets::Rails::Helper::AssetNotPrecompiled
  def initialize(source); end
  include Sprockets::Rails::Utils
end
module Sprockets::Rails::HelperAssetResolvers
  def self.[](name); end
end
class Sprockets::Rails::HelperAssetResolvers::Manifest
  def asset_path(path, digest, allow_non_precompiled = nil); end
  def digest_path(path, allow_non_precompiled = nil); end
  def find_debug_asset(path); end
  def initialize(view); end
  def integrity(path); end
  def metadata(path); end
end
class Sprockets::Rails::HelperAssetResolvers::Environment
  def asset_path(path, digest, allow_non_precompiled = nil); end
  def digest_path(path, allow_non_precompiled = nil); end
  def find_asset(path, options = nil); end
  def find_debug_asset(path); end
  def initialize(view); end
  def integrity(path); end
  def precompiled?(path); end
  def raise_unless_precompiled_asset(path); end
end
class Sprockets::Rails::QuietAssets
  def call(env); end
  def initialize(app); end
end
module Sprockets::Rails::RouteWrapper
  def internal?; end
  def internal_assets_path?; end
  def self.included(klass); end
end
module Rails
end
class Rails::Application < Rails::Engine
  def asset_precompiled?(logical_path); end
  def assets_manifest; end
  def assets_manifest=(arg0); end
  def precompiled_assets(clear_cache = nil); end
end
class Rails::Application::Configuration < Rails::Engine::Configuration
end
class Rails::Engine < Rails::Railtie
end
class Sprockets::Railtie < Rails::Railtie
  def build_environment(app, initialized = nil); end
  def self.build_manifest(app); end
  include Sprockets::Rails::Utils
end
class Sprockets::Railtie::ManifestNeededError < StandardError
  def initialize; end
end
class Sprockets::Railtie::OrderedOptions < ActiveSupport::OrderedOptions
  def configure(&block); end
end
