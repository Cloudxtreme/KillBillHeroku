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
    module Api

      java_package 'org.killbill.billing.invoice.api'
      class InvoiceUserApi

        include org.killbill.billing.invoice.api.InvoiceUserApi

        def initialize(real_java_api)
          @real_java_api = real_java_api
        end


        java_signature 'Java::java.util.List getInvoicesByAccount(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoices_by_account(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_invoices_by_account(accountId, context)
          # conversion for res [type = java.util.List]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.Invoice]
            m = Killbill::Plugin::Model::Invoice.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::org.killbill.billing.util.entity.Pagination getInvoices(Java::java.lang.Long, Java::java.lang.Long, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoices(offset, limit, context)

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_invoices(offset, limit, context)
          # conversion for res [type = org.killbill.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::org.killbill.billing.util.entity.Pagination searchInvoices(Java::java.lang.String, Java::java.lang.Long, Java::java.lang.Long, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def search_invoices(searchKey, offset, limit, context)

          # conversion for searchKey [type = java.lang.String]
          searchKey = searchKey.to_s unless searchKey.nil?

          # conversion for offset [type = java.lang.Long]
          offset = offset

          # conversion for limit [type = java.lang.Long]
          limit = limit

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.search_invoices(searchKey, offset, limit, context)
          # conversion for res [type = org.killbill.billing.util.entity.Pagination]
          res = Killbill::Plugin::Model::Pagination.new.to_ruby(res) unless res.nil?
          return res
        end

        java_signature 'Java::java.math.BigDecimal getAccountBalance(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_account_balance(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_account_balance(accountId, context)
          # conversion for res [type = java.math.BigDecimal]
          res = res.nil? ? 0 : BigDecimal.new(res.to_s)
          return res
        end

        java_signature 'Java::java.math.BigDecimal getAccountCBA(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_account_cba(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_account_cba(accountId, context)
          # conversion for res [type = java.math.BigDecimal]
          res = res.nil? ? 0 : BigDecimal.new(res.to_s)
          return res
        end

        java_signature 'Java::org.killbill.billing.invoice.api.Invoice getInvoice(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoice(invoiceId, context)

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_invoice(invoiceId, context)
            # conversion for res [type = org.killbill.billing.invoice.api.Invoice]
            res = Killbill::Plugin::Model::Invoice.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.Invoice getInvoiceByPayment(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoice_by_payment(paymentId, context)

          # conversion for paymentId [type = java.util.UUID]
          paymentId = java.util.UUID.fromString(paymentId.to_s) unless paymentId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_invoice_by_payment(paymentId, context)
            # conversion for res [type = org.killbill.billing.invoice.api.Invoice]
            res = Killbill::Plugin::Model::Invoice.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.Invoice getInvoiceByNumber(Java::java.lang.Integer, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoice_by_number(number, context)

          # conversion for number [type = java.lang.Integer]
          number = number

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_invoice_by_number(number, context)
            # conversion for res [type = org.killbill.billing.invoice.api.Invoice]
            res = Killbill::Plugin::Model::Invoice.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.Collection getUnpaidInvoicesByAccountId(Java::java.util.UUID, Java::org.joda.time.LocalDate, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_unpaid_invoices_by_account_id(accountId, upToDate, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for upToDate [type = org.joda.time.LocalDate]
          if !upToDate.nil?
            upToDate = Java::org.joda.time.LocalDate.parse(upToDate.to_s)
          end

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          res = @real_java_api.get_unpaid_invoices_by_account_id(accountId, upToDate, context)
          # conversion for res [type = java.util.Collection]
          tmp = []
          (res || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.Invoice]
            m = Killbill::Plugin::Model::Invoice.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          res = tmp
          return res
        end

        java_signature 'Java::org.killbill.billing.invoice.api.Invoice triggerInvoiceGeneration(Java::java.util.UUID, Java::org.joda.time.LocalDate, Java::org.killbill.billing.invoice.api.DryRunArguments, Java::org.killbill.billing.util.callcontext.CallContext)'
        def trigger_invoice_generation(accountId, targetDate, dryRunArguments, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for targetDate [type = org.joda.time.LocalDate]
          if !targetDate.nil?
            targetDate = Java::org.joda.time.LocalDate.parse(targetDate.to_s)
          end

          # conversion for dryRunArguments [type = org.killbill.billing.invoice.api.DryRunArguments]
          dryRunArguments = dryRunArguments.to_java unless dryRunArguments.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.trigger_invoice_generation(accountId, targetDate, dryRunArguments, context)
            # conversion for res [type = org.killbill.billing.invoice.api.Invoice]
            res = Killbill::Plugin::Model::Invoice.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void tagInvoiceAsWrittenOff(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.CallContext)'
        def tag_invoice_as_written_off(invoiceId, context)

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.tag_invoice_as_written_off(invoiceId, context)
        end

        java_signature 'Java::void tagInvoiceAsNotWrittenOff(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.CallContext)'
        def tag_invoice_as_not_written_off(invoiceId, context)

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.tag_invoice_as_not_written_off(invoiceId, context)
        end

        java_signature 'Java::org.killbill.billing.invoice.api.InvoiceItem getExternalChargeById(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_external_charge_by_id(externalChargeId, context)

          # conversion for externalChargeId [type = java.util.UUID]
          externalChargeId = java.util.UUID.fromString(externalChargeId.to_s) unless externalChargeId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_external_charge_by_id(externalChargeId, context)
            # conversion for res [type = org.killbill.billing.invoice.api.InvoiceItem]
            res = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::java.util.List insertExternalCharges(Java::java.util.UUID, Java::org.joda.time.LocalDate, Java::java.lang.Iterable, Java::org.killbill.billing.util.callcontext.CallContext)'
        def insert_external_charges(accountId, effectiveDate, charges, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for effectiveDate [type = org.joda.time.LocalDate]
          if !effectiveDate.nil?
            effectiveDate = Java::org.joda.time.LocalDate.parse(effectiveDate.to_s)
          end

          # conversion for charges [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (charges || []).each do |m|
            # conversion for m [type = org.killbill.billing.invoice.api.InvoiceItem]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          charges = tmp

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.insert_external_charges(accountId, effectiveDate, charges, context)
            # conversion for res [type = java.util.List]
            tmp = []
            (res || []).each do |m|
              # conversion for m [type = org.killbill.billing.invoice.api.InvoiceItem]
              m = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(m) unless m.nil?
              tmp << m
            end
            res = tmp
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.InvoiceItem getCreditById(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_credit_by_id(creditId, context)

          # conversion for creditId [type = java.util.UUID]
          creditId = java.util.UUID.fromString(creditId.to_s) unless creditId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_credit_by_id(creditId, context)
            # conversion for res [type = org.killbill.billing.invoice.api.InvoiceItem]
            res = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.InvoiceItem insertCredit(Java::java.util.UUID, Java::java.math.BigDecimal, Java::org.joda.time.LocalDate, Java::org.killbill.billing.catalog.api.Currency, Java::org.killbill.billing.util.callcontext.CallContext)'
        def insert_credit(accountId, amount, effectiveDate, currency, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if amount.nil?
            amount = java.math.BigDecimal::ZERO
          else
            amount = java.math.BigDecimal.new(amount.to_s)
          end

          # conversion for effectiveDate [type = org.joda.time.LocalDate]
          if !effectiveDate.nil?
            effectiveDate = Java::org.joda.time.LocalDate.parse(effectiveDate.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{currency.to_s}") unless currency.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.insert_credit(accountId, amount, effectiveDate, currency, context)
            # conversion for res [type = org.killbill.billing.invoice.api.InvoiceItem]
            res = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.InvoiceItem insertCreditForInvoice(Java::java.util.UUID, Java::java.util.UUID, Java::java.math.BigDecimal, Java::org.joda.time.LocalDate, Java::org.killbill.billing.catalog.api.Currency, Java::org.killbill.billing.util.callcontext.CallContext)'
        def insert_credit_for_invoice(accountId, invoiceId, amount, effectiveDate, currency, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for amount [type = java.math.BigDecimal]
          if amount.nil?
            amount = java.math.BigDecimal::ZERO
          else
            amount = java.math.BigDecimal.new(amount.to_s)
          end

          # conversion for effectiveDate [type = org.joda.time.LocalDate]
          if !effectiveDate.nil?
            effectiveDate = Java::org.joda.time.LocalDate.parse(effectiveDate.to_s)
          end

          # conversion for currency [type = org.killbill.billing.catalog.api.Currency]
          currency = Java::org.killbill.billing.catalog.api.Currency.value_of("#{currency.to_s}") unless currency.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.insert_credit_for_invoice(accountId, invoiceId, amount, effectiveDate, currency, context)
            # conversion for res [type = org.killbill.billing.invoice.api.InvoiceItem]
            res = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::org.killbill.billing.invoice.api.InvoiceItem insertInvoiceItemAdjustment(Java::java.util.UUID, Java::java.util.UUID, Java::java.util.UUID, Java::org.joda.time.LocalDate, Java::org.killbill.billing.util.callcontext.CallContext)'
        def insert_invoice_item_adjustment(accountId, invoiceId, invoiceItemId, effectiveDate, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for invoiceItemId [type = java.util.UUID]
          invoiceItemId = java.util.UUID.fromString(invoiceItemId.to_s) unless invoiceItemId.nil?

          # conversion for effectiveDate [type = org.joda.time.LocalDate]
          if !effectiveDate.nil?
            effectiveDate = Java::org.joda.time.LocalDate.parse(effectiveDate.to_s)
          end

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.insert_invoice_item_adjustment(accountId, invoiceId, invoiceItemId, effectiveDate, context)
            # conversion for res [type = org.killbill.billing.invoice.api.InvoiceItem]
            res = Killbill::Plugin::Model::InvoiceItem.new.to_ruby(res) unless res.nil?
            return res
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void deleteCBA(Java::java.util.UUID, Java::java.util.UUID, Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.CallContext)'
        def delete_cba(accountId, invoiceId, invoiceItemId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for invoiceItemId [type = java.util.UUID]
          invoiceItemId = java.util.UUID.fromString(invoiceItemId.to_s) unless invoiceItemId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.delete_cba(accountId, invoiceId, invoiceItemId, context)
        end

        java_signature 'Java::java.lang.String getInvoiceAsHTML(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.TenantContext)'
        def get_invoice_as_html(invoiceId, context)

          # conversion for invoiceId [type = java.util.UUID]
          invoiceId = java.util.UUID.fromString(invoiceId.to_s) unless invoiceId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.TenantContext]
          context = context.to_java unless context.nil?
          begin
            res = @real_java_api.get_invoice_as_html(invoiceId, context)
            # conversion for res [type = java.lang.String]
            return res
          rescue Java::org.killbill.billing.account.api.AccountApiException => e
            raise Killbill::Plugin::Model::AccountApiException.new.to_ruby(e)
          rescue Java::java.io.IOException => e
            raise ApiException.new("java.io.IOException: #{e.msg unless e.msg.nil?}")
          rescue Java::org.killbill.billing.invoice.api.InvoiceApiException => e
            raise Killbill::Plugin::Model::InvoiceApiException.new.to_ruby(e)
          end
        end

        java_signature 'Java::void consumeExstingCBAOnAccountWithUnpaidInvoices(Java::java.util.UUID, Java::org.killbill.billing.util.callcontext.CallContext)'
        def consume_exsting_cba_onaccount_with_unpaid_invoices(accountId, context)

          # conversion for accountId [type = java.util.UUID]
          accountId = java.util.UUID.fromString(accountId.to_s) unless accountId.nil?

          # conversion for context [type = org.killbill.billing.util.callcontext.CallContext]
          context = context.to_java unless context.nil?
          @real_java_api.consume_exsting_cba_onaccount_with_unpaid_invoices(accountId, context)
        end
      end
    end
  end
end