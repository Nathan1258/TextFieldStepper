import SwiftUI

public struct TextFieldStepperImage: View {
    let image: Image
    let color: Color

    public init(image: Image, color: Color = Color.accentColor) {
        self.image = image
        self.color = color
    }
    
    public init(systemName: String, color: Color = Color.accentColor) {
        self.init(image: Image(systemName: systemName), color: color)
    }
    
    public var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 14, weight: .bold))
            .foregroundStyle(.black)
            .frame(width: 35, height: 35)
            .background(color, in: RoundedRectangle(cornerRadius: 8))
    }
}
