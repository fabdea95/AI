import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

public class SucesoresSA implements SuccessorFunction {
    @SuppressWarnings("unchecked")
    // SIMULATED ANNEALING
    /*
    Para Simulated Annealing tendréis que escoger al azar un operador y generar
    solo un sucesor aplicando este operador con parámetros también al azar.
    */

    public List getSuccessors(Object aState) {
        ArrayList retVal = new ArrayList();
        Estado estado = (Estado) aState;
        //Heuristica1 heuristico = new Heuristica1();

        Estado hijo = estado.generarHijos2();
        retVal.add(new Successor(hijo.toString(), hijo));
        return retVal;
    }
}



/*

public class ProbTSPSuccessorFunctionSA implements SuccessorFunction {
    public List getSuccessors(Object aState) {
        ArrayList                retVal = new ArrayList();
        ProbTSPBoard             board  = (ProbTSPBoard) aState;
        ProbTSPHeuristicFunction TSPHF  = new ProbTSPHeuristicFunction();
        Random myRandom=new Random();
        int i,j;
        
        // Nos ahorramos generar todos los sucesores escogiendo un par de ciudades al azar
        
       i=myRandom.nextInt(board.getNCities());
       
       do{
              j=myRandom.nextInt(board.getNCities());
       } while (i==j);
        

       ProbTSPBoard newBoard = new ProbTSPBoard(board.getNCities(), board.getPath(), board.getDists());

       newBoard.swapCities(i, j);

       double   v = TSPHF.getHeuristicValue(newBoard);
       String S = ProbTSPBoard.INTERCAMBIO + " " + i + " " + j + " Coste(" + v + ") ---> " + newBoard.toString();

      retVal.add(new Successor(S, newBoard));

      return retVal;
    }
}

*/