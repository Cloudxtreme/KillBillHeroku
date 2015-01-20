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

      java_package 'org.killbill.billing.invoice.api'
      class InvoicePayment

        include org.killbill.billing.invoice.api.InvoicePayment

        attr_accessor :id, :created_date, :updated_date, :payment_id, :type, :invoice_id, :payment_date, :amount, :currency, :linked_invoice_payment_id, :payment_cookie_id, :processed_currency

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = java.util.UUID.fromString(@payment_id.to_s) unless @payment_id.nil?

          # conversion for type [type = org.killbill.billing.invoice.api.InvoicePaymentType]
          @type = Java::org.killbill.billing.invoice.api.InvoicePaymentType.value_of("#{@type.to_s}") unless @type.nil?

          # conversion for invoice_id [type = java.util.UUID]
          @invoice_id = java.util.UUID.fromString(@invoice_id.to_s) unless @invoice_id.nil?

          # conversion for payment_date [type = org.joda.time.DateTime]
          if !@payment_date.nil?
            @payment_date =  (@payment_date.kind_of? Time) ? DateTime.parse(@payment_date.to_s) : @payment_date
            @payment_date = Java::org.joda.time.DateTime.new(@payment_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for amount [type = java.math.BigDecimal]
          if @amount.nil?
            @amount = java.math.BigDecimal::ZERO
          else
            @amount = java.math.BigDecimal.new(@amount.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for linked_invoice_payment_id [type = java.util.UUID]
          @linked_invoice_payment_id = java.util.UUID.fromString(@linked_invoice_payment_id.to_s) unless @linked_invoice_payment_id.nil?

          # conversion for payment_cookie_id [type = java.lang.String]
          @payment_cookie_id = @payment_cookie_id.to_s unless @payment_cookie_id.nil?

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{@processed_currency.to_s}") unless @processed_currency.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for payment_id [type = java.util.UUID]
          @payment_id = j_obj.payment_id
          @payment_id = @payment_id.nil? ? nil : @payment_id.to_s

          # conversion for type [type = org.killbill.billing.invoice.api.InvoicePaymentType]
          @type = j_obj.type
          @type = @type.to_s.to_sym unless @type.nil?

          # conversion for invoice_id [type = java.util.UUID]
          @invoice_id = j_obj.invoice_id
          @invoice_id = @invoice_id.nil? ? nil : @invoice_id.to_s

          # conversion for payment_date [type = org.joda.time.DateTime]
          @payment_date = j_obj.payment_date
          if !@payment_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@payment_date)
            @payment_date = DateTime.iso8601(str)
          end

          # conversion for amount [type = java.math.BigDecimal]
          @amount = j_obj.amount
          @amount = @amount.nil? ? 0 : BigDecimal.new(@amount.to_s)

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for linked_invoice_payment_id [type = java.util.UUID]
          @linked_invoice_payment_id = j_obj.linked_invoice_payment_id
          @linked_invoice_payment_id = @linked_invoice_payment_id.nil? ? nil : @linked_invoice_payment_id.to_s

          # conversion for payment_cookie_id [type = java.lang.String]
          @payment_cookie_id = j_obj.payment_cookie_id

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = j_obj.processed_currency
          @processed_currency = @processed_currency.to_s.to_sym unless @processed_currency.nil?
          self
        end

      end
    end
  end
end