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
  module Utils

    class Config
      include Singleton

      attr_accessor :tx_adapter, :perception_sender, :domain_updater
      
      def initialize
        @tx_adapter = :"Madmass::Transaction::NoneAdapter"
        @perception_sender = :"Madmass::Comm::DummySender"
        @domain_updater = :"AgentFarm::Domain::AbstractUpdater"
      end

      # Overrides default values for all configurations in the yaml file passed
      # as argument.
      def load(file_path)
        return unless File.exists?(file_path)
        conf = YAML.load(File.read(file_path))
        # override tx_manager
        @tx_adapter = conf['tx_adapter'] if conf['tx_adapter']
        @perception_sender = conf['perception_sender'] if conf['perception_sender']
        @domain_updater = conf['domain_updater'] if conf['domain_updater']
      end
      
    end

    module Configurable
      def config
        Madmass::Utils::Config.instance
      end

      def setup &block
        yield(config)
      end
    end

  end
end
