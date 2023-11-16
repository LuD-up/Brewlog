//
//  PrivacyPolicyView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Protection des données")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse venenatis ligula lorem, malesuada convallis sem blandit vitae. Proin fringilla efficitur consequat. Aliquam erat volutpat. Praesent vitae libero imperdiet, porta ante at, semper magna. Donec consectetur congue rhoncus. Nunc eros est, vehicula vitae rhoncus in, lobortis nec leo. Quisque porttitor vel lorem vitae posuere. Cras mollis tristique ligula. Fusce sed ultrices massa. Sed nec lectus sed sem egestas dignissim quis vel dolor. Ut pretium porta dolor nec sagittis. Sed sollicitudin sapien vitae ligula fringilla condimentum eget a metus. Nunc finibus leo id enim pharetra, id faucibus erat gravida. Nulla lobortis, metus sed fermentum euismod, justo urna egestas sem, vitae imperdiet metus orci a magna. Vivamus quis commodo nisi, dapibus dictum tellus.")
                    .padding(.bottom, 10)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse venenatis ligula lorem, malesuada convallis sem blandit vitae. Proin fringilla efficitur consequat. Aliquam erat volutpat. Praesent vitae libero imperdiet, porta ante at, semper magna. Donec consectetur congue rhoncus. Nunc eros est, vehicula vitae rhoncus in, lobortis nec leo. Quisque porttitor vel lorem vitae posuere. Cras mollis tristique ligula. Fusce sed ultrices massa. Sed nec lectus sed sem egestas dignissim quis vel dolor. Ut pretium porta dolor nec sagittis. Sed sollicitudin sapien vitae ligula fringilla condimentum eget a metus. Nunc finibus leo id enim pharetra, id faucibus erat gravida. Nulla lobortis, metus sed fermentum euismod, justo urna egestas sem, vitae imperdiet metus orci a magna. Vivamus quis commodo nisi, dapibus dictum tellus.")
                    .padding(.bottom, 10)
            }
            .padding()
        }
    }
}

#Preview {
    PrivacyPolicyView()
}
