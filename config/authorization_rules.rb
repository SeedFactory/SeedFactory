authorization do

  role :administrator do
    has_omnipotence
  end
  role :guest do
    has_permission_on :products, to: [:index]
  end

end

privileges do

  privilege :manage do
    includes :index, :show, :edit, :update, :new, :create, :destroy
  end

end
