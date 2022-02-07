namespace :dev do
  desc "Setup development environment"
  task setup: :environment do
    
    show_spinner("Dropping DB...") { %x(rails db:drop) }
    show_spinner("Creating DB...") { %x(rails db:create) }
    show_spinner("Migrating DB...") { %x(rails db:migrate) }
    show_spinner("Seeding DB...") { %x(rails db:seed) }

  end


  private

  def show_spinner(msg_start, msg_end = "Done!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")    
  end

end
