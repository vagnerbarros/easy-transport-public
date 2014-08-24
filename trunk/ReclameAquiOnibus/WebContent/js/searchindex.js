// search index for WYSIWYG Web Builder
var database_length = 0;

function SearchPage(url, title, keywords, description)
{
   this.url = url;
   this.title = title;
   this.keywords = keywords;
   this.description = description;
   return this;
}

function SearchDatabase()
{
   database_length = 0;
   this[database_length++] = new SearchPage("Inicial.html", "Inicial", "inicial ", "");
   this[database_length++] = new SearchPage("Topo.html", "Topo", "topo ", "");
   this[database_length++] = new SearchPage("Bot.html", "Topo", "topo easytrans todos os direitos reservados ", "");
   this[database_length++] = new SearchPage("Cadastro.html", "Topo", "topo nome do usuário email senha telefone ", "");
   this[database_length++] = new SearchPage("Menu.html", "Topo", "topo senha mail ou faça login com ", "");
   this[database_length++] = new SearchPage("Main.html", "Topo", "topo ", "");
   return this;
}
