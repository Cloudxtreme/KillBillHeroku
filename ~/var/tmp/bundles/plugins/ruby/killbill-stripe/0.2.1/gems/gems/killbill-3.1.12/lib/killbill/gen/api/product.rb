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
      class Product

        include org.killbill.billing.catalog.api.Product

        attr_accessor :name, :is_retired, :available, :included, :category, :catalog_name, :limits

        def initialize()
        end

        def to_java()
          # conversion for name [type = java.lang.String]
          @name = @name.to_s unless @name.nil?

          # conversion for is_retired [type = boolean]
          @is_retired = @is_retired.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_retired)

          # conversion for available [type = org.killbill.billing.catalog.api.Product]
          @available = @available.to_java unless @available.nil?

          # conversion for included [type = org.killbill.billing.catalog.api.Product]
          @included = @included.to_java unless @included.nil?

          # conversion for category [type = org.killbill.billing.catalog.api.ProductCategory]
          @category = Java::org.killbill.billing.catalog.api.ProductCategory.value_of("#{@category.to_s}") unless @category.nil?

          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = @catalog_name.to_s unless @catalog_name.nil?

          # conversion for limits [type = org.killbill.billing.catalog.api.Limit]
          @limits = @limits.to_java unless @limits.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for name [type = java.lang.String]
          @name = j_obj.name

          # conversion for is_retired [type = boolean]
          @is_retired = j_obj.is_retired
          if @is_retired.nil?
            @is_retired = false
          else
            tmp_bool = (@is_retired.java_kind_of? java.lang.Boolean) ? @is_retired.boolean_value : @is_retired
            @is_retired = tmp_bool ? true : false
          end

          # conversion for available [type = org.killbill.billing.catalog.api.Product]
          @available = j_obj.available
          @available = Killbill::Plugin::Model::Product.new.to_ruby(@available) unless @available.nil?

          # conversion for included [type = org.killbill.billing.catalog.api.Product]
          @included = j_obj.included
          @included = Killbill::Plugin::Model::Product.new.to_ruby(@included) unless @included.nil?

          # conversion for category [type = org.killbill.billing.catalog.api.ProductCategory]
          @category = j_obj.category
          @category = @category.to_s.to_sym unless @category.nil?

          # conversion for catalog_name [type = java.lang.String]
          @catalog_name = j_obj.catalog_name

          # conversion for limits [type = org.killbill.billing.catalog.api.Limit]
          @limits = j_obj.limits
          @limits = Killbill::Plugin::Model::Limit.new.to_ruby(@limits) unless @limits.nil?
          self
        end

      end
    end
  end
end