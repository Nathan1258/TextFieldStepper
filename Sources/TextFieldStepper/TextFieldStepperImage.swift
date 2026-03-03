import SwiftUI

public struct TextFieldStepperImage: View {
    let image: Image
    let color: Color

    @Environment(\.isEnabled) private var isEnabled

    public init(image: Image, color: Color = Color.accentColor) {
        self.image = image
        self.color = color
    }
    
    public init(systemName: String, color: Color = Color.accentColor) {
        self.init(image: Image(systemName: systemName), color: color)
    }
    
    public var body: some View {
        if isEnabled {
            image
                .font(.system(size: 14, weight: .bold))
                .foregroundStyle(.black)
                .frame(width: 35, height: 35)
                .background(color, in: RoundedRectangle(cornerRadius: 8))
        } else {
            image
                .font(.system(size: 14, weight: .bold))
                .foregroundStyle(.black.opacity(0.4))
                .frame(width: 35, height: 35)
                .background(Color.gray, in: RoundedRectangle(cornerRadius: 8))
        }
    }
}
