class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_gym_charges

  def total_gym_charges 
    self.object.memberships.sum(:charge)
  end 

  has_many :memberships
end
