package codigo;

import java.io.File;

public class Principal {
    public static void main(String[] args) {
         String ruta =  "/home/saymon/Java projects/Compilador/src/codigo/lexer.flex";
         generarLexer(ruta);
    }

    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
