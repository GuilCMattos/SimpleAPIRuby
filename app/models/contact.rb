class Contact < ApplicationRecord
 

    def author 
        "Guilherme Mattos"
    end

    def kind_description 
        'teste'
    end


    def as_json(options={}) 
    super(
        root:true,
        methods: [:author, :kind_description]
        )

end
end
