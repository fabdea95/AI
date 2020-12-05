import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

public class Sucesores implements SuccessorFunction {
    @SuppressWarnings("unchecked")
    // HILL CLIMBING
    /*
    Hill Climbing tendréis que generar todas las posibles aplicaciones de los operadores al
    estado actual
    */

    public List getSuccessors(Object aState) {
        ArrayList<Successor> retVal = new ArrayList<>();
        Estado estado = (Estado) aState;
        //Heuristica1 heuristico = new Heuristica1();

        //usando la funcion de cambiar_servidor
        for (Estado e : estado.generarHijos()) retVal.add(new Successor(e.toString(), e));
        return retVal;

    }
}


/*

public class ProbTSPSuccessorFunction implements SuccessorFunction {
    @SuppressWarnings("unchecked")
    public List getSuccessors(Object aState) {
        ArrayList                retVal = new ArrayList();
        ProbTSPBoard             board  = (ProbTSPBoard) aState;
        ProbTSPHeuristicFunction TSPHF  = new ProbTSPHeuristicFunction();

        // No permitimos intercambiar la primera ciudad
        for (int i = 0; i < board.getNCities(); i++) {
            for (int j = i + 1; j < board.getNCities(); j++) {
                ProbTSPBoard newBoard = new ProbTSPBoard(board.getNCities(), board.getPath(), board.getDists());

                newBoard.swapCities(i, j);

                double    v = TSPHF.getHeuristicValue(newBoard);
                String S = ProbTSPBoard.INTERCAMBIO + " " + i + " " + j + " Coste(" + v + ") ---> " + newBoard.toString();

                retVal.add(new Successor(S, newBoard));
            }
        }

        return retVal;
    }
}


*/
