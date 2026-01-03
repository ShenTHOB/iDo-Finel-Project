import "../package/packages.css";
import { useNavigate } from "react-router-dom";
import Header from "../Header";
import Footer from "../Footer";

import img6 from "../../assets/img/img6.jpeg";
import img1a from "../../assets/img/img1a.jpg";
import img4 from "../../assets/img/img4.jpg";
import img7 from "../../assets/img/img7.jpg";

const packages = [
  {
    id: 1,
    image: img1a,
    options: [
      "זיקוקים",
      "זרי פרחים",
      "שטיח",
      "פינת לחיים",
      "נורות לד",
      "מערכת הגברה",
    ],
  },
  {
    id: 2,
    image: img4,
    options: [
      "זיקוקים",
      "זרי פרחים",
      "שטיח",
      "פינת לחיים",
      "נורות לד",
      "מערכת הגברה",
    ],
  },
  {
    id: 3,
    image: img6,
    options: [
      "זיקוקים",
      "זרי פרחים",
      "שטיח",
      "פינת לחיים",
      "נורות לד",
      "מערכת הגברה",
    ],
  },
  {
    id: 4,
    image: img7,
    options: [
      "זיקוקים",
      "זרי פרחים",
      "שטיח",
      "פינת לחיים",
      "נורות לד",
      "מערכת הגברה",
    ],
  },
];

const Packages = () => {
  // hook של react-router למעבר בין עמודים
  const navigate = useNavigate();

  // פונקציה שמופעלת בלחיצה על כפתור "הזמן"
  const handleBook = () => {
    navigate("/booking"); // מעבר לעמוד ההזמנה
  };

  return (
    <>
      <Header />

      <div className="packages-page">
        <h1>iDo</h1>

        <div className="packages-container">
          {/* מעבר על כל החבילות */}
          {packages.map((pkg) => (
            <div key={pkg.id} className="package-card">
              {/* תמונת החבילה */}
              <img src={pkg.image} alt={`Package ${pkg.id}`} />

              {/* אופציות לבחירה */}
              <div className="options">
                {pkg.options.map((opt, i) => (
                  <label key={i}>
                    <input type="checkbox" /> {opt}
                  </label>
                ))}
              </div>

              {/* כפתור הזמנה */}
              <button onClick={handleBook}>הזמן</button>
            </div>
          ))}
        </div>
      </div>

      <Footer />
    </>
  );
};

export default Packages;
