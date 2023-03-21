/// Exercise Regimen!
/// Uses structures
/// @author Miguel Castillo
/// @note 03-20-2023

struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  // Init method
  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
}

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  // Init 
  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

  /// Prints the exersise plan 
  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to: ")
    for exercise in exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's a total of \(exercise.totalReps) \(exercise.name)")
    }
  }

}

// instances
var pushUp = Exercise(name: "Push Up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])

mondayRegimen.printExercisePlan()
