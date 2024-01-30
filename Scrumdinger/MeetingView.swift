import SwiftUI

    

struct MeetingView: View {

    var body: some View {

        VStack {

            ProgressView(value: 10, total: 15)
            HStack{
                
                VStack {
                    Text("SecondsElapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }

        }

        .padding()

    }

}

    

struct MeetingView_Previews: PreviewProvider {

    static var previews: some View {

        MeetingView()

    }

}

