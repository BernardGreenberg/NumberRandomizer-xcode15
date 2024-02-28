import SwiftUI

struct ContentView: View {
   
  @State private var randomNum: Int?
  @State private var titleInput: String = ""
  @State private var date: Date = Date()
  @State private var message : String = "?"
  private let calendar = Calendar.current
       
  var body: some View {
    VStack {
        Text(message)
        .font(.system(size: 30))
        .fixedSize(horizontal: true, vertical: true)
        .padding()

      Button {
        randomNum = Int.random(in: 1...100)
          message = String(format: "%d", randomNum!)
      } label: {
        Text("Generate Random Number")
          .padding()
          .font(.system(size: 20))
      }
      .buttonStyle(.bordered)
      .padding([.leading, .trailing])
        /* Two fields that track each other by binding
         update. */
      TextField("Title", text: $titleInput)
              .fixedSize(horizontal: true, vertical: true)
      TextField("Parrot", text: $titleInput)
              .fixedSize(horizontal: true, vertical: true)
              .padding([.bottom], 20)
        
       Button {
            /* https://stackoverflow.com/questions/38248941/how-to-get-time-hour-minute-second-in-swift-3-using-nsdate */
            //print(calendar.dateComponents([.year, .month, .day, .hour, .minute], from: date))
           date = Date()
           let hour = calendar.component(.hour, from:date)
           let minute = calendar.component(.minute, from:date)
           let second = calendar.component(.second, from:date)
           message = String(format: "%2d:%02d:%02d", hour, minute, second)
        } label: {Text("Snap Time")}
        .cornerRadius(3.0).fixedSize()
        DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
    }
  }
}

#Preview {
    ContentView()
}
