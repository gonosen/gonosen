class InquiryMailer < ActionMailer::Base
  default from: "gonosen.ml@gmail.com"   # 送信元アドレス
  default to: "gonosen.ml@gmail.com"     # 送信先アドレス
 
  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end
 
end
