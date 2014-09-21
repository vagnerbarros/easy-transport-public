package reclame.model;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Onibus;
import reclame.fachada.Fachada;

public class LocalizarOnibus implements Acao {

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String idRota = request.getParameter("id_rota");
		
		List<Onibus> onibus = Fachada.getInstance().cadastroOnibus().listarOnibusRota(Integer.parseInt(idRota));
		
		try {
			
			//Alterar o caminho para a pasta do projeto do computador local. 
			// substituir C:\\Users\\Vagner\\Documents\\ProjetosEclipse pelo caminho do projeto de vcs.
   
			File statText = new File("C:\\Users\\Vagner\\Documents\\ProjetosEclipse\\ReclameAquiOnibus\\WebContent\\js\\pontos.json");
    		String teste = statText.getAbsolutePath();
	        FileOutputStream is = new FileOutputStream(statText);
	        OutputStreamWriter osw = new OutputStreamWriter(is);    
	        Writer w = new BufferedWriter(osw);
	        String json = "[";
	        
	        boolean primeiro = true;
	        for (Onibus o : onibus){
	        	if(!primeiro){
	        		json = json + " ," + "\n";	
	        	}
	        	json = json + " { \"Id\": " + o.getId() + '\n' +
	        					", \"Latitude\": " + o.getLatitude() + "\n" + 
	        					", \"Longitude\": " + o.getLongitude() + "\n" +
	        					", \"Descricao\": \" Onibus: " + o.getNumero() + " - " + o.getRota().getNome() + "\" }";
	        	primeiro = false;
	        }
	        
	        json = json + "]";
	        w.write(json);
	        w.close();
		} catch (IOException e) {
			System.err.println("Problem writing to the file statsTest.txt");
		}
		
		
		
//		PrintWriter out = null;
//		try {
//		    out = new PrintWriter(new BufferedWriter(new FileWriter("./WebContent/js/pontos.json", true)));
//		    out.println("the text");
//		}catch (IOException e) {
//		    System.err.println(e);
//		}finally{
//		    if(out != null){
//		        out.close();
//		    }
//		} 
		
		return "LocalOnibus.jsp";
	}

}
