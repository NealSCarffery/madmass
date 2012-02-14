###############################################################################
###############################################################################
#
# This file is part of MADMASS (MAssively Distributed Multi Agent System Simulator).
#
# Copyright (c) 2012 Algorithmica Srl
#
# MADMASS is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# MADMASS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with MADMASS.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact us via email at info@algorithmica.it or at
#
# Algorithmica Srl
# Vicolo di Sant'Agata 16
# 00153 Rome, Italy
#
###############################################################################
###############################################################################

module Madmass
  module AgentFarm
    module Agent
      module AutonomousAgent

        include Madmass::Agent::Executor
        include Madmass::Transaction::TxMonitor
      
        def self.included(base)
          base.send(:include, InstanceMethods)
        end

        module InstanceMethods

          def start(options = {:force => false})
            init_status if options[:force]

            if(running? and completed?)
              action = choose_action
              Madmass.logger.debug "Executing action: #{action.inspect}"
              persist_last_action action
              execute(action)
            end

          rescue Exception => ex
            on_error(ex)
          end

          def stop
            self.status = 'stopped'
          rescue Exception => ex
            @stop_retry ||= 1
            if @stop_retry >= 10
              Madmass.logger.error "Max retries for stop reached (10) - exception was: #{ex}"
              Madmass.logger.error ex.backtrace.join("\n")
              return
            end
            Madmass.logger.error "Retry #{@stop_retry} for stop reached (10) - exception was: #{ex}"
            @stop_retry += 1
            sleep(rand/4.0)
            retry
          end

          def pause
            self.status = 'paused'
          rescue Exception => ex
            @pause_retry ||= 1
            if @pause_retry >= 10
              Madmass.logger.error "Max retries for pause reached (10) - exception was: #{ex}"
              return
            end
            Madmass.logger.error "Retry #{@pause_retry} for pause reached (10) - exception was: #{ex}"
            @pause_retry += 1
            sleep(rand/4.0)
            retry
          end

          private


          def init_status
            self.status = 'idle'
          end

          def persist_last_action action
            self.status = 'running'
            self.perception_status = action[:perception_status]
          end

          def completed?
            return true unless perception_status
            return (with_success? or with_failure?)
          end

          def with_success?
            perception_status == 'ok'
          end

          def with_failure?
            perception_status == 'precondition_failed'
          end

          def running?
            #return true unless perception_status
            return ((status != 'stopped') and (status != 'paused'))
          end
        end

      end
    end
  end
end
