# frozen_string_literal: true

# rubocop:disable Style/For

module MyModule
  def my_each
    length.times do |item|
      yield(self[item])
    end
    self
  end

  def my_select
    new_array = []

    for item in self do
      new_array << item if yield(item)
    end
    new_array
  end

  def my_map
    new_array = []

    for item in self do
      new_array << yield(item)
    end
    new_array
  end
end
# rubocop:enable Style/For
