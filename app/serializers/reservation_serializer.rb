class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :start_date, :number_days, :cost, :user_id, :laborer_id
end
