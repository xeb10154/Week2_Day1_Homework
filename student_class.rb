class Student

# PART A

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def setName(newName)
    @name = newName
  end

  def setCohort(newCohort)
   @cohort = newCohort
  end

  def talk
    return "I can talk"
  end

  def favLang(lang)
    return "I love #{lang}"
  end


end
