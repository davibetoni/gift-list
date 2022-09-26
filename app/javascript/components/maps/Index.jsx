import React from "react";
import where from "./where.png";

export default () => (
  <div>
    <div className="primary-color d-flex align-items-center justify-content-center">
      <div className="jumbotron jumbotron-fluid bg-transparent">
        <div className="container secondary-color">
          <img className="home_where-image" src={where} alt="Onde" />
          <iframe className="home_where-image" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3690.5674788989786!2d-49.072163784551215!3d-22.332191785307025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94bf6701732bdd3f%3A0x16276a24be54aec4!2sLevon%20Bauru!5e0!3m2!1spt-BR!2sbr!4v1664144205896!5m2!1spt-BR!2sbr" width="300" height="450" style={{ border: 0 }} allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>
  </div>
);
