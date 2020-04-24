
import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {

   
    
    @IBOutlet weak var mapKit: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
  
    let regionRadius : CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
   
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapKit.addAnnotation(restaurantOne)
    
        let restaurantTwo = Restaurant(title: "Brick Oven Pizza", type: "Italian", coordinate: CLLocationCoordinate2D(latitude: 21.332993, longitude: -158.082213))
        mapKit.addAnnotation(restaurantTwo)
    }

    func centerMapOnLocation(location: CLLocation)  {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapKit.setRegion(coordinateRegion, animated: true)
    
    
    }
    

}

