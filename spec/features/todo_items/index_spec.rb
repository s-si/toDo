require 'spec_helper'

discribe "Viewing todo lists" do
	let!(:todo_list) {TodoList.create(title: "Grocery list", description: "Groceries")}
	it "display no items when a todo list is empty" do
		visit "/todo_lists"
	end
	within "#todo_list_#{todo_list.id}" do
		click_link "List Items"
	end
	expect(page).to have_content("TodoItems#index")
end