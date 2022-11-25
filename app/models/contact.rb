class Contact < ApplicationRecord
    has_many :phones

    # def birthdate_br 
    #    I18n.l(self.birthdate) unless self.birthdate.blank?
    # end

    def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
end
    # def to_br 
    #     {
    #         name: self.name, 
    #         email: self.email,
    #         birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?)
    #     }
    # end

 

#     def author 
#         "Guilherme Mattos"
#     end




#     def as_json(options={}) 
#     super(
#         root:true,
#         methods: [:author]
#         )

# end
end
