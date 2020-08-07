class ApplicationController < ActionController::Base
  before_action :authenticate_user! #ログインしていない場合はサインアップの画面に遷移する。deviseに実装されているメソッド
  ################↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓################
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected #ファイルにnameカラムの保存を可能とする記述

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  ################↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑################
end