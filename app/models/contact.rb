class Contact < ApplicationRecord
    def author 
        "Guilherme Mattos"
    end

    def as_json(options={}) 
    super(methods: :author, root:true)
end
end
