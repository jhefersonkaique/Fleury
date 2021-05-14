É necessario que o ambiente ruby esteja configurado corretamente para executar.
Para executar o projeto execute o comando -> cucumber                                     
Para executar um cenario especifico execute o comando -> cucumber -t @tag


Foi priorizado a ordem de: Id > class > selector modificado > xpath modificado (Deixando somente o necessario de ambos para evitar que fique muito grande o elemento), devido a grande falta de id nos elementos nas telas.
Foi utilizado o padrão page_objects para obter uma maior organização do codigo e facilidade na alteração dos cenarios.


