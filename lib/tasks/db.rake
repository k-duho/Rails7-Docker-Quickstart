# frozen_string_literal: true

namespace :db do
  desc 'Check if the database exists'
  task :exists do
    return unless Rails.env.development?

    begin
      ActiveRecord::Base.establish_connection
      ActiveRecord::Base.connection
    rescue ActiveRecord::NoDatabaseError
      exit 1
    end
  end
end
