class PayAccountsController < ApplicationController

  # TODO: Add lookup to Account class

  def index
    @pay_accounts = PayAccount.all

    loan_file = File.read(Rails.root + "app/assets/xml/loan.xml")
    parsed = Nokogiri::XML(loan_file)

    @loan_number = parsed.xpath("//LoanNumber").collect(&:text).first
    @borrower_name = parsed.xpath("//BorrowerFullNameUnformated").collect(&:text).first
  end


  def new
  end

  def create
  end

end
