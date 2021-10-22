require 'sinatra'

get '/' do
  'Homepage: Speedbuster'
end

get '/reports' do
  # get a listing of all the dogs
  end
get '/reports/:id' do
# just get one dog, you might find him like this:
@dog = Dog.find(params[:id])
# using the params convention, you specified in your route
end
post '/reports' do
# create a new dog listing
end
put '/reports/:id' do
# HTTP PUT request method to update an existing dog
end
delete '/reports/:id' do
# HTTP DELETE request method to remove a dog who's been sold!
end

class Report
  def initialize(state)
    @submitted = state
  end

  def has_been_submitted?
    return @submitted
  end

  def submit
    @submitted = true
  end
  
end


class ReportRepository
  def initialize
    @reports = []
  end

  def add(report)
    @reports << report
  end

  def all
    @reports
  end
end

# class ReportView
#   def display(reports)
#     reports.each_with_index do |r, i|
#       submitted = r.has_been_submitted? "[X]" : "[ ]"
#       puts "#{submmitted} #{i} - #{r.title}"
#     end
#   end
# end