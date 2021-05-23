class User < ApplicationRecord
  attr_accessor :remember_token
  before_save { email.downcase! }
  before_save { self.email = email.downcase }
  validates :name,presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length:{minimum: 6}, presence: true, allow_nil: true

    #"string"に入れた文字列をハッシュ化するメソッド
    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    #22文字のランダムな文字列を作るメソッド
    def User.new_token
      SecureRandom.urlsafe_base64
    end
    #User.new_tokenで作った文字列をハッシュ化して”remember_digest”カラムに追加するメソッド
    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end
    #ハッシュ化された記憶トークンを元の記憶トークンと比べて正しいものかを検証するメソッド
    def authenticated?(remember_token)
      return false if remember_digest.nil?
      BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
    #"remember"でカラムに追加していた"remember_digest"を消すメソッド
    def forget
      update_attribute(:remember_digest, nil)
    end

end

