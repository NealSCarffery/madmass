# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{madmass}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Algorithmica Srl"]
  s.date = %q{2011-10-18}
  s.description = %q{madmass (MAssively Distributed Multi-Agent System Simulator) is a framework for designing web based multi agent system simulations, with a massive number of agents.}
  s.email = %q{info@algorithmica.it}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "config/locales/madmass_en.yml",
    "config/locales/madmass_it.yml",
    "lib/agent.rb",
    "lib/assets/.gitkeep",
    "lib/assets/javascripts/client/core.ajax.js",
    "lib/assets/javascripts/client/core.dispatcher.js",
    "lib/assets/javascripts/client/core.fsm.js",
    "lib/assets/javascripts/client/core.js",
    "lib/assets/javascripts/client/core.konsole.panel.js",
    "lib/assets/javascripts/client/core.module.draganddrop.js",
    "lib/assets/javascripts/client/core.rpc.js",
    "lib/assets/javascripts/client/core.transitions.js",
    "lib/assets/javascripts/client/core.versioning.js",
    "lib/assets/javascripts/client/madmass.controller.js",
    "lib/assets/javascripts/client/madmass.gui.js",
    "lib/assets/javascripts/client/madmass.helpers.js",
    "lib/assets/javascripts/client/madmass.perceptor.js",
    "lib/assets/javascripts/client/madmass.sniffer.js",
    "lib/assets/javascripts/client/madmass.socky.js",
    "lib/assets/javascripts/lib/socky/WebSocketMain.swf",
    "lib/assets/javascripts/lib/socky/madsocky.js",
    "lib/assets/javascripts/madmass.js",
    "lib/assets/stylesheets/madmass/index.css.scss",
    "lib/assets/stylesheets/madmass/konsole.panel.css.scss",
    "lib/assets/stylesheets/madmass/share.css.scss",
    "lib/comm.rb",
    "lib/errors.rb",
    "lib/generators/action/action_generator.rb",
    "lib/generators/action/templates/action.rb.erb",
    "lib/generators/action/templates/action_unit_test.rb.erb",
    "lib/generators/agent_controller/agent_controller_generator.rb",
    "lib/generators/agent_controller/templates/agent_controller.rb.erb",
    "lib/generators/agent_controller/templates/agent_view.rb.erb",
    "lib/generators/madmass/install/install_generator.rb",
    "lib/generators/madmass/install/templates/application.css",
    "lib/generators/madmass/install/templates/application_helper.rb",
    "lib/generators/madmass/install/templates/config.js",
    "lib/generators/madmass/install/templates/socky_hosts.yml.erb",
    "lib/generators/madmass/install/templates/socky_server.yml.erb",
    "lib/generators/percept_strategy/percept_strategy_generator.rb",
    "lib/generators/percept_strategy/templates/percept_strategy.js.erb",
    "lib/madmass.rb",
    "lib/madmass/action/action.rb",
    "lib/madmass/action/action_factory.rb",
    "lib/madmass/action/stateful.rb",
    "lib/madmass/agent/agent.rb",
    "lib/madmass/agent/current.rb",
    "lib/madmass/agent/executor.rb",
    "lib/madmass/agent/f_s_a_executor.rb",
    "lib/madmass/agent/proxy_agent.rb",
    "lib/madmass/comm/dispatcher.rb",
    "lib/madmass/comm/dummy_sender.rb",
    "lib/madmass/comm/percept_grouper.rb",
    "lib/madmass/comm/socky_sender.rb",
    "lib/madmass/errors/catastrophic_error.rb",
    "lib/madmass/errors/not_applicable_error.rb",
    "lib/madmass/errors/state_mismatch_error.rb",
    "lib/madmass/errors/wrong_input_error.rb",
    "lib/madmass/perception/current.rb",
    "lib/madmass/perception/percept.rb",
    "lib/madmass/test/actions/build_action.rb",
    "lib/madmass/test/actions/simple_action.rb",
    "lib/madmass/test/actions/stateful_action.rb",
    "lib/madmass/test/agent/build_agent.rb",
    "lib/madmass/test/agent/real_agent.rb",
    "lib/madmass/test/agent/wrong_agent.rb",
    "lib/madmass/test/config/madmass_config.yml",
    "lib/madmass/test/tracer/ar_object.rb",
    "lib/madmass/test/tracer/traceable_object.rb",
    "lib/madmass/tracer/tracer.rb",
    "lib/madmass/transaction/active_record_adapter.rb",
    "lib/madmass/transaction/none_adapter.rb",
    "lib/madmass/transaction/transaction_manager.rb",
    "lib/madmass/transaction/tx_monitor.rb",
    "lib/madmass/utils/config.rb",
    "lib/madmass/utils/env.rb",
    "lib/madmass/utils/install_config.rb",
    "lib/madmass/utils/logger.rb",
    "lib/madmass_template.rb",
    "lib/perception.rb",
    "lib/test.rb",
    "lib/tracer.rb",
    "lib/transaction.rb",
    "lib/utils.rb",
    "madmass.gemspec",
    "test/helper.rb",
    "test/test_action.rb",
    "test/test_agent.rb",
    "test/test_comm.rb",
    "test/test_config.rb",
    "test/test_tracer.rb",
    "test/test_transaction_manager.rb",
    "vendor/assets/javascripts/mootools/Class.Mutators.jQuery.js",
    "vendor/assets/javascripts/mootools/mootools-1.2.4-base.js",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_flat_30_cccccc_40x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_flat_50_5c5c5c_40x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_glass_20_555555_1x400.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_glass_40_0078a3_1x400.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_glass_40_ffc73d_1x400.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_gloss-wave_25_333333_500x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_highlight-soft_80_eeeeee_1x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_inset-soft_25_000000_1x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-bg_inset-soft_30_f58400_1x100.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-icons_222222_256x240.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-icons_4b8e0b_256x240.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-icons_a83300_256x240.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-icons_cccccc_256x240.png",
    "vendor/assets/stylesheets/ui-darkness/images/ui-icons_ffffff_256x240.png",
    "vendor/assets/stylesheets/ui-darkness/jquery-ui-1.8.16.css"
  ]
  s.homepage = %q{http://github.com/algorithmica/madmass}
  s.licenses = ["GNU AGPL"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.1}
  s.summary = %q{madmass (MAssively Distributed Multi-Agent System Simulator) is a framework for designing web based multi agent system simulations, with a massive number of agents.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
  end
end

