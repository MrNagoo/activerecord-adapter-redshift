module Activerecord7RedshiftAdapterPennylane
  class Railtie < ::Rails::Railtie
    initializer "activerecord7-redshift-adapter-pennylane.setup" do
      ActiveSupport.on_load(:active_record) do
        # The adapter registration API was introduced in Rails 7.2.0 in
        # https://github.com/rails/rails/commit/009c7e74117690f0dbe200188a929b345c9306c1
        if ActiveRecord.version >= Gem::Version.new('7.2.0')
          puts "[Redshift Adapter] Registering 'redshift' adapter with ActiveRecord"
          ActiveRecord::ConnectionAdapters.register('redshift', 'ActiveRecord::ConnectionAdapters::RedshiftAdapter')
          puts "[Redshift Adapter] Registration complete"
        else
          puts "[Redshift Adapter] Skipping registration - ActiveRecord version < 7.2.0"
        end
      end
    end
  end
end
