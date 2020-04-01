module App
  class Notifications
    attr_reader :summary

    def initialize(homework_data)
      @summary = homework_data.title
    end
  end
end
