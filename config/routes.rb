Rails.application.routes.draw do
  
   root to: "public/homes#top"
  
#管理者用
  devise_for :admins,skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
 
  
  
#顧客用
  devise_for :custmers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
 

 
end
