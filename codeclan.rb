class CodeClan

  attr_accessor :name, :cohort

  def initialize(name, cohort)

    @name = name
    @cohort = cohort

  end


  def student_talk

    return "I can talk!"

  end

  def favourite_language(language)
    return "I love #{language}"

  end


end
