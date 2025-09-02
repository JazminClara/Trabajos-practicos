package clarajazmin.poo.tp1.entidades;

import lombok.AllArgsConstructor;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor

/**
 * Clase que modela una radio
 */
public class Radio {

    private final String MARCA;
    private final int POTENCIA;
    /*
     * Restricción de setVehiculo de Lombok. Me permite que solo Radio pueda cambiar
     * el valor de vehiculo.
     */
    @Setter(AccessLevel.NONE)
    private Vehiculo vehiculo;

    protected boolean consultarDisponibillidad(){
        return vehiculo == null;
    }

    /**
     * Función: que valida si es viable la asignación del vahiculo a radio.
     * 
     * @param vehiculo al cual se conectará esta instancia de Radio (this)
     * @return boolean que indica si esta instancia de Radio (this) está o no
     *         disponible para su uso
     */
    protected boolean asignarVehiculo(Vehiculo vehiculo) {
        if (this.consultarDisponibillidad()) {
            
            if (vehiculo.radio != null) {
                modificarRadioDesuso(vehiculo);;
            }
            this.vehiculo = vehiculo;
            return true;

        } else {
            System.out.printf("Esta radio esta siendo utilizada por el vehiculo: %s\n", this.vehiculo);
            return false;
        }
    }

    private void modificarRadioDesuso(Vehiculo vehiculo){
        vehiculo.radio.vehiculo = null;
    }

    protected void quitarVehiculo() {
        this.vehiculo = null;
    }

    /*
     * Al tener un atributo radio en Vehiculo y un atributo vehiculo en Radio
     * cuando genero el @ToString de Lombok ocurre una recursión.
     * Por tal reescribo el método y al pedir el valor de vehiculo, no pido todo su estado (como lo pide Lombok)
     * sino que solicito hashCode() el cual me da referencia del objeto
     */

    @Override
    public String toString() {
        if (vehiculo == null) {
            return String.format("Radio: [marca: %s] - [potencia: %d] - [vehiculo: null]", this.MARCA, this.POTENCIA);
        } else {
            return String.format("Radio: [marca: %s] - [potencia: %d] - [vehiculo: %s]", this.MARCA, this.POTENCIA,
                    this.vehiculo.hashCode());
        }
    }
}
