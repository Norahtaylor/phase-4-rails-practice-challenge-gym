class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :gym_id, :client_id, :charge

  # def total_charge 
  #   self.object.sum(:charge)
  # end 

  # def total_charge
  #   Membership.sum(:charge)
  # end

    
end
