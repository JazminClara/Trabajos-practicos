package clarajazmin.poo.tp1.test;

import clarajazmin.poo.tp1.entidades.AutoClasico;
import clarajazmin.poo.tp1.entidades.AutoNuevo;
import clarajazmin.poo.tp1.entidades.Colectivo;
import clarajazmin.poo.tp1.entidades.Radio;

public class TestRelaciones {
    public static void main(String[] args) {
 
        System.out.println("================ CREAR OBJETOS DE CADA CLASE ================");
        AutoNuevo aNuevo1 = new AutoNuevo("Ford", "Fiesta", "Azul", "Huawei", 45);
        AutoClasico aClasico1 = new AutoClasico("Renault", "Torino", "Rojo");
        Colectivo colectivo1 = new Colectivo("Mercedes Benz", "OH 1621/1721", "Blanco");
        System.out.println("Vehiculo: " + aNuevo1);
        System.out.println("Vehiculo: " + aClasico1);
        System.out.println("Vehiculo: " + colectivo1);

        System.out.println("================ AGREGAR PRECIOS Y RADIOS DE aClasico1 y colectivo1 ================");
        aNuevo1.setPrecio(3200000);
        aClasico1.setPrecio(1300000);
        colectivo1.setPrecio(5000000);
        Radio radio1 = new Radio("Sony", 55, null);
        Radio radio2 = new Radio("Boss Audio", 60, null);
        aClasico1.asignarRadio(radio1);
        colectivo1.asignarRadio(radio2);

        System.out.println("================ VEHICULOS ================");
        System.out.println("Vehiculo: " + aNuevo1);
        System.out.println("Vehiculo: " + aClasico1);
        System.out.println("Vehiculo: " + colectivo1);

        System.out.println("================ CAMBIAR RADIO DE aNuevo A UNA RADIO OCUPADA ================");
        aNuevo1.asignarRadio(radio2);
        System.out.println("Debe mostrar mesaje de esta radio esta utilizada, ya que la radio2 esta ocupada");

        System.out.println("================ CAMBIAR RADIO DE aNuevo A UNA RADIO DISPONIBLE ================");
        Radio radio3 = new Radio("JVC", 50, null);
        Radio radio4 = aNuevo1.asignarRadio(radio3);
        
        System.out.println("================ COMPROBAR QUE radio4 ESTA DISPONIBLE Y ASIGNARLA A UN VEHICULO ================");
        System.out.println(radio4);
        AutoClasico aClasico2 = new AutoClasico("Renault", "Sandero", "Mostaza");
        aClasico2.asignarRadio(radio4);

  /*       System.out.println("================ ASIGNAR RADIO DESDE EL .setVehiculo ================");
        Radio radio5 = new Radio("Sony", 55, null);
        radio5.setVehiculo(colectivo2); */

        System.out.println("================ COMPROBAR QUE RADIO DESCONECTADA DE COLECTIVO QUEDA DISPONIBLE PARA SU USO ================");
        Radio radio6 = new Radio("Kenwood", 50 , null);
        Colectivo colectivo2 = new Colectivo("Volkswagen", "17.280 OT", "Azul con techo blanco");
        Radio radio7 = colectivo2.asignarRadio(radio6); //esta radio7 queda en null ya que colectivo2 no tenia radio previa
        System.out.println(radio7);

        // TODO: cuando paso un null a un objeto inexistente
        /* System.out.println("================ PRUEBA DE asignarRadio(null) ================");
        colectivo2.asignarRadio(null);
        System.out.println(colectivo2); */

        System.out.println("================ PRUEBA DE CONSTRUCCIÓN CON RADIO EN USO ================");
        System.out.println(aNuevo1);
        System.out.println(radio3);
        AutoClasico aClasico3 = new AutoClasico("algo", "algo", "uno", radio3);
        System.out.println(radio3);
        System.out.println(aClasico3);

        System.out.println("================ PRUEBA DE CONSTRUCCIÓN SIN RADIO EN USO ================");
        Radio radio5 = new Radio("prueba", 45, null);
        AutoClasico aClasico4 = new AutoClasico("prueba", "prueba", "prueba", radio5);

        System.out.println("=============");
        System.out.println(aClasico4);
        System.out.println(radio5);
        aClasico4.asignarRadio(null);
        System.out.println(aClasico4);
        System.out.println(radio5);

        System.out.println("=========================");
        aClasico4.asignarRadio(null);


    }
}
