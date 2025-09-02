package clarajazmin.poo.tp1.entidades;

import lombok.ToString;

@ToString(callSuper = true)

/**
 * Clase hija o subclase que extiende a la clase Vehiculo.
 */
public class AutoNuevo extends Vehiculo {

    /**
     * Constructor: da estado a los atributos constantes de la superclase
     * e instancia un objeto de Radio (esto implica una asociación de composición)
     * 
     * @param marca
     * @param modelo
     * @param color
     * @param marcaRadio
     * @param potenciaRadio
     */
    public AutoNuevo(String marca, String modelo, String color, String marcaRadio, int potenciaRadio) {
        super(marca, modelo, color);
        this.radio = new Radio(marcaRadio, potenciaRadio, this);
    }

    /**
     * Sobreescritura de método: invoca asignarVehiculo(), desconecta radio si tiene
     * una previamente
     * y conecta la radio nueva (si esta disponible)
     * 
     * @param Radio instancia de clase Radio
     * @return devuelve la radio que estaba conectada previamente o null sino pudo
     *         asignar la radio
     */
    @Override
    public Radio asignarRadio(Radio radio) {
        if (radio == null) {
            System.out.println("Los autos nuevos nuevos siempre deben tener radio\nRadio sin retorno");
            return null;
        } else {
            if (radio.consultarDisponibillidad()) {
                Radio radioDesconectada = this.radio;
                this.radio = radio;
                radio.asignarVehiculo(this);
                System.out.printf("Radio del vehículo: desconectada y retornada\n%s\n\nRadio nueva: conectada\n",
                        radioDesconectada);
                return radioDesconectada;
            } else {
                return null;
            }
        }
    }
}