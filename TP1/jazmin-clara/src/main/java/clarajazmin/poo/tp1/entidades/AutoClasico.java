package clarajazmin.poo.tp1.entidades;

import lombok.ToString;

@ToString(callSuper = true)

/**
 * Clase hija o subclase que extiende a la clase Vehiculo.
 */
public class AutoClasico extends Vehiculo {

    /**
     * Constructor: llama a atributos constantes de super
     * 
     * @param marca
     * @param modelo
     * @param color
     */
    public AutoClasico(String marca, String modelo, String color) {
        super(marca, modelo, color);
    }

    public AutoClasico(String marca, String modelo, String color, float precio) {
        this(marca, modelo, color);
        this.setPrecio(precio);
    }

    public AutoClasico(String marca, String modelo, String color, Radio radio) {
        this(marca, modelo, color);
        if (radio.consultarDisponibillidad()) {
            this.radio = radio;
            radio.asignarVehiculo(this);
            System.out.println("Radio conectada al nuevo vehículo");
        } else {
            System.out.printf("Esta radio esta siendo utilizada por el vehiculo: %s\n", radio.getVehiculo());
        }
    }

    public AutoClasico(String marca, String modelo, String color, float precio, Radio radio) {
        this(marca, modelo, color, radio);
        this.setPrecio(precio);
    }

    /**
     * Sobreescritura de método: convoca asignarVehiculo(), desconecta radio antigua
     * si la hay y/o conecta
     * la radio nueva si esta disponible
     * 
     * @param Radio instancia de clase Radio
     * @return devuelve la radio que estaba conectada previamente o null sino pudo
     *         asignar la radio
     */
    @Override
    public Radio asignarRadio(Radio radio) {
        if (radio == null) {
            Radio radioDesconectada = this.radio;
            if (this.radio != null) {
                radioDesconectada.quitarVehiculo();
                System.out.println("Radio del vehículo: retornada y desconectada");
                this.radio = null;
                return radioDesconectada;
            } else {
                System.out.println("El vehículo no tiene radio");
                return null;
            }
        } else {
            if (radio.consultarDisponibillidad()) {
                if (this.radio != null) {
                    Radio radioDesconectada = this.radio;
                    this.radio = radio;
                    radio.asignarVehiculo(this);
                    System.out.printf("Radio del vehiculo: desconectada y retornada\n%s\nRadio nueva: conectada\n",
                            radioDesconectada);
                    return radioDesconectada;
                } else {
                    this.radio = radio;
                    System.out.println("Vehiculo sin radio previa\nRadio nueva: conectada");
                    return null;
                }
            } else {
                return null;
            }
        }
    }
}
