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

      java_package 'org.killbill.billing.invoice.api.formatters'
      class InvoiceFormatter

        include org.killbill.billing.invoice.api.formatters.InvoiceFormatter

        attr_accessor :invoice_items, :number_of_items, :payments, :number_of_payments, :account_id, :invoice_number, :invoice_date, :target_date, :currency, :paid_amount, :original_charged_amount, :charged_amount, :credited_amount, :refunded_amount, :balance, :is_migration_invoice, :id, :created_date, :updated_date, :formatted_invoice_date, :formatted_charged_amount, :formatted_paid_amount, :formatted_balance, :processed_currency, :processed_payment_rate

        def initialize()
        end

        def to_java()
          # conversion for invoice_items [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@invoice_items || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.InvoiceItem]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @invoice_items = tmp

          # conversion for number_of_items [type = int]
          @number_of_items = @number_of_items

          # conversion for payments [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@payments || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.InvoicePayment]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @payments = tmp

          # conversion for number_of_payments [type = int]
          @number_of_payments = @number_of_payments

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for invoice_number [type = java.lang.Integer]
          @invoice_number = @invoice_number

          # conversion for invoice_date [type = org.joda.time.LocalDate]
          if !@invoice_date.nil?
            @invoice_date = Java::org.joda.time.LocalDate.parse(@invoice_date.to_s)
          end

          # conversion for target_date [type = org.joda.time.LocalDate]
          if !@target_date.nil?
            @target_date = Java::org.joda.time.LocalDate.parse(@target_date.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{@currency.to_s}") unless @currency.nil?

          # conversion for paid_amount [type = java.math.BigDecimal]
          if @paid_amount.nil?
            @paid_amount = java.math.BigDecimal::ZERO
          else
            @paid_amount = java.math.BigDecimal.new(@paid_amount.to_s)
          end

          # conversion for original_charged_amount [type = java.math.BigDecimal]
          if @original_charged_amount.nil?
            @original_charged_amount = java.math.BigDecimal::ZERO
          else
            @original_charged_amount = java.math.BigDecimal.new(@original_charged_amount.to_s)
          end

          # conversion for charged_amount [type = java.math.BigDecimal]
          if @charged_amount.nil?
            @charged_amount = java.math.BigDecimal::ZERO
          else
            @charged_amount = java.math.BigDecimal.new(@charged_amount.to_s)
          end

          # conversion for credited_amount [type = java.math.BigDecimal]
          if @credited_amount.nil?
            @credited_amount = java.math.BigDecimal::ZERO
          else
            @credited_amount = java.math.BigDecimal.new(@credited_amount.to_s)
          end

          # conversion for refunded_amount [type = java.math.BigDecimal]
          if @refunded_amount.nil?
            @refunded_amount = java.math.BigDecimal::ZERO
          else
            @refunded_amount = java.math.BigDecimal.new(@refunded_amount.to_s)
          end

          # conversion for balance [type = java.math.BigDecimal]
          if @balance.nil?
            @balance = java.math.BigDecimal::ZERO
          else
            @balance = java.math.BigDecimal.new(@balance.to_s)
          end

          # conversion for is_migration_invoice [type = boolean]
          @is_migration_invoice = @is_migration_invoice.nil? ? java.lang.Boolean.new(false) : java.lang.Boolean.new(@is_migration_invoice)

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

          # conversion for formatted_invoice_date [type = java.lang.String]
          @formatted_invoice_date = @formatted_invoice_date.to_s unless @formatted_invoice_date.nil?

          # conversion for formatted_charged_amount [type = java.lang.String]
          @formatted_charged_amount = @formatted_charged_amount.to_s unless @formatted_charged_amount.nil?

          # conversion for formatted_paid_amount [type = java.lang.String]
          @formatted_paid_amount = @formatted_paid_amount.to_s unless @formatted_paid_amount.nil?

          # conversion for formatted_balance [type = java.lang.String]
          @formatted_balance = @formatted_balance.to_s unless @formatted_balance.nil?

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{@processed_currency.to_s}") unless @processed_currency.nil?

          # conversion for processed_payment_rate [type = java.lang.String]
          @processed_payment_rate = @processed_payment_rate.to_s unless @processed_payment_rate.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for invoice_items [type = java.util.List]
          @invoice_items = j_obj.invoice_items
          tmp = []
          (@invoice_items || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.InvoiceItem]
            m = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @invoice_items = tmp

          # conversion for number_of_items [type = int]
          @number_of_items = j_obj.number_of_items

          # conversion for payments [type = java.util.List]
          @payments = j_obj.payments
          tmp = []
          (@payments || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.InvoicePayment]
            m = Killbill::Plugin::Model::InvoicePayment.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @payments = tmp

          # conversion for number_of_payments [type = int]
          @number_of_payments = j_obj.number_of_payments

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for invoice_number [type = java.lang.Integer]
          @invoice_number = j_obj.invoice_number

          # conversion for invoice_date [type = org.joda.time.LocalDate]
          @invoice_date = j_obj.invoice_date
          if !@invoice_date.nil?
            @invoice_date = @invoice_date.to_s
          end

          # conversion for target_date [type = org.joda.time.LocalDate]
          @target_date = j_obj.target_date
          if !@target_date.nil?
            @target_date = @target_date.to_s
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          @currency = j_obj.currency
          @currency = @currency.to_s.to_sym unless @currency.nil?

          # conversion for paid_amount [type = java.math.BigDecimal]
          @paid_amount = j_obj.paid_amount
          @paid_amount = @paid_amount.nil? ? 0 : BigDecimal.new(@paid_amount.to_s)

          # conversion for original_charged_amount [type = java.math.BigDecimal]
          @original_charged_amount = j_obj.original_charged_amount
          @original_charged_amount = @original_charged_amount.nil? ? 0 : BigDecimal.new(@original_charged_amount.to_s)

          # conversion for charged_amount [type = java.math.BigDecimal]
          @charged_amount = j_obj.charged_amount
          @charged_amount = @charged_amount.nil? ? 0 : BigDecimal.new(@charged_amount.to_s)

          # conversion for credited_amount [type = java.math.BigDecimal]
          @credited_amount = j_obj.credited_amount
          @credited_amount = @credited_amount.nil? ? 0 : BigDecimal.new(@credited_amount.to_s)

          # conversion for refunded_amount [type = java.math.BigDecimal]
          @refunded_amount = j_obj.refunded_amount
          @refunded_amount = @refunded_amount.nil? ? 0 : BigDecimal.new(@refunded_amount.to_s)

          # conversion for balance [type = java.math.BigDecimal]
          @balance = j_obj.balance
          @balance = @balance.nil? ? 0 : BigDecimal.new(@balance.to_s)

          # conversion for is_migration_invoice [type = boolean]
          @is_migration_invoice = j_obj.is_migration_invoice
          if @is_migration_invoice.nil?
            @is_migration_invoice = false
          else
            tmp_bool = (@is_migration_invoice.java_kind_of? java.lang.Boolean) ? @is_migration_invoice.boolean_value : @is_migration_invoice
            @is_migration_invoice = tmp_bool ? true : false
          end

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

          # conversion for formatted_invoice_date [type = java.lang.String]
          @formatted_invoice_date = j_obj.formatted_invoice_date

          # conversion for formatted_charged_amount [type = java.lang.String]
          @formatted_charged_amount = j_obj.formatted_charged_amount

          # conversion for formatted_paid_amount [type = java.lang.String]
          @formatted_paid_amount = j_obj.formatted_paid_amount

          # conversion for formatted_balance [type = java.lang.String]
          @formatted_balance = j_obj.formatted_balance

          # conversion for processed_currency [type = org.killbill.billing.catalog.api.Currency]
          @processed_currency = j_obj.processed_currency
          @processed_currency = @processed_currency.to_s.to_sym unless @processed_currency.nil?

          # conversion for processed_payment_rate [type = java.lang.String]
          @processed_payment_rate = j_obj.processed_payment_rate
          self
        end

      end
    end
  end
end