class User < ApplicationRecord
  has_many :quiz
    
    validates :name, presence: true
    validates :name,  presence: true, length: { maximum: 50 }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
    # 渡された文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
