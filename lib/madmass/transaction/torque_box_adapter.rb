# This is the transaction manager adapter for Active Record.
module Madmass
  module Transaction

    class TorqueBoxAdapter
      class << self
        def transaction &block
          TorqueBox.transaction do
            block.call
          end
        end

        def rescues
          {ActiveRecord::Rollback => Proc.new {
              sleep(rand/4.0)
              retry
              return
            },
           ActiveRecord::StaleObjectError => Proc.new {
              sleep(rand/4.0)
#              Game.current.reload if Game.current
#              Player.current.reload if Player.current
              retry
              return
            }
          }
        end

      end
    end

  end
end
