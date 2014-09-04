package reclame.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reclame.entidades.Empresa;
import reclame.fachada.Fachada;

public class CadastrarEmpresa implements Acao{

	@Override
	public String executar(HttpServletRequest request, HttpServletResponse response) {
		
		String pagina = "";
		
		String razao = request.getParameter("razao");
		String cnpj = request.getParameter("cnpj");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		

		Empresa emp = new Empresa();
		emp.setRazao(razao);
		emp.setCnpj(cnpj);
		emp.setEmail(email);
		emp.setSenha(senha);
		
		try{
		
			Fachada.getInstance().cadastroEmpresa().cadastrar(emp);
			pagina = "adm_empresa.jsp?msg=sucesso";
		}
		catch(Exception e){
			pagina = "adm_empresa.jsp?msg=Erro no cadastro.";
		}
		return pagina;
	}
}
