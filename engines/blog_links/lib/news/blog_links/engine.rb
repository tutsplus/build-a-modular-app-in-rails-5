module News
  module BlogLinks
    class Engine < ::Rails::Engine
      isolate_namespace BlogLinks

      initializer :append_migrations do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths["db/migrate"].expanded.each do |p|
            app.config.paths["db/migrate"] << p
          end
        end
      end

      config.to_prepare do
        Dir.glob(Engine.root.join("app", "decorators", "**", "*_decorator.rb")) do |klass|
          Rails.configuration.cache_classes ? require(klass) : load(klass)
        end
      end
    end
  end
end
