class BankAccountsController < ApplicationController
  before_action :require_login

  def new
    @account = Account.new
    @bank_accounts = Account.where(user_id: session[:user_id])
  end

  def create
    @account = Account.new(bank_account_params)
    @account.user_id = session[:user_id]
    if @account.save
      redirect_to new_bank_account_path, notice: "Account added successfully."
    else
      @bank_accounts = Account.where(user_id: session[:user_id])
      render :new
    end
  end

  # gathers all accounts for the current user and display in a list

  def index
    @bank_accounts = Account.where(user_id: session[:user_id])
  end

  private

  def require_login
    unless session[:user_id]
      render "/bank_accounts/login_warning"
    end
  end

  def bank_account_params
    params.require(:account).permit(:name, :routing_number, :account_number, :balance)
  end
end
