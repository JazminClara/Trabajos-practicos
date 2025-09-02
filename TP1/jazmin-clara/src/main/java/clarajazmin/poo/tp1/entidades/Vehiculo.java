package clarajazmin.poo.tp1.entidades;

import lombok.Getter;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@RequiredArgsConstructor
@ToString

/**
 * Superclase que modela vehículos y comprende atributos (marca, modelo, color, precio y radio: Radio) y método.
 * Definida como abstracta para que no pueda ser instanciada
 */
public abstract class Vehiculo {

    private final String MARCA;
    private final String MODELO;
    private final String COLOR;
    private float precio;
    /* Restricción de setRadio() de Lombok. Accesibilidad en 'protected'.
     * Ambas modificaciones me permiten que solo las subclases al implementar asignarRadio() puedan modificar este atributo
     */
    @Setter(AccessLevel.NONE)
    Radio radio;

    // Firma de método abstracto, el bloque de código o comportamiento será definido en las subclases
    public abstract Radio asignarRadio(Radio radio);

}
