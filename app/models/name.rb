# == Schema Information
#
# Table name: names
#
#  id                   :integer          not null, primary key
#  first_name           :string(255)
#  historical_percent   :string(255)
#  historical_ratio     :string(255)
#  historical_rank      :string(255)
#  alive_today          :text
#  most_common_age      :text
#  births_yearly        :text
#  birth_ratios         :string(255)
#  birth_precentages    :string(255)
#  etymology            :text
#  alternative_versions :text
#  notable_people       :text
#

class Name < ActiveRecord::Base
	has_many :users
	# validates_presence_of :name

	def format_name(word, hash)
		 
    self.first_name = word
		self.interpretation = hash[:pods]["Input interpretation"].pop if hash[:pods]["Input interpretation"]
    self.etymology = hash[:pods]["Etymology"].pop if hash[:pods]["Etymology"]
    self.alternative_versions = hash[:pods]["Alternate versions"].pop if hash[:pods]["Alternate versions"]
    self.notable_people = hash[:pods]["Notable people named #{self.first_name}"].pop if hash[:pods]["Notable people named #{self.first_name}"]

    if hash[:pods]["Estimates for current US population"]

    	api_value = hash[:pods]["Estimates for current US population"].pop

			historical_percents(api_value)
			historical_ratios(api_value)
			historical_ranks(api_value)
			most_common_ages(api_value)
    end

    if hash[:pods]["Information for US births"]
    	api_value = hash[:pods]["Information for US births"].pop

    	births_per_year(api_value)
    	birth_ratio(api_value)
    	birth_precentage(api_value)
    end
	end

#### "Estimates for current US population" #####


	def historical_percents(api_value)
		ap api_value
		#you need to create an attribute in the name for this.
		self.historical_percent = api_value.scan(/.\d+%/).pop  #18%
	end

	def historical_ratios(api_value)
		self.historical_ratio = api_value.scan(/\d+ in \d+/).pop 
	end

	def historical_ranks(api_value)
		self.historical_rank = api_value.scan(/\d+th/).pop 
	end

	def alive_today(api_value)
		# the goal of this is to get this value expected total number alive today | 466050 
		# \d+ (?=people) - grabs two matches instead of one.
	end

	def most_common_ages(api_value)
		self.most_common_age = api_value.scan(/\d+ (?=years)/).pop
	end

#### "Information for US births" #####

  def births_per_year(api_values)
  	self.births_yearly = api_values.scan(/\d+ (?=people per)/).pop
  end

  def birth_ratio(api_value)
  	self.birth_ratios = api_value.scan(/\d+ in \d+/).pop
  end

  def birth_precentage(api_value)
		self.birth_precentages = api_value.scan(/.\d+%/).pop
  end

end



