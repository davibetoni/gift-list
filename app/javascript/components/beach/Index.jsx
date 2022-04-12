import React from "react";
import beach from "./davi-jhu-praia.png";

export default () => (
  <div className="primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <img className="home_beach-image" src={beach} alt="Praia" />
    </div>
  </div>
);
