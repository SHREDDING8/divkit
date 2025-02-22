import LayoutKit

final class FocusElementActionHandler {
  func handle(_ action: DivActionFocusElement, context: DivActionHandlingContext) {
    guard let elementId = action.resolveElementId(context.expressionResolver) else {
      return
    }

    if let previousCard = context.blockStateStorage.getFocusedElement()?.cardId {
//<<<<<<< HEAD
//    let cardId = context.cardId
//    if let previousCard = context.blockStateStorage.getFocusedElement()?.cardId,
//       previousCard != cardId {
//      context.updateCard(.state(previousCard))
//    }
//
//    context.blockStateStorage.setFocused(
//      isFocused: true,
//      element: IdAndCardId(id: elementId, cardId: cardId)
//=======
      context.updateCard(.state(previousCard))
    }

    let cardId = context.path.cardId
    let element = IdAndCardId(id: elementId, cardId: cardId)

    context.blockStateStorage.setFocused(
      isFocused: true,
      element: element
//>>>>>>> parent of 3834a7e0b (Fixed focus in ios)
    )
    context.updateCard(.state(cardId))
  }
}
