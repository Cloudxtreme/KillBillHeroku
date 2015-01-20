#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.catalog.api'
      class PlanPhase

        include org.killbill.billing.catalog.api.PlanPhase

        attr_accessor :fixed, :recurring, :usages, :name, :plan, :duration, :phase_type

        def initialize()
        end

        def to_java()
          # conversion for fixed [type = org.killbill.billing.catalog.api.Fixed]
          @fixed = @fixed.to_java unless @fixed.nil?

          # conversion for recurring [type = org.killbill.billing.catalog.api.Recurring]
          @recurring = @recurring.to_java unless @recurring.nil?

          # conversion for usages [type = org.killbill.billing.catalog.api.Usage]
          @usages = @usages.to_java unless @usages.nil?

          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for plan [type = org.killbill.billing.catalog.api.Plan]
          @plan = @plan.to_java unless @plan.nil?

          # conversion for duration [type = org.killbill.billing.catalog.api.Duration]
          @duration = @duration.to_java unless @duration.nil?

          # conversion for phase_type [type = org.killbill.billing.catalog.api.PhaseType]
          @phase_type = Java::org.killbill.billing.catalog.api.PhaseType.value_of("#{@phase_type.to_s}") unless @phase_type.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for fixed [type = org.killbill.billing.catalog.api.Fixed]
          @fixed = j_obj.fixed
          @fixed = Killbill::Plugin::Model::Fixed.new.to_ruby(@fixed) unless @fixed.nil?

          # conversion for recurring [type = org.killbill.billing.catalog.api.Recurring]
          @recurring = j_obj.recurring
          @recurring = Killbill::Plugin::Model::Recurring.new.to_ruby(@recurring) unless @recurring.nil?

          # conversion for usages [type = org.killbill.billing.catalog.api.Usage]
          @usages = j_obj.usages
          @usages = Killbill::Plugin::Model::Usage.new.to_ruby(@usages) unless @usages.nil?

          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for plan [type = org.killbill.billing.catalog.api.Plan]
          @plan = j_obj.plan
          @plan = Killbill::Plugin::Model::Plan.new.to_ruby(@plan) unless @plan.nil?

          # conversion for duration [type = org.killbill.billing.catalog.api.Duration]
          @duration = j_obj.duration
          @duration = Killbill::Plugin::Model::Duration.new.to_ruby(@duration) unless @duration.nil?

          # conversion for phase_type [type = org.killbill.billing.catalog.api.PhaseType]
          @phase_type = j_obj.phase_type
          @phase_type = @phase_type.to_s.to_sym unless @phase_type.nil?
          self
        end

      end
    end
  end
end