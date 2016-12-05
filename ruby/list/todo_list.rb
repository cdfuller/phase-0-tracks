class TodoList

	def initialize (task)
		@items = task
	end

	def get_items
		@items
	end

	def add_item(item)
		@items << item
	end

	def delete_item(item)
		@items.delete(item)
	end

	def get_item(item)
		@items[item]
	end
end