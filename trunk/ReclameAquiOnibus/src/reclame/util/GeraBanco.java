package reclame.util;

import javax.swing.JOptionPane;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import reclame.entidades.Usuario;
import reclame.fachada.Fachada;

public class GeraBanco {
	
    public static void main (String [] args){
    	try {
    		Configuration cfg = new Configuration();
            cfg.configure();
            SchemaExport se = new SchemaExport(cfg);
            se.create(true, true);
           
            Usuario u = new Usuario();
            u.setCpf("1");
            u.setEmail("easytrans@easy.com.br");
            u.setEndereco("");
            u.setNome("Admin");
            u.setSenha("123");
            
            Fachada.getInstance().cadastroUsuario().cadastrarAdmin(u);
            
            JOptionPane.showMessageDialog(null, "O Banco de Dados foi gerado com sucesso!",
            		"Easy Trans .:. Alerta",JOptionPane.INFORMATION_MESSAGE);
		} catch (Exception e) {
			System.out.println(e);
            JOptionPane.showMessageDialog(null, "Erro ao Gerar a Base de Dados!",
            	"Easy Trans .:. Alerta",JOptionPane.ERROR_MESSAGE);
		}
    }
}