import java.util.*;

public class Main {

    private static List<Integer> structure ;

    public static void main(String[] args){

        if (args.length < 4){
            System.out.println("Erreur d'arguments");
            System.out.println("Usage : <structure (ArrayList | LinkedList | Vector)> <methode (Add | Remove | Get)> <taille structure> <nombre de test>\n");
        }

        String typeStruct = args[0];
        String methode = args[1];
        int tailleStruct = Integer.parseInt(args[2]);

        switch (typeStruct) {
            case "ArrayList":
                structure = new ArrayList<>();
                break;
            case "LinkedList":
                structure = new LinkedList<>();
                break;
            case "Vector":
                structure = new Vector<>();
                break;
            default:
                break;
        }

        Random rand = new Random();

        for(int i = 0; i < tailleStruct; i++){
            int nbRand = rand.nextInt(1000);
            structure.add(nbRand);
        }

        int nbAddRand = rand.nextInt(1000);
        int index = rand.nextInt(tailleStruct);

        switch (methode) {
            case "Add":
                structure.add(nbAddRand);
                break;
            case "Remove":
                structure.remove(index);
                break;
            case "Get":
                structure.get(index);
                break;
            default:
                break;
        }
    }
}
