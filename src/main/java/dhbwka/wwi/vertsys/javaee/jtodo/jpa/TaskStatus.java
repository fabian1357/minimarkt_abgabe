/*
 * Copyright © 2018 Dennis Schulmeister-Zimolong
 * 
 * E-Mail: dhbw@windows3.de
 * Webseite: https://www.wpvs.de/
 * 
 * Dieser Quellcode ist lizenziert unter einer
 * Creative Commons Namensnennung 4.0 International Lizenz.
 */
package dhbwka.wwi.vertsys.javaee.jtodo.jpa;

/**
 * Statuswerte einer Aufgabe.
 */
public enum TaskStatus {
    BIETE, SUCHE, VHB, FESTPREIS;

    /**
     * Bezeichnung ermitteln
     *
     * @return Bezeichnung
     */
        public String getLabel() {
        switch (this) {
            case BIETE:
                return "Biete (Art des Angebots)";
            
            case SUCHE:
                return "Suche (Art des Angebots)";
                
             case VHB:
                return "VHB (Preis)";
            
            case FESTPREIS:
                return "Festpreis (Preis)";
            
            default:
                return this.toString();
        
}
        
}
}
