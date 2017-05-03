class HardWorker
  include Sidekiq::Worker

  def perform(name)
    sleep(7)
    puts ">>>>>>>>>>>>>>>>>>>>>>>>> Terminei #{name}!!!!!"
  end
end
