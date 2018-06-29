module Concerns
    module Findable
        def find_by_name(name)
            self.all.detect {|item| item.name == name}
        end

        def find_or_create_by_name(name)
            item = find_by_name(name)
            if !item
                item = self.create(name)
            end
            item
        end
    end

end
