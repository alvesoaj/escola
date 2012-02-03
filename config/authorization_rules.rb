authorization do
     role :admin do
          has_permission_on [:teachers], :to => [:manage]
          has_permission_on [:courses], :to => [:manage]
     end
     
     role :guest do
     end
end

privileges do
     privilege :manage, :includes => [:index, :show, :new, :create, :edit, :update, :destroy]
     privilege :read, :includes => [:index, :show]
     privilege :create, :includes => [:new]
     privilege :update, :includes => [:edit]
     privilege :delete, :includes => [:destroy]
end