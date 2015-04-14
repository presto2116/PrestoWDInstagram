class EntriesController < ApplicationController
	before_action :find_entry, only: [:show, :edit, :update, :destroy]

	def index
		@entries = Entry.all.order("id DESC")
	end
	def show
	end
	def new
		@entry = Entry.new
	end
	def create
		@entry = Entry.new(entry_params)
		if @entry.save
			redirect_to @entry
		else
			render :new
		end
	end
	def edit
	end
	def update
		@entry.update(entry_params)
		redirect_to @entry
	end
	def destroy
		@entry.destroy
		redirect_to entries_path
	end

	private
	def entry_params
		params.require(:entry).permit(:author, :photo_url, :captions)
	end
	def find_entry
		@entry = Entry.find(params[:id])
	end
end
