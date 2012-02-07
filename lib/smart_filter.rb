module SmartFilter
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods

    def smart_filter(args = {})
      numerics = []
      strings = []
      self.columns.each do |column|
        case column.type
        when :integer, :decimal, :float, :date, :datetime
          numerics.push(column.name.to_sym)
          numerics.push((column.name.to_s + "_min").to_sym)
          numerics.push((column.name.to_s + "_max").to_sym)
        when :string, :text
          strings.push(column.name.to_sym)
        end
      end

      results = self.select("*")

      args.each do |key, value|
        if numerics.include?(key)
          if key.ends_with("_min")
            results = results.where("#{key} >= #{value}")
          elsif key.ends_with("_max")
            results = results.where("#{key} <= #{value}")
          else
            results = results.where("#{key} = #{value}")
          end
        end
        if strings.include?(key)
          results = results.where("#{key} like '%#{value}%'")
        end
      end
      results
    end

  end
end

class ActiveRecord::Base
  include SmartFilter
end