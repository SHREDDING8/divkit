import Foundation

final class ClearFocusActionHandler {
  func handle(context: DivActionHandlingContext) {
    context.blockStateStorage.clearFocus()
    context.updateCard(.state(context.path.cardId))
//<<<<<<< HEAD
//    context.updateCard(.state(context.cardId))
//=======
//>>>>>>> parent of 3834a7e0b (Fixed focus in ios)
  }
}
